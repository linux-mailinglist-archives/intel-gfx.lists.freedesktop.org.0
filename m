Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kH0YJYhusWlVvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 14:30:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ABCD2648DA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 14:30:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A744D10E1FE;
	Wed, 11 Mar 2026 13:30:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bxP4s3mt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2BC410E1FE
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2026 13:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773235845; x=1804771845;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=p9L3hAyhHVPYqiZgXWyITDZcjFSj/GUzEm/j7F9wqAw=;
 b=bxP4s3mtbI84uFWAfdcoIlnKJpgTh9LkuvJZOPbVYHI7H/oEgAMsiQSx
 yk9pPYP3TiiYrFiaWzLdqnKHtX8pliTZ90oRdAex65j84gd/DMPVNSnBO
 cEdJDusEWmNldBVqTmMaekm1rDCSI43EX1dVjN0b/AMUwbWSWfeDM4N5z
 FnO1OPUWXIxMWo3V/9o8G8y46v7aUvBBFj+Bo4VcSchzaR4ZNSi2s0o4t
 2c3+uAxqIldm4fynClG+WCLDxkP3hLkvr22+qYjMm504W8C7mNLhC5QVN
 dcYCF3gqt/az5F6paIZL2vccZuG7sKoCYZAL+O9/yv/9itmJj3atp6HCi A==;
X-CSE-ConnectionGUID: wu8lkwocRkWg3hvdpiiEXw==
X-CSE-MsgGUID: PCbxSV0fTiabwKs5gxIa/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="78155427"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="78155427"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:30:44 -0700
X-CSE-ConnectionGUID: vdZrTWYMRDC6LdF1l4vH0w==
X-CSE-MsgGUID: ATAe/4ZhRrWBksWJ+wwWOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="219609728"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:30:44 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:30:43 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 06:30:43 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.26)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:30:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kdYE8FXZtF6qLNbbPIHbRBw/zNARPKhAJLqa6MHUPmgC5PJyX9Jd49KVhTaISMYxMFV0ftLmWczyB4DrJB1oPsBgbBlbB5/aNAIfMoj59lBR6JeLSTrDf8tpmMKwvx3dewL9FhhIZ+kdgCVg6rcg7jY1kOwhO+xOIrUHt98wVcStcT7Bn1ukadWEI2DvxkuO5d4C5xeD+ruqokc/WOBlQxEhCwE738b0DBwYxq+bTzzZW8Jh+cxVYvGdvLzCPvTGfaMJiGQS9hsxG1FaDoCdnHem4MSFgm9J50wVTLFwGhSXy9EM6mIL+JEuFTian1uYgynRkgJxWH0YKiN4vX2LYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nJzKLqu6lpO/cqUc/30d4BY4HY95gmE6j+Em62e5CEk=;
 b=tblCEDsls+ir5o6ScnFecuFpTP75DSh/LJhkEof5idc1AOSke9AkcRxxWeODkrVXKL/dG9nMyjyDrrkVuAvx4ju8QBfwQOs0Duv24KtMWbSNmLyWTk0waU01TI3o6FEBkyBDDJ0vO6hX+9IXWNsdpu1dHFh7PWYg1erIvcViE8cmcNzrMCCRfConhlMVzQitx/piR2GELWPXq/xw2ApPnSCXv8zNgFbQJ4wI9cQig7Eg1ySoJRljcUq+rOP1g0lE6w9GXTq+bNQQQFEtVb5rZs1hzNwr0n4mKOdsoAo8iPr+sKssY1LbApraCFyGsBirvdU57vgg0WdxuaNg8b2UVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SN7PR11MB7975.namprd11.prod.outlook.com (2603:10b6:806:2eb::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 13:30:33 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9700.010; Wed, 11 Mar 2026
 13:30:33 +0000
Date: Wed, 11 Mar 2026 15:29:56 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuRnVsbDogc3Vj?=
 =?utf-8?Q?cess_for_drm=2Fi915=2Fdmc?= =?utf-8?Q?=3A?= fix an unlikely NULL
 pointer deference at probe (rev2)
Message-ID: <abFuVMAYZqhzz6Hn@ideak-desk.lan>
References: <20260309164803.1918158-1-imre.deak@intel.com>
 <177310513105.336364.11587808288298427509@a3b018990fe9>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <177310513105.336364.11587808288298427509@a3b018990fe9>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GVX0EPF0005F6EA.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ea) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SN7PR11MB7975:EE_
