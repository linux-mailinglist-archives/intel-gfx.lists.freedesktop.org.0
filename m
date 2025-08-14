Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 147F1B26DC7
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Aug 2025 19:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59DF10E20C;
	Thu, 14 Aug 2025 17:35:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YW9EUv67";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D528110E20C
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Aug 2025 17:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755192932; x=1786728932;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=G9BeJilBgkRd2gcBLe0dwm6GnqwLSJE/2RCUC9qXTWI=;
 b=YW9EUv67PSxFldd3Li9wzooObRnWjqejpGoA4M1mT2OLwsi49BIJHJFP
 esBzf2GZIN8Wk2eOsLkCylBoRMRzVUl32dVOIbfXW0w56n1vNU8bwoe8o
 f+vLuNNey11xXVGqzChnmzMNqIpJ+lHnrMVW4aijEZEU94SaF0IilSPZ5
 YsLVBgtkHZpDlm/05B2SWNnW9PaK8e5pnvTivqxgcBC+MwpZlwFWjQqBi
 qWwUjOqc3vXPb/mkGpg9pfQ5r76LrdYFCX+EPpoXw+jwcwSOoBsg0z2yv
 b96oG3B2q2MbnKKfUrD8MbQmI1Za8+gTblbFu3GkZjO4AjnpWvBsUN/XL g==;
X-CSE-ConnectionGUID: /F9NmWYBSoG1OF2ml66vIQ==
X-CSE-MsgGUID: Q0VoN46JS+iocel7Ef32aA==
X-IronPort-AV: E=McAfee;i="6800,10657,11522"; a="82952504"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="82952504"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 10:35:32 -0700
X-CSE-ConnectionGUID: yLu/3vbhRxiRXDdDGrWOkw==
X-CSE-MsgGUID: BCRy8Fu/TvSp2rTIgtRU2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="166035971"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2025 10:35:33 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 10:35:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 14 Aug 2025 10:35:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 14 Aug 2025 10:35:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mal5WpmDlanE8pxoaQ7uQm3ADzERbRF4uKfc4L5GbrgmpdjU9yEuos+CKftrrP7K7M6zyug2Spy/t7FBIr/z16MUSQv8hrgMXJxOpDLwr2nF5/rW6h8R5T8IHzXxfSTP2DGB5Cnztx1IAxaf8rR/u3fgPaoE/yYvxUoKju9l8qZQh8YZI60CpM4OtTjmODTNsIpzKK6m1yRcWKWcdjH2HfBQdJiiY996g6Irhy5MO247E1Xsr2cjc3hpPq9m9iq4jNoRuKRwAWOt85Id78/ET2NW/DzjUDyn8lGpvwc2K244+suqELxlCcQ2krrsPf0HPqBoMqhEgWnxDFDQv13QrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Khm0FRhCPfcDGYq8OgfdMu+vOUxrPfoBw6A3vtLltc0=;
 b=DvWTmZvdPohZbJiYOJD/RZHrDSXW2Xwd6EjhQRSesa27WFhHZYi5nPm40H7UxWnYpGLjriaSnp6RibAAa9TGdhIZnWBOAdlttIHO9+wgVgj4FOwuj0DJKqlJn3pO79q30l7UOhWQ2LJGFORhU9zhGlka1aNjD/607l4kgO8Bg8GJx9b4vaUzbjB64MJCkOk5Z0D2Gg3NhCetuVBNqBS991o3oODKi0RCYQ/LfeYLJ/y5H2GuIvjBzJ4bv0UuBRQiGWq42UdtAvLcqa85hkbGxwoORa+ay7MV/AAymmN8Rtx8mmrpzHbC/YFUuCgcth0MFD8WuoG7Kc1b6VXWRq/4Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Thu, 14 Aug
 2025 17:35:29 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9031.012; Thu, 14 Aug 2025
 17:35:29 +0000
Date: Thu, 14 Aug 2025 20:35:20 +0300
From: Imre Deak <imre.deak@intel.com>
To: Shawn C Lee <shawn.c.lee@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Uma
 Shankar" <uma.shankar@intel.com>, Jani Nikula <jani.nikula@intel.com>,
 "Vidya Srinivas" <vidya.srinivas@intel.com>
