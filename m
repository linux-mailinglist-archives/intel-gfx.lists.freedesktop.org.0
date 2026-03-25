Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sM+WAkxexGn1ygQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 23:14:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5CF32CCFA
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 23:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C7D10E128;
	Wed, 25 Mar 2026 22:14:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TaphCr1P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D67210E128
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Mar 2026 22:14:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774476872; x=1806012872;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=06HXe8eFM/zZFaOE1xN/I8GqToehhUU/pxrjqik/uwE=;
 b=TaphCr1Pt0v96M4nGZKp112F/1ALg3VP8DIrQmmjouFaTOdvsG+6WtvL
 wZ+cnOT699EJj5AG42SQvKOFjF68uoMMl7DfyvYS7Ow0e+zlNDE3FFfv2
 Kax3APlQ/+BCRR+9fGsJ5i4HHaW2Rv4/zSElTggIg0VfjqnYI27FcYHJ2
 KTQgO0TT3OnJklvDzCeQY0OGjAaOiFtln4syHROFzj5Th/W8FvGB0JW42
 y7n0XsOMpDkVDk9Q2EYDECVsrGoFWe71m7cK+LN0ugC0ewgWYHmLCbZy7
 w9CQSsf6eH9hihaZsGjWVFTIpOs+aMnkqm3ud1wdLH/9UqwT7TXXlCZzY g==;
X-CSE-ConnectionGUID: CFlvx4PJRqOj16+J7GKa/g==
X-CSE-MsgGUID: SoBoJuRsQ/OOjAqafG46VQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75412113"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="75412113"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 15:14:31 -0700
X-CSE-ConnectionGUID: PkVSKi0HTsqiHMrcz/DrMg==
X-CSE-MsgGUID: fDf4m7DAQF+EceMm14gYmw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="224007822"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 15:14:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 15:14:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 15:14:30 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.7) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 15:14:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jGcZ0Vl/A7eHdvsfhRlDrDA/TBj9OdGWAku1Sc2O2QMBQFBGEcBTNl0GvDY7zX1x7Nep+lmp34NobS7HfDBm27lwqDDRt/T4e+qHgIo/l10j7DNuzpnzXB8f0EnqIc2RnR9qFu0wKRnxTSspaWVBKKFWu24eP1mYggSeaYkEsIEklQbIJEF/qzMOP95vmf8GUCoY8FQxFurjC5yueqihJAF8RKsSmf/JfjZoeW1es6oBry5Q2rRVQPv3aQjKxN+2+VRQzeHbVO9YPDk9n2S/5kZh82FZo/r1b3FQVCC1svIuOrm1jSLZdzBWf4PlrEaR0ij9xjxF25WugQMnC6c2BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IenDKkqDn/NcUNVIHveDSMUCmgA/EM8AaD/Q/4W+ejE=;
 b=BFbDllB7lxPXW1hmF+ggUkOTJCtxMbeIUr+0NglRxJNUgtvR/YSOLpDtdTMyNEFWz/+HVJguGYc6J6ZKJ1WUsRRzAwCxtdGdQf/NMEIBCgAicDJqtbOOBi4CTOg01vwH8qqSIHbgzXI+SqVk8cj0gf73twb9kDEyP7rZj8/nDBIat2lj0yp6wRvQhguDkUQ5q03GJx9xsnuzAedcWI8ZG5W5Y61+TsHoVH71sVRzk8tV6xa7CoRwdldnFqMhNMvf7Qg32JTGGfoOoiiJnFd9w1keYaX8OYc2A3wNfz/HcmwhSPF6q0+lzOWMD1Rp4zoJGalYsPgzjix9m8vwY0127g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Wed, 25 Mar
 2026 22:14:27 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9769.004; Wed, 25 Mar 2026
 22:14:27 +0000