X-MS-Office365-Filtering-Correlation-Id: e986297d-54c9-40df-c160-08de7f725d4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: hSZHE3rl4LEMcpHEy16YikX5OtuDbSaPHoXfRjYhXQkd7swVzVdsi7O70yVLNnDX2i+iAZSs0U2mYZcJzIbt4dGB2aiK+gUzgF3+76Xkl2ptxllJM6XxcfVKNPfmwVHtkeCjSHGmtCFeXfrh+EOc2D9j1TaY4lAKqHY0+aaRNmBfQISPR5yxTgNN60yap2hmtGHFE9sJRJmGj3DYjnzTq/+SLwU+kPdaMnEY92ks1fZvF9CWlHvMOxtZR00W4j0MB0BaPnjhcTxgZk+KMIkiqqkxCIp6v9CG4BhmjeQ7oqyS8fRwsY1VtPBi9xZGBGRdgMUxzoeGyT0/mIfM2AhFgtWxVH/t1/t/eR2Hty/Map0jHZZXEKc7wJT6Mcp96ZZtRPpigVZrnnE0VSNnjO+9JuNUOlEzVAUJY6yoCZmvLovMwsIdm3n+BHd4Ya1mTu6y7NIuYRDA7tXLIcmHxQTZwHRsMYPQ+Tb1TycdaIbY+9mfOrAz3gEVSHPhDblrN+CMoxAouXaIUnXeAs5Ouy63T8mp8hrIhJg5IxUVNs3MXGN8uVOr9/5HpFOCsXBU4BOJxrEq31ApL21ZHycMCzibkpSfSoL2vYGrK1Ka2dKk77RF1lxc4zk8RkcFazHC1Uh1lpQALPTXVieToyRyyzk6JxgbjWa7e40/TEFEll1dboS88ZdH4HgDRPlpYX0v9UWt
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dsVwRCmS4/+VLxS9v+ODYyhIdXDrpobSzwfa2SG+6cVPoyG7ynil8SXhoXSd?=
 =?us-ascii?Q?20dbkDu2VT3RdZuR5iR2Aez39wYWE3NWYELkvetJ+NGx9aKki3mtK4qOrfS/?=
 =?us-ascii?Q?pHNP9mR9kcJjanE0V0tphfTJjZMpfTOlxjslRCXstWKJ1SR//aEPWHVUXnZM?=
 =?us-ascii?Q?90bvS+376ybd28e7GZcseDBD/UQOKO7mehjSIhnfSGJu1GADY10XSu/5B+Va?=
 =?us-ascii?Q?ASpoZDRSrAXuGt3cyotYhfJdZSdvUQi0aB+cAxNI8zshHM51XP+b0vPCNviO?=
 =?us-ascii?Q?VITq9AUkzuCG/jx+6mXkXqmzYAEljsu9lGa8ESHAroaPgW9gxQ1YD5ZBJyW1?=
 =?us-ascii?Q?WPKhJdiCDSDVlfTycPGmmWc6ZDUQQxljUQiEj4uAKD2gvo9x7ELyRMranxcE?=
 =?us-ascii?Q?jDhczvzZbz2ddU2oQHVjipwmmcGQ0OiEkraSUGB04c576yyhMkMY+OiwvE/J?=
 =?us-ascii?Q?rDVhs0edSGClmRb6mQnlXpSjqFXq2o9SyoNgmete3t06pnt2CigchRlZ1+nT?=
 =?us-ascii?Q?csOLxAM6wRDfiA080MJjuW7UdOwWCeTprTTJKkkdiBR1Kq0w9JobLFrhYPF4?=
 =?us-ascii?Q?sgWELA9lw8DpiIiGyQH8gyXTiiyWhNK9aX5OTwsleVtOW3zrZvRZUmakG+KN?=
 =?us-ascii?Q?6YG2sb56X46pM/jaJQTFKyoE5MtNQfz+eo/Hhafa44yOyxROk0w3klB5+/65?=
 =?us-ascii?Q?byiIXKuk3z7bJjEKd96nujlKj3Ckh+GM1u0F0/Z7dPS7A8Qe/6JoUXZt+kV7?=
 =?us-ascii?Q?CFc63P/fxhelAug4g7ES+EPCNsiE9r84tWDXn70V7MNgwBwUxSjJNUs0wDzL?=
 =?us-ascii?Q?zvya6Xy/GFGgbyuP6NiDSP776R3sp0GtvktaEsSOlbTj/8CGUbBXc9Tmqs+9?=
 =?us-ascii?Q?b9wd9mrMMlVpt1atdWV30ygexNd6TWIrV9rszb7C1iQG7ib4J0SPzaSMRv09?=
 =?us-ascii?Q?Q+ySHBx/M+Wr+NZ8lnB/ICaz0sM2Mm6b4LaW+gbimca/XNCl37aVt5QPmyfr?=
 =?us-ascii?Q?Lp0aNnIpZnyJWWtAd7HTabiqfoR0tqj8p9ROx+VzbeLa+iS4VnOh/giM7G1M?=
 =?us-ascii?Q?qpPDngtvj5FuzNrLafqDUvEXiqWJ8kXjAtBdTC8Zs1aCA3DIRpeY0J+zHt/F?=
 =?us-ascii?Q?ZKZ5L+WzBNdi0u9j3aTGyIqZkqUB1FsCla6Rg1fc6cCLDzr365kSlZshMjNM?=
 =?us-ascii?Q?tWPfX5SIEjlqV595XkGI19rCX2ajBFPlS8/rNoOwLLXMtBZotoMUWCSYGqrO?=
 =?us-ascii?Q?P9FIWalXAr4lzOJt+ODlOOOzyITKgULKhrkBU9tRA6Bg8XgpTT8i7mUm3Ftf?=
 =?us-ascii?Q?kOsliz6CDvnKIfuI5+rk3oKJoYZsWYf0dwkxfIYHq1mVDg1UEmd56YZA1vIN?=
 =?us-ascii?Q?vSUOSb81/UPmTVY3ApHqwHac1AVxyOKiyU9o1Plt+SFXPUra4q/RWVt73fXP?=
 =?us-ascii?Q?fT3a8vHmxTkXnsn1qYRfD7CyE0li7pLNGiQJBGchcuYUJJrsvKiyYWCb8q1g?=
 =?us-ascii?Q?K4GomRYItxyfyKJ3JUZdsI/tUPQ5tzehV5m4OBSztZGgeI46Qon33y0nRm2M?=
 =?us-ascii?Q?X6roLK/gbvF5MQ3jNAnJUyyUQQ/mlGrZnZqF7tKme5frKDIUqsEpyfgFH1IN?=
 =?us-ascii?Q?wHKXVIIHRYAa7S+05bgm6C96Zb5vZ2Gw/TWWCFxODmPWrqv+B7Xx2dhVlNp5?=
 =?us-ascii?Q?wuT5c+YLFUFjGjUytMYQymzkolwTLXa1rMv0QY+g00X4Zg6BUorxzuJ+Mf22?=
 =?us-ascii?Q?I13hMEMJ1A=3D=3D?=