Subject: Re: [v2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aJ4eWGuiMc8FhiNx@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250808091602.288323-1-shawn.c.lee@intel.com>
 <aJXF7egTCfx5bAgg@ideak-desk>
 <DS0PR11MB75788D5F17FD96B9CCAEE8A7A328A@DS0PR11MB7578.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <DS0PR11MB75788D5F17FD96B9CCAEE8A7A328A@DS0PR11MB7578.namprd11.prod.outlook.com>
X-ClientProxiedBy: DUZPR01CA0218.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b4::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ2PR11MB8297:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c9bdcb7-df86-43be-4cb1-08dddb58f5f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|376014|1800799024|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?30AQgv7RAtX2XXIau/PWTbJm79c8oEHz4xjbr79MpNw+rXFLnD9GmepXRVra?=
 =?us-ascii?Q?3/opgipgCZTPSgNVSDGsOuVA56izmchGChSyJDaRWoX5YDp3V3/C55ZU51yW?=
 =?us-ascii?Q?fUX5cdx8O54l3ADFEegiPOpSrS18YdRDOuYgTHWxQHZVImoIrqYdKPd0BnEq?=
 =?us-ascii?Q?ZhHKIdZl+liuM54+IoQYzmUAGbce+sqZSCSQ1qXcLjl+z+rT7aktmXf2wEAo?=
 =?us-ascii?Q?hY8qdlGUEAKV2haj9o76s/62lbNaS+avEEeQsV0Wau4roPVzhSY4mnAoPvfy?=
 =?us-ascii?Q?2cRnZU9z11Y/K2bTxnZkz5wlT4/d/qqmfirVvozaKd8jqTlna8EXg4O8O/ov?=
 =?us-ascii?Q?Kja5zhPMDw1S9etRoGqotP72Uz6QkQTOL9zmjY1Jge9Qpsrn6A9ueHAHxwCu?=
 =?us-ascii?Q?gr/FzjlU/rYRZnNwnvx6anDn4ybeGsdDnhunaum2VKb3baEA3wirpjbRsl/0?=
 =?us-ascii?Q?ARn0j3/LcpXaOPB+RVupxLmzUa7mu4wpxCNEkzQnK9n0rU0Pjbc3J3mScP4t?=
 =?us-ascii?Q?sJv9dtywTDko01SjvnYd2sG1c2GVq9ebNqkT+L85+vcVd8oB73/TC7kbYVlE?=
 =?us-ascii?Q?z3W08OhAJMMJ5IdCMiMmUdmTmVgoX1Gw/rTWiC2zrauSU9cjfYxt1bD9OiDr?=
 =?us-ascii?Q?5joJYtUKPGDMktcUD2WF9SzSfiKjCawnqY0iK9BXOA/y/36syQr4FXWQ8xD+?=
 =?us-ascii?Q?9ELIVjJiWAFZp4+cpcMNN+/fvaaQL3RKz8fuIAFwXErm0KHHnGCiom5n52gY?=
 =?us-ascii?Q?tiMSvIAE9XcTECxiQyCWJqpB+tBj7P1xnPaT97EqKByVQFPTF1nRBIDl+8/R?=
 =?us-ascii?Q?gu9okC5qnP9CEKudBRdOVNl+dCAHEwfLVArty20NfzjIlsRCHv0iRheuYqHJ?=
 =?us-ascii?Q?LAAw42SffWOHtQDZDbUeXMeJuRUmY3xNBDpnzmBvw3Chn0sutxl9FqPlvvQb?=
 =?us-ascii?Q?YY136l6Q1gbVJ+nl1IOsJl3HToyW1c6bgJKioNUsZkBsB2dBir/LLPXvP4YT?=
 =?us-ascii?Q?6YzTItUJtLjLQ8/weY0UepczOO/N+Ow/dOR8UgWjJIwD3BNwgKZ2jqZByc0T?=
 =?us-ascii?Q?G4WEAFmco5SoBGHuMZCmurG9AooaWzCPbyIC2v8Xxs7wvCaqMduTt7HZdrz0?=
 =?us-ascii?Q?ndPor5PZLWJqmC3IA7dq1Pndj3Rcs2CMdyxwRlEf1QvYOyZXAM9mFfw6Qd1z?=
 =?us-ascii?Q?OOI4qQBCIr1nrLCsyTAIfaAA02Ly2vmz/pi7AxsSgKs77K8lPGRmOe/cd+kQ?=
 =?us-ascii?Q?uQICw7jn1ihEDKE6usEwq1bK65e/rItscfXUMtIvQWGoTR5JnqxA5jGkJU7f?=
 =?us-ascii?Q?Dhd0lvt1JQvrP9WilMlCMJPF3ttXTAw4J+1M0r/6qbrGZuxu/BPKbOvS2Pdt?=
 =?us-ascii?Q?i4K79ZOUptJqm5SXHzlGnm6sDZBL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ma63bmlqskaXLH3Sjuou8owlMZpad4Qni5BTFsFTxz5j9cmZa97Ab+BBzFMG?=
 =?us-ascii?Q?itjXNrxZyhZFvaLS/uodWNdmTKXILVf/KLlJkpViCGHJSoeMexoh/bvGEbMa?=
 =?us-ascii?Q?cV6jESKcVkZRlT/rge09zZim+Mbu3UW8FLxcEQ5zUoJle/IVIsv6AJVBwOFV?=
 =?us-ascii?Q?QtCB3z3eMwanEmwrBAwMUQxwCrhAG8PlUAkqm++flwnRUYzcTBuLjOVpR92F?=
 =?us-ascii?Q?E7kdJMfrszL2j2SIhdu+Zk5lXEAFoKvOjXrjeorPuTVmZvreyhLMZesoDnKf?=
 =?us-ascii?Q?LGcLuS7gFjp29zvXJDAvD83C69mG5tTdEvc76g1KTbTwrB2eZ6ceAX6Ft/OH?=
 =?us-ascii?Q?EYN6ODDd/qVILMOeyURYXnC+yWgzf7Yq4EVJaH+ao20v8eNxd4+WWzSiC9no?=
 =?us-ascii?Q?E7Yza/7QUbCruTAMOEOAkkxTy5jhXKSqI7oQA9E64V2i2ExoVCkHX6YSjuzE?=
 =?us-ascii?Q?uea1CcVt2OmqeSC2nCn+FPYfFlslCD8eZWB7Q+5XWyXE9s3gEeR1VLtQKEVh?=
 =?us-ascii?Q?c3P33QVrTnk2q+eoGRH9lwZ73Ym5XKqssobnnihuQZJOekz2tebKmbUx6Tvz?=
 =?us-ascii?Q?fV2LrqkD7vDZSdmhRo1Hsw1Y3uN5jAQ94a9j/DqQvzyyqllZjI7i8WHClT6r?=
 =?us-ascii?Q?jxAF7BbornT2CjiWTn55lKqx6WkqoFWzj31fSKimAD4GXzcLkhwUg3SsuviF?=
 =?us-ascii?Q?AaZ6d5a+a1JWSmsQOy+EDxCiddz6yTQP9wzNsAaU+TgSa0GTkYWO5u+EibhZ?=
 =?us-ascii?Q?TiG8hjI8kLgr5muO7k7lMN/svQAhZ63oCUOt63j3SXL9sl1avv0oG0Kyao/6?=
 =?us-ascii?Q?BUx+j3Tw9Kl9aIRjABzVKl0dT8XBuQobs2iqFoXJjvs3f2IWRGv10nssHfCX?=
 =?us-ascii?Q?X3CWdAgPu7bAFF+mrEhi6szngymj6/GU3ZFWukPJOlmfgcrgH3vdqjV0AGMN?=
 =?us-ascii?Q?m6E0sBVCU4lDAV2JpLfePoyTcgwsh0jJxmC2JayoqmXNlXEn9XBK49Djok+X?=
 =?us-ascii?Q?6MdJfFSKgJ6vfzFNwW0nvFmL7PypPwkoMlIk1LzutG9QT4SU9BfxqdoRX58f?=
 =?us-ascii?Q?fA15NtWXi/mXK/m9ulaTQ5W4LgNk9jXDiV6JX1GXviQDX5ZGNVjRkOkG3uV0?=
 =?us-ascii?Q?GoeQCMqOnw44FEyAL/cBxUZX/O/NMRWptbVwwgtmVMxJYBmAXSm5fLNddqP+?=
 =?us-ascii?Q?WurCiht/LMwHFq/RDGXbVRlxe8lSkSHNahPOV6Tdhc+1wX6meG1zw/7Oarh4?=
 =?us-ascii?Q?IqGwQe1f70BxcHpz2SXFXfx5JPCBtEAjOcjcM/0fORCXV1PTuWASfMsHdzIq?=
 =?us-ascii?Q?uPTxYuAtwMswoJzlLJogEX4uGMNvg8RK4getS8xElZCc3BpxHzd7mJwSht+O?=
 =?us-ascii?Q?AxucgUfyPMjx+oK2qUmaHFHBM4HmxrjM+DhhKWD6RbuwFBEetQGRclIVoW6J?=
 =?us-ascii?Q?A+fcZmxARH8FX4W1UtlmASY0kqHdmmGWqMNApr1X8YlqSnzgnll1WwrRfgG0?=
 =?us-ascii?Q?caCx15Jq+uwcwRHuVJ0DP0zCinPOfOpSbeaLRI+bcmtJ2rouLWs9KWeq/33I?=
 =?us-ascii?Q?W5JccMDYM+bzx1mPoDQiflGSBrlY8aqs2jXDkzMx1lUzpdB8WHkFY6cU5xgB?=
 =?us-ascii?Q?IqnV/HqRFL1ha2Gka8R5tcExCuVNFWNDku9c/t4et4vn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c9bdcb7-df86-43be-4cb1-08dddb58f5f7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Aug 2025 17:35:28.9165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DFQgf55NzVL6yKTPJgDqPGyEEOlAdnBk4JlH1wC3oDpimq5tMCQrtHtHkCegCF2EkUeT1+7z/aEFRYv7qWhNRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
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

On Mon, Aug 11, 2025 at 09:46:55AM +0300, Lee, Shawn C wrote:
> On Fri, Aug 08, 2025 at 09:40:00AM +0000, Imre Deak C wrote:
> >On Fri, Aug 08, 2025 at 09:16:02AM +0000, Lee Shawn C wrote:
> >> While performing HDMI compliance testing, test equipment may request 
> >> different bpc output for signal measurement. However, display driver 
> >> typically determines the maximum available bpc based on HW bandwidth.
> >> 
> >> Introduce a new debugfs that allows user to configure dedicated bpc 
> >> manually, and making HDMI compliance test much easier.
> >> 
> >> v2: Using exist variable max_requested_bpc.
> >
> > How come this doesn't get reset after a hotplug as you described for
> > the case when the property is used, even though both the property and
> > this debug entries use the same state variable? (Not saying that the
> > reset happing after a hotplug is a valid justification for a new
> > debugfs entry, the hotplug could be also handled by the user, but you
> > could argue the debugfs entry is more convenient.)
> 
> Hi Imre, thank you for the prompt response.
> 
> https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/i915/display/intel_hdmi.c#L2672
>
> The max_bpc_property and max_bpc values are initialized during
> connector initialization process.
> 
> https://elixir.bootlin.com/linux/v6.16/source/drivers/gpu/drm/drm_atomic.c#L468
>
> The max_bpc will be restored to info->bpc (from EDID) at
> drm_atomic_connector_check() everytime.
> 
> When max_bpc_property is available, this funciton also compares
> max_bpc with max_requested_bpc and updates max_bpc to the smaller of
> the two values.
> 
> The i915 display driver then relies on this max_bpc value to determine
> whether to update the pipe bpp value in compute_sink_pipe_bpp().
> Therefore, we can simply update max_requested_bpc to affect pipe bpp
> output. And no additional driver changes are required.

The point above was to figure out how the "max bpc" connector property
gets reset after a hotplug, based on your earlier explanation for the
reason to add a debugfs entry instead. But based on the above and also
based on my tests, that connector property actually keeps its value
across hotplugs.

So I think that the property could be used for your tests then, or if
you wanted to have a debugfs entry for convenience, then the
intel_force_link_bpp debugfs entry could be added for all HDMI
connectors, as suggested earlier, instead of adding a new debugfs entry.
The following would do that, could you give it a go?

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 108ebd97f9e4..b31fb1e4bc1a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
 	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);