Date: Wed, 25 Mar 2026 18:14:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Yassine Mounir <sosohero200@gmail.com>
CC: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 <gregkh@linuxfoundation.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/gem: Fix UAF race in eb_relocate_vma
Message-ID: <acReP5LYxOKCG80B@intel.com>
References: <20260324151741.29338-1-sosohero200@gmail.com>
 <177442567303.11552.5320450093167124387@jlahtine-mobl>
 <CANq=4mAEmEQWTUBpDJAgaiw930NUzL6-7EV-Y2WqLGst2YWLiw@mail.gmail.com>
 <177444763778.66558.14341959485998155867@jlahtine-mobl>
 <acQDZJFtsEtm183A@intel.com>
 <CANq=4mDtmtz5ZFjCCoeAXEWN82J9m8+DLochsNc6BzfwJ6Pdpg@mail.gmail.com>
 <CANq=4mC3+B4akvpp=nr_w1bbnhDwUXx=EzyQtHQpR9DN=ewCMA@mail.gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <CANq=4mC3+B4akvpp=nr_w1bbnhDwUXx=EzyQtHQpR9DN=ewCMA@mail.gmail.com>
X-ClientProxiedBy: SJ0PR13CA0046.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::21) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MN0PR11MB6304:EE_
X-MS-Office365-Filtering-Correlation-Id: deb0173e-69cd-43f9-e6b8-08de8abbe0d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 07zpjGIkNRh8KrWT+eele9ya5CyasLNlV9/5ACxfxrjvxIS0qtZpQ4bggqmzw5XRD0PT+0ZluTry5p5RQ00aXNZA0X55jbqC9zxjT37rqw9rrViH/Mu+76WtWy3gGmi75wmKuqx/bOtcOAc/6y9K6CwLtj2qd9U5Pc8xNnkNBm7DO7jrGpyjnWHrBzxlpbFQKj/Omi7dGyF55d0XyLGIPlaZk8brdaNP4gwaj2Ff1T0pZJucgpHPNsm+OwGaORTCcOXxi4V3CyE8/zb1zybVQDD6BD+DRYKc7cOg6MweoY54OVsB+lFzxvkekReEkenjdWgZVlaroN38dNM46LKRYYrPv/4cp17Gg6IaBSjO/HfqukY71t+sJi1IwJPE29hZTsp9J6L6roAJ3uAj4mN2QkI+HdhHcegWdT7DoFu6lgYvMxowh0y0D7Iz12BALdwwdERHn8EvAkc45sOZQQlg8CDF1evpsKCbMSYAjM7j9dTY+lrwFBJ+LMr2JAQqgw8BR5EY0VkwtXbS/jkUQ620DOPtXYSQBbvq1ZavJVfKQ3kQ6nhw6n6TNr4o9SF9Q+g3xUMEAlaL+16wnCP7n7pcXddN1cMIYsn9s3sdIgMdYO7YZj+36NRumhh1kRF6+4W2jTZ9qN+iF1vh0xGu5qRamFCHR23guqGFPHUCKwQJFm91heVW4bW/E3sK2EXt+ary
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uNplLfw4hw2ksOdtywx2QKhtpAxzsdbDuNdizSrd04AOgOZLZM4JIoiMOL/S?=
 =?us-ascii?Q?M3tw/lN7LfQ/o+v23EKJs5wPaM1ISYCs4h+TsANOWwsOc4h1tAa6GD0mAszQ?=
 =?us-ascii?Q?whpjH84K01SxmGhMU4C2LBREDYtmd4pO3duK2pXecjPy5hO3SgIGZx1EksQt?=
 =?us-ascii?Q?7wYJxYUncgwuj1COxT9ZUsZJ2zM/YCykEILMI+mi3rdcLyLzT4GmdC1BM3Dg?=
 =?us-ascii?Q?g1ZOSeHdRlvoHev2vkkkXo7B4w99IUOt0qkbJ6Q2PNAPpgyY8I2E9jKzuVeK?=
 =?us-ascii?Q?fmOvIma4jVobG9b8up1Arvj/3wcnQoNoTPcoZhofDliIooAS37nxhrJ5jZ3N?=
 =?us-ascii?Q?utYbt9Fn7r7irPAzWT80YkG5jq+wQ5OwBSVsXuK0VilOvwibHpix8yuNHByW?=
 =?us-ascii?Q?x12QIM9t7UJa8OHCOWGbMXoQKJrDXwreXz/u9/nGP0nQ4BA7W1OU+hM8gsQV?=
 =?us-ascii?Q?LJTjZa5R45K8GhluDuBZ/aBLJGoZJRja4azSY9foUGBwgljcDvuVLiIY/eyw?=
 =?us-ascii?Q?iB34Y2UuBhMEQsbCYgCNAnSTrWbI/GKAsb1AkrTeTZt0GnwLzMLVBg6RGIqs?=
 =?us-ascii?Q?Htl50ULhKoWRRKppnkDG9HL7KwNpm07tNmbdQnu5ybKWpkKJ3/y3qNJcxA6A?=
 =?us-ascii?Q?PZgN1RpW6tAyBJZuaXc5CjtiHVrthXW3eei8g8YlUlodJjG5t8c47pv/1anJ?=
 =?us-ascii?Q?x7VFK0v4NSR1P43uu3P7uZecxLF/W4hGNQuxlg6kTY5GgVFa5VOvGgLTbFRn?=
 =?us-ascii?Q?BGwCGxQLgRBH4pp1F1w8xqGFpbZcevWk5Kn+aDd8CWl+fzSYya2H5mWW/RUt?=
 =?us-ascii?Q?Nz7oXkQcuqpVYlGZFmhHsLJ+UIFty1VJrOLIa9Wcr4tcGr5pTWoBR+POzJdV?=
 =?us-ascii?Q?H/WQkhqyty5tF7E87D+bJgknt7d7XZLiQnS3S4Wak3Y+0tAwoHL5OypfOCGZ?=
 =?us-ascii?Q?epwM9m/dWQsQn2KUMJM3No8kftmdfFxP6Nj/deFPnAwi0IODXlZkQWaO0eyf?=
 =?us-ascii?Q?xBvOw2GSo6sopBYxvllQtueMzyU/+Gc7xHZmHMgaHvco42vjVW9W39LaObyz?=
 =?us-ascii?Q?VogFAdLFqr2bYHJ+Ylp1yLPHrnO5Gydov1wbYqKQYTsMjkeICtir0c05rCrB?=
 =?us-ascii?Q?QxgqE+0DFjv62ZI/S6ZlNXj1Hjnw9FL9Xh3r0iqGsEhVSQsug7CiUHi/DEgH?=
 =?us-ascii?Q?Bjkiv3QA53wWtGFHZzR+cJXXkJfrLFn7qWwZaL0ziIVKLaA/IPFc8EnsQVgY?=
 =?us-ascii?Q?V4VxexiSihOmBRjIZEhUGRDMTVcovL1rw8AGmEGV1iBThP5bT4NHA6p+Xrhg?=
 =?us-ascii?Q?PysuEbBSr27SnELTN8vXehlnRfVM4LxzONNFiftgPhdzl+c8WCRucgBWC311?=
 =?us-ascii?Q?eQjusxyf5LbyBgGdvnNFVt4/rlRJwYWMLyKNmC0kJhRDLgC1dppHsFkzmqIG?=
 =?us-ascii?Q?XiCrxA71i3zmgifaZHmna4iMx9tDMLK3I5U4zv2srBNHo8uppHSjMPikrdFP?=
 =?us-ascii?Q?rVFvbTb2gvAdztPXSL4Sgi32ET9pJEPr8vMUaohkujhhtlFsKluv1eRAC9Sq?=
 =?us-ascii?Q?UNahY0V0hqUqZfUOFPGGHHDBDlR12Z7kdH3o1B7vb4fubGEOuSz8VOzvczes?=
 =?us-ascii?Q?rgwWm+kBfBTkydb5XVVMBLEOrEj+KnICvFJk24BMkYJMQriCCkFRYtu3QKP9?=
 =?us-ascii?Q?LluXEGDHyLwP2gtpoGIE5qSrloHu4A/SHYN4QCMeRV/7ftGYgC9KO4G+kCQe?=
 =?us-ascii?Q?cFB60YhmLg=3D=3D?=