X-Exchange-RoutingPolicyChecked: VXElRqOeRLcMUGPnTZBhijrKyRKGvIvhL8RwPE3fHiIOTTNMY35SsTSiR6wJ8ChEQeUJKCSAPVwu3ZjRHXDMAKxC0a7y6BCHB9j0Rx5aXkss6RGhR2HW0hKWJ94f4yfQBe+HtbRihISHp/l5MRUVbYUya1a6m4rXJFkv9KfTD08S6A23sq4dhs4P3kB1IW7nlNwxLn/43+EtmGQv30hfQXjasrPA5YzGiKxkYmK7ei2j/DToTbQ9/6ruZMDwWAOOYVBFrv0/T4G8kGS2HkKRQaadCWdMJimzkTxzlJm1TYUesRAx+UVSNNC42CWl1jFCOK+lJp/fK5XSeHaaM+fUiA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e986297d-54c9-40df-c160-08de7f725d4e
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2026 13:30:33.6009 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vl3Fgzn2wmG/lXQZpAw3JxRtO9FQ1ak7jshs2kibdLnBgMCQFxEyRFMmAIn7Y4tlQ3dKU1CpOjQOH5Mbn9KEHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7975
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
X-Rspamd-Queue-Id: 7ABCD2648DA
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	DKIM_TRACE(0.00)[intel.com:-];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On Tue, Mar 10, 2026 at 01:12:11AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dmc: fix an unlikely NULL pointer deference at probe (rev2)
> URL   : https://patchwork.freedesktop.org/series/158394/
> State : success

Thanks for the reviews, patch is pushed to drm-intel-next.

As pointed out/requested by Jani and Ville in [1] and [2], I'll follow
up with improvements/fixes related to - but imo something to be handled
separately in any case from - the issue fixed in this patch.

As a context for some of these TODO items I'll also have to better
understand first how kexec/kdump works and if a crashed kernel could
indeed leave an active DMC firmware behind for the kexec'd kernel.

