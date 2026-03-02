Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yHmpD+lCpWkg7AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:57:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6AE51D4382
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:57:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32EE710E44D;
	Mon,  2 Mar 2026 07:57:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BUON6GrQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4327210E44C;
 Mon,  2 Mar 2026 07:57:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772438246; x=1803974246;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=QZuPVRBdyeZrBIHZWsdGD9Sib/gaX5evc4ett/GeO3I=;
 b=BUON6GrQeYHHZiCpyOa3/0pBQLEO1CLiFJc8wnBMwUzsPlW23kbQ5pWe
 +xsqsTSAs2t4wsbEEnxBMzjknO2wE4QvPED8C9aCm3npZjpq7eDGVEGXr
 NPRMA6WFd/f3PSggE9/4yuknImV7UJXAH/B33yPm0LxY3onQlwjtF2f2k
 lbmIfqhJtA4YK4VMCuaG8FOd0TcjYIhGOQs6L8WLa5xkK6e/mxQHnQAqi
 8/LMKhWGLgV8Qg3+D+cj6+daHKWY4ZWdLhBBvNYMJSnEHwNYZVqotQDRk
 lu4+JUdL9uvnBUdU0WDxT5pHht2sRbVvVn/I3Ln+PIfS1NG0ktnBeEv9C Q==;
X-CSE-ConnectionGUID: OJwe0sBFTf6CDc1d2MEOEw==
X-CSE-MsgGUID: oQTopEmPSnmHrWd10xCyVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="83774629"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="83774629"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:57:26 -0800
X-CSE-ConnectionGUID: vYaxbBzuQv2Et/+prP8usQ==
X-CSE-MsgGUID: co5Hxh3iQNWDFpJ2Dz5d2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="221723584"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:57:26 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:57:25 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:57:25 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:57:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lk2w+GNbpJXOpfcRlMBWDqbyvX33bk8udkLF5GcBVo6K6+m/w984zjiqjUKLU9OAvmRyv8KI1hDVozrbnBMdqA8NYb8z9uJzPRU5ui83JtdlVyCZDH8YtrYYmVQ5PBJLR6mX7gfSpF8gpSXIhNJ3Q2wRGIrWClpf4dSB5/smQJ+nHj85DUv7wqjsx3OllSoS7fqW/0AqgrVKvGphuurOWBRx8//kFqL0cxvRJo3E6qVOOdA3f83uWaAhJInEWiHgcphXTQ7SxILF716FtsfPfQoIXIqRmt3l45ZFqSat8IaqGqtxojzCmtTOio7KJbBWmPhU59skKMuEqRfRPybn/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Da4wLc+v+/+MRnI0vw/OPQzE01bzviHp3Jb+Tox8nS8=;
 b=VqJoAPVKVnW4dPYWTOWUxhf1wj2H1tthKGYhA6dOoErGysFvfzhKaZt+rp2SgeJDI1bBY9QSEVGPPVCz5ERXRsAoh1VUWTukZs2e3Qaj2YdKBVP2+ah0Uf7zGYi/l8R2w3VdZshq4vaTK/YLkqzHuHW+QbVhyx1Rqxns8SgV+Cf12s5tPKBInjos8vHattC0ZGdBy1KZaR94fT3qplizCLbUGP057KnzfuPrM9beWwdEmujeU/gmz12LgzNDFicH6cKiCCiMElosNEy/3b8WZtSE2H/637sBDl1yKqnvUonDRACKRsW+AAsvO4ZDBRHtN0elIxT+890cmKVarFe7uw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7115.namprd11.prod.outlook.com (2603:10b6:806:29a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:57:23 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9654.015; Mon, 2 Mar 2026
 07:57:23 +0000
Date: Mon, 2 Mar 2026 09:57:16 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>, <jani.nikula@intel.com>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCHv2] drm/i915/dp: On DPCD init/caps wake the DPRx
Message-ID: <aaVCFx0U1TZpJeuJ@ideak-desk.lan>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <20260224074831.374990-1-arun.r.murthy@intel.com>
 <aZ26pwv6M7gG4W9D@ideak-desk.lan>
 <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <2b94fd1d-ce06-4c65-a615-7b9b2aeb3c57@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVYP280CA0013.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:fa::7) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7115:EE_