-	if (HAS_PCH_SPLIT(display)) {
+	if (HAS_PCH_SPLIT(display))
 		crtc_state->has_pch_encoder = true;
-		if (!intel_fdi_compute_pipe_bpp(crtc_state))
-			return -EINVAL;
-	}

 	if (display->platform.g4x)
 		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index cbee628eb26b..027e8ed0cea8 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -55,6 +55,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
+#include "intel_fdi.h"
 #include "intel_gmbus.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_regs.h"
@@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
 	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
 		pipe_config->pixel_multiplier = 2;

+	if (!intel_fdi_compute_pipe_bpp(pipe_config))
+		return -EINVAL;
+
 	pipe_config->has_audio =
 		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
 		intel_audio_compute_config(encoder, pipe_config, conn_state);
diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
index 3caef7f9c7c4..9e8220d86a4a 100644
--- a/drivers/gpu/drm/i915/display/intel_link_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
@@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
 	switch (connector->base.connector_type) {
 	case DRM_MODE_CONNECTOR_DisplayPort:
 	case DRM_MODE_CONNECTOR_eDP:
+	case DRM_MODE_CONNECTOR_HDMIA:
 		break;
 	case DRM_MODE_CONNECTOR_VGA:
 	case DRM_MODE_CONNECTOR_SVIDEO:
@@ -456,13 +457,6 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
 	case DRM_MODE_CONNECTOR_DVID:
 		if (HAS_FDI(display))
 			break;
-
-		return;
-	case DRM_MODE_CONNECTOR_HDMIA:
-		if (HAS_FDI(display) && !HAS_DDI(display))
-			break;
-
-		return;
 	default:
 		return;
 	}