[1] https://lore.kernel.org/all/aarrc4-vxovfsxSR@ideak-desk.lan
[2] https://lore.kernel.org/all/abFfUhF-bvNmmZDn@intel.com

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_18112_full -> Patchwork_158394v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_158394v2_full need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_158394v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_158394v2_full:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-dg2:          [SKIP][1] ([i915#9906]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_158394v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#14544] / [i915#8411])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#7697])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#3555] / [i915#9323])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@gem_ccs@suspend-resume.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_create@create-ext-cpu-access-sanity-check:
>     - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#6335])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html
> 
>   * igt@gem_ctx_isolation@preservation-s3:
>     - shard-rkl:          [PASS][10] -> [INCOMPLETE][11] ([i915#13356]) +1 other test incomplete
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@gem_ctx_isolation@preservation-s3.html
> 
>   * igt@gem_ctx_persistence@idempotent:
>     - shard-snb:          NOTRUN -> [SKIP][12] ([i915#1099])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb1/igt@gem_ctx_persistence@idempotent.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#280])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][14] ([i915#13390])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-glk11:        NOTRUN -> [SKIP][16] ([i915#6334]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#14544] / [i915#3281]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#3281])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#3281]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gem_exec_reloc@basic-write-read-noreloc.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-rkl:          [PASS][20] -> [ABORT][21] ([i915#15131]) +1 other test abort
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@gem_exec_suspend@basic-s3.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-glk:          NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4613]) +2 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#4613])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4613]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#4083])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-14/igt@gem_mmap_wc@bad-size.html
>     - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#4083])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-4/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_partial_pwrite_pread@reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#14544] / [i915#3282]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4270])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-14/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_readwrite@new-obj:
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3282])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@gem_readwrite@new-obj.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#14544]) +4 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-rkl:          [PASS][32] -> [INCOMPLETE][33] ([i915#13809])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@gem_softpin@noreloc-s3.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3282])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#3297])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][36] ([i915#13356] / [i915#14586])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#2527] / [i915#2856]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#14544] / [i915#2527])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#2527])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#2527])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@fault-injection@intel_connector_register:
>     - shard-glk10:        NOTRUN -> [ABORT][41] ([i915#15342]) +1 other test abort
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk10/igt@i915_module_load@fault-injection@intel_connector_register.html
> 
>   * igt@i915_module_load@fault-injection@intel_gt_init-enodev:
>     - shard-glk10:        NOTRUN -> [SKIP][42] +163 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk10/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#14544] / [i915#8399])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][44] ([i915#8399]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#14498] / [i915#14544])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][46] ([i915#13356] / [i915#15172])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk8/igt@i915_pm_rpm@system-suspend-execbuf.html
>     - shard-dg2:          [PASS][47] -> [INCOMPLETE][48] ([i915#13356])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-7/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [PASS][49] -> [INCOMPLETE][50] ([i915#13729] / [i915#13821])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-snb7/igt@i915_pm_rps@reset.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb7/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#14544] / [i915#6245])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@i915_query@hwconfig_table.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#7707])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk10:        NOTRUN -> [SKIP][53] ([i915#1769])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#1769] / [i915#3555])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#1769] / [i915#3555])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#5286]) +3 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#14544] / [i915#5286]) +1 other test skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#5286])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#5286]) +2 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4538] / [i915#5286])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#5286]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#14544] / [i915#3638])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> [SKIP][63] +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14098] / [i915#6095]) +16 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#14098] / [i915#14544] / [i915#6095]) +12 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#10307] / [i915#6095]) +64 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-7/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#6095]) +152 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [SKIP][69] +62 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#6095]) +39 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#12805])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#6095]) +19 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#12313]) +1 other test skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#12313]) +2 other tests skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#14544] / [i915#6095]) +18 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#6095]) +26 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#6095]) +24 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][78] +141 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#13783]) +3 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#11151] / [i915#7828]) +1 other test skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-14/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-multiple:
>     - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#11151] / [i915#7828]) +2 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#11151] / [i915#7828]) +3 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#6944] / [i915#7118] / [i915#9424])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@atomic-hdcp14:
>     - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#6944])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_content_protection@atomic-hdcp14.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#15330] / [i915#3116] / [i915#3299])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#15330])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#6944] / [i915#9424])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_content_protection@lic-type-0.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#6944] / [i915#9424])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#14544] / [i915#6944])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_content_protection@suspend-resume.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#3555]) +1 other test skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][93] ([i915#13566]) +1 other test fail
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#13049])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#13049] / [i915#14544])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-max-size:
>     - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#3555]) +3 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-max-size.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][97] +31 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#13691])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_link_training@uhbr-sst:
>     - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#13748])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_dp_link_training@uhbr-sst.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#13707] / [i915#14544])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#3840])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#3840])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][103] ([i915#3840])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#14544] / [i915#3955])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#1839])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#3637] / [i915#9934]) +1 other test skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_flip@2x-blocking-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#9934])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#9934]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_flip@2x-flip-vs-dpms.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#3637] / [i915#9934]) +2 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][110] ([i915#12314] / [i915#12745] / [i915#4839])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][111] ([i915#12314] / [i915#4839])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk8/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#15643]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#15643]) +2 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_force_connector_basic@force-connector-state:
>     - shard-mtlp:         [PASS][114] -> [SKIP][115] ([i915#15672])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-mtlp-4/igt@kms_force_connector_basic@force-connector-state.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-1/igt@kms_force_connector_basic@force-connector-state.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15102]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][117] +31 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#14544] / [i915#1825]) +5 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#5439])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#5439])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#14544] / [i915#15102])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#15102] / [i915#3023]) +7 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#15102]) +7 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
>     - shard-snb:          NOTRUN -> [SKIP][124] +25 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][125] +1 other test skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#1825]) +11 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#14544] / [i915#15102] / [i915#3023]) +2 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#15102] / [i915#3458])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
>     - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#15102]) +8 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8228])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#12713])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8228])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3555] / [i915#8228]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#15458])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_joiner@basic-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#15460])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_joiner@invalid-modeset-big-joiner.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#15460])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#15458])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_joiner@invalid-modeset-ultra-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][138] ([i915#13476])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#14712])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
> 
>   * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#14712])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#14544] / [i915#15709])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:
>     - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#15608]) +1 other test skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
>     - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#15709]) +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
>     - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#15709]) +1 other test skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#15608]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb:
>     - shard-glk11:        NOTRUN -> [FAIL][146] ([i915#10647] / [i915#12177])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@kms_plane_alpha_blend@alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk11:        NOTRUN -> [FAIL][147] ([i915#10647]) +1 other test fail
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max:
>     - shard-glk:          NOTRUN -> [FAIL][148] ([i915#10647] / [i915#12169])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@kms_plane_alpha_blend@constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][149] ([i915#10647]) +1 other test fail
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@2x-tiling-none:
>     - shard-tglu-1:       NOTRUN -> [SKIP][150] ([i915#13958])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-none.html
> 
>   * igt@kms_plane_multiple@2x-tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#13958])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
>     - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#15329] / [i915#3555])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#15329]) +3 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#15329]) +4 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#5354])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#15739])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#15739])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#8430])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#15073])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@system-suspend-modeset:
>     - shard-rkl:          [PASS][160] -> [INCOMPLETE][161] ([i915#14419])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_pm_rpm@system-suspend-modeset.html
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#11520]) +2 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#11520]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][164] ([i915#11520]) +3 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-glk11:        NOTRUN -> [SKIP][165] ([i915#11520]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#11520]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
>     - shard-glk10:        NOTRUN -> [SKIP][168] ([i915#11520]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
>     - shard-snb:          NOTRUN -> [SKIP][169] ([i915#11520])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#11520]) +3 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][171] ([i915#9683])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#9683])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#1072] / [i915#9732])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@pr-primary-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#9732]) +8 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_psr@pr-primary-blt.html
> 
>   * igt@kms_psr@psr-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#1072] / [i915#14544] / [i915#9732]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_psr@psr-sprite-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#9732]) +9 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_psr@psr2-cursor-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#1072] / [i915#9732]) +5 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#9685])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9685]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#5289])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][181] ([i915#15106]) +6 other tests fail
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb1/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][182] ([i915#15106]) +1 other test fail
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#3555]) +2 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#8623])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-glk11:        NOTRUN -> [INCOMPLETE][185] ([i915#12276]) +1 other test incomplete
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk11/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@kms_vrr@flip-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#15243] / [i915#3555])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_vrr@flip-suspend.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-tglu:         NOTRUN -> [SKIP][187] ([i915#9906])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#2433])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-start@vcs1:
>     - shard-mtlp:         [PASS][189] -> [FAIL][190] ([i915#4349]) +3 other tests fail
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-mtlp-5/igt@perf_pmu@busy-start@vcs1.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-8/igt@perf_pmu@busy-start@vcs1.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#8516])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-4/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#14544] / [i915#3291] / [i915#3708])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#3708])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#14544] / [i915#3708])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#9917])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@bind-unbind-vf@vf-1:
>     - shard-tglu-1:       NOTRUN -> [FAIL][196] ([i915#12910]) +9 other tests fail
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@hibernate:
>     - shard-rkl:          [ABORT][197] ([i915#7975]) -> [PASS][198]
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@gem_eio@hibernate.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_eio@hibernate.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-glk:          [INCOMPLETE][199] ([i915#13356] / [i915#14586]) -> [PASS][200]
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-glk8/igt@gem_workarounds@suspend-resume.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk3/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-rkl:          [ABORT][201] ([i915#15060]) -> [PASS][202]
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][203] ([i915#7984]) -> [PASS][204]
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-mtlp-6/igt@i915_power@sanity.html
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-3/igt@i915_power@sanity.html
> 
>   * igt@i915_selftest@live:
>     - shard-mtlp:         [DMESG-FAIL][205] ([i915#12061] / [i915#15560]) -> [PASS][206]
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-mtlp-1/igt@i915_selftest@live.html
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-4/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-dg2:          [DMESG-FAIL][207] ([i915#12061]) -> [PASS][208] +1 other test pass
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-8/igt@i915_selftest@live@workarounds.html
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-7/igt@i915_selftest@live@workarounds.html
>     - shard-mtlp:         [DMESG-FAIL][209] ([i915#12061]) -> [PASS][210]
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
>     - shard-dg2:          [FAIL][211] ([i915#5956]) -> [PASS][212] +3 other tests pass
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][213] ([i915#13566]) -> [PASS][214] +1 other test pass
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-tglu-10/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-6/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [FAIL][215] ([i915#15389]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-cpu.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
>     - shard-dg2:          [FAIL][217] ([i915#15389] / [i915#6880]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          [SKIP][219] ([i915#3555] / [i915#8228]) -> [PASS][220] +1 other test pass
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
>     - shard-rkl:          [INCOMPLETE][221] ([i915#13476]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_cursor@viewport:
>     - shard-dg1:          [DMESG-WARN][223] ([i915#4423]) -> [PASS][224] +2 other tests pass
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg1-12/igt@kms_plane_cursor@viewport.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_plane_cursor@viewport.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          [SKIP][225] ([i915#6953]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_plane_scaling@intel-max-src-size.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg2:          [SKIP][227] ([i915#9340]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [SKIP][229] ([i915#15073]) -> [PASS][230] +1 other test pass
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_setmode@basic@pipe-b-hdmi-a-3:
>     - shard-dg2:          [FAIL][231] ([i915#15106]) -> [PASS][232] +2 other tests pass
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-6/igt@kms_setmode@basic@pipe-b-hdmi-a-3.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-6/igt@kms_setmode@basic@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend:
>     - shard-rkl:          [INCOMPLETE][233] ([i915#12276]) -> [PASS][234]
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-snb:          [ABORT][235] -> [PASS][236]
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-snb4/igt@perf_pmu@rc6-suspend.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-snb1/igt@perf_pmu@rc6-suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-rkl:          [SKIP][237] ([i915#8411]) -> [SKIP][238] ([i915#14544] / [i915#8411])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@api_intel_bb@blit-reloc-keep-cache.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@drm_buddy@drm_buddy:
>     - shard-rkl:          [SKIP][239] ([i915#15678]) -> [SKIP][240] ([i915#14544] / [i915#15678])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@drm_buddy@drm_buddy.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@drm_buddy@drm_buddy.html
> 
>   * igt@gem_bad_reloc@negative-reloc-lut:
>     - shard-rkl:          [SKIP][241] ([i915#14544] / [i915#3281]) -> [SKIP][242] ([i915#3281]) +7 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@gem_bad_reloc@negative-reloc-lut.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-rkl:          [SKIP][243] ([i915#3555] / [i915#9323]) -> [SKIP][244] ([i915#14544] / [i915#3555] / [i915#9323])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@gem_ccs@block-copy-compressed.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          [SKIP][245] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][246] ([i915#3555] / [i915#9323])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          [SKIP][247] ([i915#6335]) -> [SKIP][248] ([i915#14544] / [i915#6335])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          [SKIP][249] ([i915#14544] / [i915#280]) -> [SKIP][250] ([i915#280])
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_ctx_sseu@engines.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-rkl:          [SKIP][251] ([i915#4525]) -> [SKIP][252] ([i915#14544] / [i915#4525])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          [SKIP][253] ([i915#14544] / [i915#4525]) -> [SKIP][254] ([i915#4525])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_exec_balancer@parallel-out-fence.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_reloc@basic-gtt-noreloc:
>     - shard-rkl:          [SKIP][255] ([i915#3281]) -> [SKIP][256] ([i915#14544] / [i915#3281])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-noreloc.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-noreloc.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-rkl:          [SKIP][257] ([i915#4613]) -> [SKIP][258] ([i915#14544] / [i915#4613]) +2 other tests skip
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@gem_lmem_swapping@parallel-random-verify.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-rkl:          [SKIP][259] ([i915#14544] / [i915#4613]) -> [SKIP][260] ([i915#4613]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         [WARN][261] ([i915#2658]) -> [ABORT][262] ([i915#15647])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-tglu-8/igt@gem_pwrite@basic-exhaustion.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-tglu-10/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#3282]) -> [SKIP][264] ([i915#3282]) +2 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_pwrite@basic-random.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-context:
>     - shard-rkl:          [SKIP][265] ([i915#13717]) -> [SKIP][266] ([i915#13717] / [i915#14544])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          [SKIP][267] ([i915#14544] / [i915#3297]) -> [SKIP][268] ([i915#3297])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gem_userptr_blits@create-destroy-unsync.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-rkl:          [SKIP][269] ([i915#3297]) -> [SKIP][270] ([i915#14544] / [i915#3297])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          [SKIP][271] ([i915#2527]) -> [SKIP][272] ([i915#14544] / [i915#2527]) +2 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@gen9_exec_parse@bb-chained.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-rkl:          [SKIP][273] ([i915#14544] / [i915#2527]) -> [SKIP][274] ([i915#2527]) +2 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@gen9_exec_parse@unaligned-access.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          [SKIP][275] ([i915#5723]) -> [SKIP][276] ([i915#14544] / [i915#5723])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@i915_query@test-query-geometry-subslices.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-rkl:          [SKIP][277] ([i915#14544] / [i915#7707]) -> [SKIP][278] ([i915#7707])
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#5286]) -> [SKIP][280] ([i915#5286]) +2 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-rkl:          [SKIP][281] ([i915#5286]) -> [SKIP][282] ([i915#14544] / [i915#5286]) +2 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-rkl:          [SKIP][283] ([i915#3638]) -> [SKIP][284] ([i915#14544] / [i915#3638])
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-270.html
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3638]) -> [SKIP][286] ([i915#3638]) +2 other tests skip
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          [SKIP][287] ([i915#14544]) -> [SKIP][288] +11 other tests skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][289] ([i915#14544] / [i915#6095]) -> [SKIP][290] ([i915#6095]) +5 other tests skip
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          [SKIP][291] ([i915#6095]) -> [SKIP][292] ([i915#14544] / [i915#6095]) +1 other test skip
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          [SKIP][293] ([i915#12805]) -> [SKIP][294] ([i915#12805] / [i915#14544])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][295] ([i915#14098] / [i915#6095]) -> [SKIP][296] ([i915#14098] / [i915#14544] / [i915#6095]) +8 other tests skip
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
>     - shard-rkl:          [SKIP][297] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][298] ([i915#14098] / [i915#6095]) +9 other tests skip
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-rkl:          [SKIP][299] ([i915#11151] / [i915#7828]) -> [SKIP][300] ([i915#11151] / [i915#14544] / [i915#7828]) +4 other tests skip
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          [SKIP][301] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][302] ([i915#11151] / [i915#7828]) +6 other tests skip
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_chamelium_frames@dp-crc-fast.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][304] ([i915#6944] / [i915#7118] / [i915#9424])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][306] ([i915#15330] / [i915#3116])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          [SKIP][307] ([i915#6944] / [i915#9424]) -> [SKIP][308] ([i915#14544] / [i915#6944] / [i915#9424])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_content_protection@mei-interface.html
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_content_protection@mei-interface.html
>     - shard-dg1:          [SKIP][309] ([i915#9433]) -> [SKIP][310] ([i915#6944] / [i915#9424])
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-19/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          [SKIP][311] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][312] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_content_protection@type1.html
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          [SKIP][313] ([i915#3555]) -> [SKIP][314] ([i915#14544] / [i915#3555])
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          [SKIP][315] ([i915#13049]) -> [SKIP][316] ([i915#13049] / [i915#14544])
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#3555]) -> [SKIP][318] ([i915#3555]) +1 other test skip
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          [SKIP][319] ([i915#4103]) -> [SKIP][320] ([i915#14544] / [i915#4103]) +1 other test skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          [SKIP][321] ([i915#14544] / [i915#4103]) -> [SKIP][322] ([i915#4103])
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
>     - shard-rkl:          [SKIP][323] -> [SKIP][324] ([i915#14544]) +7 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          [SKIP][325] ([i915#9723]) -> [SKIP][326] ([i915#14544] / [i915#9723])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dp_link_training@uhbr-mst:
>     - shard-rkl:          [SKIP][327] ([i915#13748] / [i915#14544]) -> [SKIP][328] ([i915#13748])
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_dp_link_training@uhbr-mst.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_dp_link_training@uhbr-mst.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          [SKIP][329] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][330] ([i915#3555] / [i915#3840])
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-rkl:          [SKIP][331] ([i915#3555] / [i915#3840]) -> [SKIP][332] ([i915#14544] / [i915#3555] / [i915#3840])
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_dsc@dsc-with-formats.html
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#3840] / [i915#9053]) -> [SKIP][334] ([i915#3840] / [i915#9053])
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          [SKIP][335] ([i915#658]) -> [SKIP][336] ([i915#14544] / [i915#658])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_feature_discovery@psr2.html
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#9934]) -> [SKIP][338] ([i915#9934]) +6 other tests skip
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_flip@2x-blocking-wf_vblank.html
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend:
>     - shard-glk:          [INCOMPLETE][339] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][340] ([i915#12745] / [i915#4839] / [i915#6113])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk3/igt@kms_flip@2x-flip-vs-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [INCOMPLETE][341] ([i915#4839]) -> [INCOMPLETE][342] ([i915#4839] / [i915#6113])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-glk4/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk3/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          [SKIP][343] ([i915#9934]) -> [SKIP][344] ([i915#14544] / [i915#9934]) +5 other tests skip
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_flip@2x-plain-flip.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
>     - shard-rkl:          [SKIP][345] ([i915#15643]) -> [SKIP][346] ([i915#14544] / [i915#15643]) +1 other test skip
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
>     - shard-rkl:          [SKIP][347] ([i915#14544] / [i915#15643]) -> [SKIP][348] ([i915#15643]) +1 other test skip
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-rkl:          [SKIP][349] ([i915#1825]) -> [SKIP][350] ([i915#14544] / [i915#1825]) +17 other tests skip
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          [SKIP][351] ([i915#15102] / [i915#3023]) -> [SKIP][352] ([i915#14544] / [i915#15102] / [i915#3023]) +12 other tests skip
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#1825]) -> [SKIP][354] ([i915#1825]) +21 other tests skip
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          [SKIP][355] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][356] ([i915#15102] / [i915#3023]) +12 other tests skip
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-dg1:          [SKIP][357] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][358] ([i915#15102] / [i915#3458])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#9766]) -> [SKIP][360] ([i915#9766])
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][361] ([i915#15102] / [i915#3458]) -> [SKIP][362] ([i915#10433] / [i915#15102] / [i915#3458]) +4 other tests skip
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg1:          [SKIP][363] ([i915#15102] / [i915#3458]) -> [SKIP][364] ([i915#15102] / [i915#3458] / [i915#4423])
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][365] ([i915#8708]) -> [SKIP][366] ([i915#4423] / [i915#8708])
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][367] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][368] ([i915#15102] / [i915#3458])
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][369] ([i915#13331]) -> [SKIP][370] ([i915#12713])
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#15460]) -> [SKIP][372] ([i915#15460])
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
>     - shard-rkl:          [SKIP][373] ([i915#15638] / [i915#15722]) -> [SKIP][374] ([i915#14544] / [i915#15638] / [i915#15722])
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          [SKIP][375] ([i915#6301]) -> [SKIP][376] ([i915#14544] / [i915#6301])
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_panel_fitting@legacy.html
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
>     - shard-rkl:          [SKIP][377] ([i915#15709]) -> [SKIP][378] ([i915#14544] / [i915#15709]) +1 other test skip
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
> 
>   * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
>     - shard-rkl:          [SKIP][379] ([i915#14544] / [i915#15709]) -> [SKIP][380] ([i915#15709]) +3 other tests skip
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#9685]) -> [SKIP][382] ([i915#9685])
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-2/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-rkl:          [SKIP][383] ([i915#9685]) -> [SKIP][384] ([i915#14544] / [i915#9685])
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#6524]) -> [SKIP][386] ([i915#6524])
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>     - shard-rkl:          [SKIP][387] ([i915#11520] / [i915#14544]) -> [SKIP][388] ([i915#11520]) +6 other tests skip
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          [SKIP][389] ([i915#11520]) -> [SKIP][390] ([i915#11520] / [i915#14544]) +2 other tests skip
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#9683]) -> [SKIP][392] ([i915#9683])
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_psr2_su@page_flip-nv12.html
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          [SKIP][393] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][394] ([i915#1072] / [i915#9732]) +12 other tests skip
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr-suspend:
>     - shard-rkl:          [SKIP][395] ([i915#1072] / [i915#9732]) -> [SKIP][396] ([i915#1072] / [i915#14544] / [i915#9732]) +13 other tests skip
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_psr@psr-suspend.html
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_psr@psr-suspend.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          [SKIP][397] ([i915#14544] / [i915#5289]) -> [SKIP][398] ([i915#5289]) +1 other test skip
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#15243] / [i915#3555]) -> [SKIP][400] ([i915#15243] / [i915#3555])
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@kms_vrr@flip-dpms.html
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          [SKIP][401] ([i915#9906]) -> [SKIP][402] ([i915#14544] / [i915#9906])
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-drrs.html
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          [SKIP][403] ([i915#2435]) -> [SKIP][404] ([i915#14544] / [i915#2435])
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@rc6-suspend:
>     - shard-glk:          [INCOMPLETE][405] ([i915#13356] / [i915#14242]) -> [INCOMPLETE][406] ([i915#13356])
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-glk9/igt@perf_pmu@rc6-suspend.html
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-glk6/igt@perf_pmu@rc6-suspend.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#9917]) -> [SKIP][408] ([i915#9917])
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-off.html
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-1/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          [SKIP][409] ([i915#9917]) -> [SKIP][410] ([i915#14544] / [i915#9917]) +1 other test skip
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18112/shard-rkl-8/igt@sriov_basic@enable-vfs-autoprobe-on.html
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
>   [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
>   [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
>   [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
>   [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
>   [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
>   [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
>   [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
>   [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
>   [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
>   [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
>   [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
>   [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
>   [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
>   [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
>   [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
>   [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
>   [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
>   [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
>   [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
>   [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
>   [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
>   [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
>   [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
>   [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
>   [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
>   [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
>   [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
>   [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
>   [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
>   [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
>   [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
>   [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
>   [i915#15647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15647
>   [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
>   [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
>   [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
>   [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
>   [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_18112 -> Patchwork_158394v2
> 
>   CI-20190529: 20190529
>   CI_DRM_18112: 9583680736b058808148da4717ca824d25702418 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8787: 8787
>   Patchwork_158394v2: 9583680736b058808148da4717ca824d25702418 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158394v2/index.html