X-MS-Office365-Filtering-Correlation-Id: 7cb59d5e-ebc5-4159-c8f1-08de7831564b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: TcIzFHJ4Bg383sO7SFqli25o/Me5Cn/5uGtmMyZRSyZQEE/dqHWlPf1Q9szPoqqp1fraios3O8LO6akIB959bO1J6sh3j1uoEUsThFomkOVlisZWbtgztk2KZ5UitS0XFwx5BoE+agLzjCOJFmY96SbrYmZ/ND6Wx3YG3sG/4+ZIdkvZ3FKByS02IB/idi0S/UTIDoieim1t/eaPpbpv6lf6qXfD99u9rPqhbV6sphPTwFJ4Beyd74gHYjJSVYoBWMmaR24YhCEWcOWRHt7/mMJp27DLNnvXg8tGdmYXuMdJ0KxPTCF2ILOQmoxAklMmZ6jc1kXnupwY24bFEKL/FnNkC1Nupg9SCMOBeUDZQR5TjB/qmh7Fe5LqgxDOFnh6gOHh+cc4aSaO86rbeUisNMglRiLbwOLVu0ysjWytL8EkenrlF4KdYRNtRNoR7zhMs/eHytRzOTnVPDMBCac5I5+poAfY7/heiu/sleK9S1F2F21M26hpujbBkBZbeiB1dG0by2BWfLHsPc8Xe+7oijQKOulmitDIVbZtkMZoIARVUwacOjd4mXX06yVqIkk3yllxfIaOgqcxNAyLTjcKDrLdD58svvAm4pa4DYrLmkJm1YxQt7ooYRUekmMUizkZkULSWsfG7xtU5AlhaNhB/M7b7BBGIgGV/8b/z6M5BcE8a5mRVlGBEY3A5/uJG4Dh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NS/aZxf+k9KaKhFvwkLh/5tcvwgLipX6uSMPYdu2eAOINBMuKckWEamiNIMM?=
 =?us-ascii?Q?jOB17cA2EgDefrNRXKXuhXUMVIZugmkba0URJ/rjRtU6yJEMBDJpz/NW4jut?=
 =?us-ascii?Q?IYyi58/w6AMWWQ9yk3xLJWUZFLcJUDPVv+GX2xK1kXuy50vIolylFdWDtw0W?=
 =?us-ascii?Q?xWXzY5ZgUVu7/FOi7EnPxfwIusYzJwkjI0ldxbK+DD89GHDH30W2J1u+caib?=
 =?us-ascii?Q?RsgQamnoDNRanu/h6yn4ZV0XrcvUxbab/hSOz49bRZP+3nWeofhhHbsXCYxH?=
 =?us-ascii?Q?PiDCwkh0w0eg4tgnC1jJzuQ5ITc4hR/na0hGeuDq1tL6F1aCo65InieFi9Tj?=
 =?us-ascii?Q?nufNGLxumuufm+tinSW2m9DaKqCu0dxwxEZgJqYnpONnjqUfVGv7Fvj5UsTg?=
 =?us-ascii?Q?xoJmWOWOQ3oZOx7LbkLXBwJjpyPEdtRW5+0DR9Lbmq4DXmeF2INW4oYtWriY?=
 =?us-ascii?Q?VA/fqDgnyk5miYYqJ3Jd6UYS7zrxqG/w0YMHoZUM8Qt1KhBBK1JRS269IOnP?=
 =?us-ascii?Q?C8vTRxRrwKzdiT5kw48hFJfhq7a8nv5IMdlJLNsTnwZ+bNe4ZnthsO+XNJZc?=
 =?us-ascii?Q?nkF3SItf/2ZXEtetsZSBK8ERAGa2oQORzmMhZOuzki4av4YwCREzJhiyq0DX?=
 =?us-ascii?Q?KmuEYF9TG2pi058VwPNMRhR6tgQd8ghP/DxxKGq4jDu4SOF1f+I2qH5DG7rU?=
 =?us-ascii?Q?Uy+hr823/EWo1n2GS8/MPYbA3q4oPeAvE6FUQE/E4/Z9FQ2ZEqwYwfwerPok?=
 =?us-ascii?Q?W/7tyAeKE+W/t6v/9TQU3/768FmCGd0mPdToCIbw6N6WKjAmThwX2N//l9HK?=
 =?us-ascii?Q?KOWfqH5IoMpEy2dTZoqR2baTXRfEYi7DDzYQ5l1lm/Ec+G1VR6fbB4YFmIS8?=
 =?us-ascii?Q?UvGvf/NugCIg0BXxmQPYhArHZ9Lgury3m30e5tQJ6fnGD9zfuXSuYsX23teJ?=
 =?us-ascii?Q?vGpbageiJObDmtFHGFT4xKLJmGNOsPdRon5fSxj+AQbev/tRlkZUKF10QeKH?=
 =?us-ascii?Q?HTur9/TJ3/N816bi3KO5XsSUVbUxlhZPSQzvfbQcs/eEaTkGwobxzIIHUQf3?=
 =?us-ascii?Q?EhWM00FUJ6HytInFKP/kWJ9G1Df+ZBD8x2rV7Yz9SVpM2EQ/ESp8gc3zMOlb?=
 =?us-ascii?Q?nyz0VuRI+dbPb8+bF+JEoqzfTGY+TXcxfI/93u7oQgUjQC7IQSaYro3Q1CGh?=
 =?us-ascii?Q?EnXBRt3e9e7sPzml4dWrGAQ1KJSUv94MrhTlXN+r5X1ZLe8buDA9y/fcu6vB?=
 =?us-ascii?Q?P3YsfAKWqrRUGFx0g+dWd+jXQgg67sFXUO/LRbGdIF3+08exnofQY+oayqqo?=
 =?us-ascii?Q?hSiojXX1sjwIiYFvH2dHY3dh/jysFtpY6eCcuWU/lyBFK5kjRdVEgafU+f+6?=
 =?us-ascii?Q?vrFDm5YVIHlDt305Fqvm8eKcJ/1vt1g7yZ1GQ99RSfb+ZxzszqCLIU6OXzcS?=
 =?us-ascii?Q?bP9SqCSxguQROPAZKxv/OJ4WSRyDgrxiz6fMqY5zMcn0khQgY4cug7uwMc+G?=
 =?us-ascii?Q?5JjH7f/RYhUSy0BrUUFntgnGJzB35KRFYLRICLjgKS0X2JLunjHgxhawqMmj?=
 =?us-ascii?Q?Pz1cCIht9sPodzl+Of4s+ujN9hoO1bE6W3tEWhc8aqUjaYT0YYc/XAKsJMLn?=
 =?us-ascii?Q?se1XtlVMcY0JYYnsWNMZXQgWBo8uMaqksUiXx6cXqmFdYy50DenrlaSgYRUP?=
 =?us-ascii?Q?io19vYf7tGqtaGUyjLwgLl0wqiz6lt9inpT3PJuk/zyf+aX3keLhEWaasRvJ?=
 =?us-ascii?Q?eqwde7C/Ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cb59d5e-ebc5-4159-c8f1-08de7831564b
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 07:57:23.1976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: udHNEzkbvSizMI+3htWB7jBoO8VVNFjx0tzVLdxaNA3bFDD1+VMxgXz97kP8r4ECFOTfykAzHiGA+7JUrVsFTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7115
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,gitlab.freedesktop.org:url,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.974];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A6AE51D4382
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 09:03:06AM +0530, Murthy, Arun R wrote:
> 
> On 24-02-2026 20:20, Imre Deak wrote:
> > On Tue, Feb 24, 2026 at 01:18:30PM +0530, Arun R Murthy wrote:
> > > Its observed that on AUX_CH failure, even if the retry is increased to
> > > 1000, it does not succeed. Either the command might be wrong or sink in
> > > an unknown/sleep state can cause this. So try waking the sink device.
> > > Before reading the DPCD caps wake the sink for eDP and for DP after
> > > reading the lttpr caps if present and before reading the dpcd caps wake
> > > up the sink device.
> > > 
> > > v2: Use poll_timeout_us (Jani N)
> > >      Add the reason, why this change is required (Ville)
> > > 
> > > Closes: https://issues.redhat.com/browse/RHEL-120913
> > I wonder what should be the rule with non-public links like the above.
> > For instance, we do not put VLK-xxx links exactly because those are
> > non-public. Should/could we demand that RedHat opens a public ticket?
> > Jani?
> There is a JIRA as well
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391