X-Exchange-RoutingPolicyChecked: q+V4v0R1fSZhOXAeesQAOL/JyiYIRo1rgMZk8KddoIsqLtxG/+ruOLQ26Vdnv6COjX6rU+EA4fyy4gbH2f1fxatFhUBP8rDvQivsOb2VLS71c2UKdWTexru6WVPKvZETSJgl4/XxbqVwheMqUAKcIsU6YWe/K+7wiPm35fr61yNYqY9vvF1SGMZpB+iWHJT9Vb6ED1hYCNLlEJUtkKdZyzNk0w4cLK+8OZEKPBjgYdKywdaRPmNK8G7ohLVwthvji10RVlyqhhOSGPbii8+wQ0cOrssmiWtMGXnuRxQamvANd63MLBYYX+1JE34SB9gDIAfbDUgHzju5ZCjAMlK7NA==
X-MS-Exchange-CrossTenant-Network-Message-Id: deb0173e-69cd-43f9-e6b8-08de8abbe0d8
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Mar 2026 22:14:27.1279 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g62D1T7vnZ6detRdMjMc1R/qWouJtWiaHX/+4vappBdJMxVQQFAJTDIANKvKt2geLAjhzebzeiB63Nk0FExINA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sosohero200@gmail.com,m:joonas.lahtinen@linux.intel.com,m:gregkh@linuxfoundation.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[freedesktop.org:url,intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,pages.freedesktop.org:url];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[rodrigo.vivi@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0D5CF32CCFA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 25, 2026 at 01:30:52PM -0400, Yassine Mounir wrote:
>    "Hi Rodrigo, I've submitted the issue and the V2 patch under #15882. I've    
>    marked it as confidential as it addresses a potential UAF security risk.     
>    Looking forward to your review."                                             

Could you please share a URL for that. I could not find it.

>    On Wed, 25 Mar 2026 at 13:30, Yassine Mounir <[1]sosohero200@gmail.com>      
>    wrote:                                                                       
>                                                                                 
>    >> "Hi Rodrigo,                                                              
>                                                                                 
>    >> I am currently following your instructions to file the bug report on      
>    >> GitLab. However, my new GitLab account is pending manual approval due     
>    >> to the current spam restrictions on [2]freedesktop.org. I have            
>    >> contacted the admins for full permissions.                                
>                                                                                 
>    >> In the meantime, I have prepared all the logs (KASAN splat from vanilla   
>    >> drm-tip and the clean dmesg from the patched version). As soon as the     
>    >> account is active, I will post the link here.                             
>                                                                                 
>    >> Thank you for your patience."                                             
>                                                                                 
>    > On Wed, 25 Mar 2026 at 11:47, Rodrigo Vivi <[3]rodrigo.vivi@intel.com>     
>    > wrote:                                                                     
>                                                                                 
>    >> On Wed, Mar 25, 2026 at 04:07:17PM +0200, Joonas Lahtinen wrote:          
>    >> > Quoting Yassine Mounir (2026-03-25 10:20:58)                            
>    >> > > Hi Joonas,                                                            
>    >> > > Thank you for the detailed feedback. I apologize for the double tag   
>    >> and the                                                                   
>    >> > > direct submission to Greg; I'm still refining my workflow.            
>    >> >                                                                         
>    >> > Ok, then to level set some expectations:                                
>    >> >                                                                         
>    >> > Have you actually confirmed that the code you have submitted compiles   
>    >> > and does fix the bug you reported?                                      
>    >> >                                                                         
>    >> > Expectation is that you run the reproducer on top of drm-tip and see    
>    >> a                                                                         
>    >> > crash where you pick the dmesg/KASAN splat from, then you run drm-tip   
>    >> > with the patch you have prepared and there is no crash.                 
>                                                                                 
>    >> Exactly.                                                                  
>                                                                                 
>    >> Before any further submission, please let's get back to square 0 here.    
>                                                                                 
>    >> 0. Please file a bug to our gilab/issues:                                 
>    >> [4]https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
>                                                                                 
>    >> Do that against the drm-tip branch and provide all the log information    
>    >> from your experiments.                                                    
>                                                                                 
>    >> 1. If you have a proposed patch, also please confirm that it actually     
>    >> fix                                                                       
>    >> the issues that you are solving.                                          
>                                                                                 
>    >> 2. Whenever using AI to help you with the code please ensure you comply   
>    >> with this:                                                                
>                                                                                 
>    >> Documentation/process/generated-content.rst                               
>                                                                                 
>    >> Thanks,                                                                   
>    >> Rodrigo.                                                                  
>                                                                                 
>    >> >                                                                         
>    >> > Regards, Joonas                                                         
> 
> References
> 
>    Visible links
>    1. mailto:sosohero200@gmail.com
>    2. http://freedesktop.org/
>    3. mailto:rodrigo.vivi@intel.com
>    4. https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html