The above ticket is about an

"AUX x did not complete or timeout within 10ms"

error, which means the DPTX didn't complete the transfer. A transfer is
completed either (a) in response to a DPRX reply (AUX ACK,NAK,DEFER
reply) or (b) in case the DPRX is not replying at all. The above error
indicates that DPTX observed/signaled neither a or b. That's a problem
in the DPTX not in the DPRX which this patch is trying to fix (by
setting the DPRX power state to D0).

Please open a separate public ticket for the actually reported
RHEL-120913 issue - which based on the changes in this patch must have a
separate root cause than issues/4391 - and attach a dmesg log having the
AUX logging enabled (drm.debug=0x10e) and reporducing the problem. Also
please ask the reporter to provide the details of the connected eDP
panel model and wiring to the CPU (is there any retimer, mux etc. HW
component between the CPU and the panel?).

> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >   drivers/gpu/drm/i915/display/intel_dp.c       | 38 +++++++++++++++++++
> > >   drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
> > >   .../drm/i915/display/intel_dp_link_training.c |  3 ++
> > >   3 files changed, 42 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index 025e906b63a9..fa0730f7b92a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -4705,6 +4705,42 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
> > >   	intel_edp_set_data_override_rates(intel_dp);
> > >   }
> > > +/* Spec says to try for 3 times, its doubled to add the software overhead */
> > > +#define AUX_CH_WAKE_RETRY	6
> > > +
> > > +void intel_dp_wake_sink(struct intel_dp *intel_dp)
> > > +{
> > > +	u8 value = 0;
> > > +	int ret = 0;
> > > +
> > > +	intel_dp_dpcd_set_probe(intel_dp, false);
> > Is there any particular reason to turn off/on the probing? I don't see
> > any reason why the DP_SET_POWER polling would need that. In any case
> > turning it off/on this way is not ok: reading the DPRX caps, which would
> > call this function, could happen at any time after a sink gets
> > connected, so turning probing back on at the end of this function would
> > re-enable it incorrectly for sinks where it's been already established
> > that the probing workaround is not needed and should stay disabled.
> This function intel_dp_wake_sink() is called from edp_init_dpcd and
> dp_init_lttpr_dprx_caps.
> dpcd_set_probe is set to true in dp_aux_init which is called before calling
> intel_edp_init_connector.
> 
> Probe is set to true, hence in this function I am setting it to false and
> then setting back to true.
> But there can be a possibility of reading lttpr_dprx_caps being called later
> as well.
> 
> Will correct this to check if probe is already being set to true, will then
> disable before waking the sink and restore the probe status at the end.
> 
> Will get this corrected in the next revision.
> 
> Thanks and Regards,
> Arun R Murthy
> -------------------
> 
> > > +
> > > +	/*
> > > +	 * Wake the sink device
> > > +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
> > > +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
> > > +	 */
> > > +	ret = poll_timeout_us(ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value),
> > > +			      ret > 0,
> > > +			      1000, AUX_CH_WAKE_RETRY * 1000, true);
> > > +
> > > +	/*
> > > +	 * If sink is in D3 then it may not respond to the AUX tx so
> > > +	 * wake it up to D3_AUX_ON state
> > > +	 * If the above poll_timeout_us fails, try waking the sink.
> > > +	 */
> > > +	if (value == DP_SET_POWER_D3 || ret < 0) {
> > > +		/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
> > > +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> > > +				   DP_SET_POWER_D0);
> > > +		fsleep(1000);
> > > +		drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> > > +				   DP_SET_POWER_D3_AUX_ON);
> > > +	}
> > > +
> > > +	intel_dp_dpcd_set_probe(intel_dp, true);
> > > +}
> > > +
> > >   static bool
> > >   intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
> > >   {
> > > @@ -4713,6 +4749,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
> > >   	/* this function is meant to be called only once */
> > >   	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
> > > +	intel_dp_wake_sink(intel_dp);
> > > +
> > >   	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
> > >   		return false;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index b0bbd5981f57..3f16077c0cc7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
> > >   bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
> > >   				     int hdisplay,
> > >   				     int num_joined_pipes);
> > > +void intel_dp_wake_sink(struct intel_dp *intel_dp);
> > >   #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
> > >   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index 54c585c59b90..cbb712ea9f60 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
> > >   		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
> > >   	}
> > > +	/* After reading LTTPR wake up the sink before reading DPRX caps */
> > > +	intel_dp_wake_sink(intel_dp);
> > > +
> > >   	/*
> > >   	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
> > >   	 * it here.
> > > -- 
> > > 2.25.1
> > > 
