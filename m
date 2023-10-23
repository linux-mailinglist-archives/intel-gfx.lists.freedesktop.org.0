Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0C37D3AB7
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 17:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B040B10E1DF;
	Mon, 23 Oct 2023 15:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59CC10E1DF
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 15:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698074937; x=1729610937;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=8t4lCTYB28aJ5d5OAdHtdZTP9A7xX7yhKdQbTF0Z3hc=;
 b=T482M+x0MV+1Se8CiPcAMOzxqrpuFJU2w8ht/ei4blOJ1lVfijlKwoqm
 QzcGHZmQ1LcDBWmrrZzSoO4Kh+BhmO0S5INQnJzkoJZYT2f5AOhDnSGgX
 v4g4yiDw/aKJiNN8FHq6AQCcPJip9L6zOzuymH0bObtHe4mqarNk+BA82
 6xSEvGKseR2vd5fC6qoIEKnjCGGTjtgerZNK1mRZV4hUCW8QOcG+pjaDy
 SamMB9pdokT3HI1yHzpuw9joBLjIvLJRGkuowQKnyQ6bMuv/XEBT9rhrC
 ofvcKdl1ybNz/W8c6O+rjt4p2Ez/fit/h7AStJ1Nsc+guPJI7RlAetqhr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="8421217"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="8421217"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 08:28:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; 
   d="scan'208";a="5852053"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 08:27:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 08:28:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 08:28:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 08:28:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 08:28:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DBj4KhbeHCNAfPEal6uHjmo2EU6SUiTmE42lTfyfylkzztpfEuu5W1CDDuUI3IU3PKN3Cp2CFHyEKumBm8HhXKTcCo0mNAX7yGSCgOdb5T3U2UfEmOZIY26aJshM96RXasdXpgZMJAupsUUwb0XhUdd50X2dXIhj9GMqVs7cLoEKo92YlCyjAXh2J0Xk5NFDXrmTSB3iIzfep3s998Lwp1sdjAI33D3hwPjZRAUw0XP/Syb+32+BXJMvL1qRusGpASwkYIUIZxSwekwozmVu0lWteCFtSlha3hLswj+tAOpdllp1fdGcm6z49xR/19RXMY0gee10rxfdUYluhKryrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o8mIgBB7Id3vjRFERQifl7zW7stkBYz3E/kZeM1y6Vg=;
 b=CPGjaUO4+indx+ODkTw9tUwqE4IShi5un8qbX4+H/F84h7khgKss6gsx98cS51DX+7mKwHIKynopnNHe9gJHRZB/WcuGWl37dGVo0UCfQoa2RjILdSqslklEdIYA2xFPVagCmElf8p24NM1VN5LaQavRDEoPfZxNm4FjHpvaGHlafoKSlvDsqYPav2L0op0ka3G4ETeXuKZi5Qd5t/cBTvGdW7Du0oabwykAzV8RAsMIMcTKvUhkBJSPKJ3cwvjClCxA4eBicXXgOsRS8WW6oMYkMzJShLc1NI3ddMh20nZLRqIsB2y4iNchdd/xje+KAVzC0RsZ9jimNZR/mWIckg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by IA1PR11MB8198.namprd11.prod.outlook.com (2603:10b6:208:453::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Mon, 23 Oct
 2023 15:28:53 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6886.034; Mon, 23 Oct 2023
 15:28:52 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <kdxpremxa22f3ds3uzrtp2cohkkos3nef7vcfi5c7ikr5ojl22@ihkv6bktqett>
References: <20231018222441.4131237-1-lucas.demarchi@intel.com>
 <20231018222441.4131237-3-lucas.demarchi@intel.com>
 <169773148009.1959.9111774447308795723@gjsousa-mobl2>
 <kdxpremxa22f3ds3uzrtp2cohkkos3nef7vcfi5c7ikr5ojl22@ihkv6bktqett>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Date: Mon, 23 Oct 2023 12:28:46 -0300
Message-ID: <169807492642.2127.3806840422910041530@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR05CA0085.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::26) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|IA1PR11MB8198:EE_
X-MS-Office365-Filtering-Correlation-Id: 088fb514-e180-4f84-07a1-08dbd3dcc2e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vRrNT86zeckUxqSmAhNdPFu6LmCF4f4BEhxmWmgzrIk+ZR/9LtkM6sZDTb5a5tJ4CxcSAhVdumZTddsHaQN9m2KUMfB9YOCCK8YkFMZSgBE0pOxNFTBchlNBpkjcOjcaMzyP6XUpBRs1MhuMDrClME7Y3KN5/+0zERuo1RS6j/IPUX/xmZholCJqU+YZW2R/vwi+DiTYHwGVsEv0j4X7edZP9axobeIxMHhYDcXeEJbtr43DUhmp5ka6UaJRMRuOzCWS7t3jhAKTISP06SSPEAFwrgN4weFnQpiX+st1qgdjRFOL4Iynmh4uc1c8qb4HQEbfuf+aVFyg7VxvvL1cVhwA9FPcu5ujRiCuizU+ewyzT+vFS37Qrlcx1mHeWcK7uD4JFvWyRq/wkwFASRjG27LHC3JsVyLnSjRJCOKYWfvUJ0AfupbtpFQoK0DdW66sUO+nV9rBrEH6xD9Xrif9NZnd+GQr0V2gvTUzM4ploxj1ffmqz7t+9VPI1CT3PdszZN3lq+/aEqmtPWONePNAadPOUFrWsaJZiBiXW6ogHasuCveLWk8Ff2dxrTmXzqWB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(366004)(39860400002)(396003)(136003)(346002)(376002)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(83380400001)(107886003)(26005)(38100700002)(44832011)(5660300002)(316002)(66556008)(66946007)(6636002)(66476007)(2906002)(4001150100001)(4326008)(6862004)(8676002)(8936002)(41300700001)(33716001)(9686003)(6666004)(6512007)(6506007)(6486002)(478600001)(82960400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Tzg3dDREY2cwdGY2bVdoSmRyQ0pLQUdsOW5mc0grODk1d0dXS05DbENEZ3hs?=
 =?utf-8?B?S0h1Zm80aEhtSHVNc3lwOHhHWWhRd1VmSFdUa3YvWHV4bFpPcGo3bWR2akpz?=
 =?utf-8?B?ekVGY3VaRUV1RlZNSmdWd1FCQ242aTBWOXJoTHJOZmwxNEU3QzFQSWxBWUps?=
 =?utf-8?B?RjJnMnA2V2k0Vmp6Zm9tWTdKL1YyK3FkMmRUS1R3WldkTEJxelhJek5WcnBo?=
 =?utf-8?B?RWtOREcyNVluNzROM01zNjJWTHl1WUhaa2NQK0dqN000ZXdWcm5ETGx2eXlT?=
 =?utf-8?B?L1NQZGJLUkNtZEdXcTNVR0EzUnFnY1M5THJTSzNnUEZpQWN1YmZwdDdCN1Fa?=
 =?utf-8?B?NDlhVUQ5ajg1L3dCVEttSk54L0wxcHRZZFVQU2dYdWl5VGJRUmJkem5VV3Ft?=
 =?utf-8?B?MVNjY0U4NTNVa3ltcXpZRlpsRUIzRDV1MGplU1JlR2VWVjV6dWV5V0lhN0xI?=
 =?utf-8?B?REhQYWZRcmp6N3I5M3JpSGpqNzFBNVlPdzVFNllxZ0N0U09qTGdNQ1Ntb1di?=
 =?utf-8?B?YTg3OENoT2VJb1BvL1dJRmd6NGxMR08xdE1nQithdjhmYTBYK1BTNTk4cVdG?=
 =?utf-8?B?dFp5WnRJdE5yamozQlpHMVFNQmM5MVBKa1ZlYkQvZ1dOMUllcHQ0c1Y5VEtR?=
 =?utf-8?B?SnMwNE1jTklqd0krcnlpcFI0bFpQdEh2eXVyckFSRHVqMW9tb2VmVjhGWEc5?=
 =?utf-8?B?dkJhSFpQVHlhRkMwOG15UjgrUlBEVEpxdjEzZlJZbHdUdm51WFJwUXRwOFB1?=
 =?utf-8?B?ZHJxbTBUWWJ4MUxsSkpzU0xOd2Vic2JabkhYWEx4blcwdVl0TzB2cjYrd01S?=
 =?utf-8?B?MWpLVTR2VGVONmpXT09CREZLR2JiUW8yYjh1R0paQ0U1bFo0NCtTN25LdVQx?=
 =?utf-8?B?QWp1L1czc0g0UkZjaGVkZ2dOd3pkWE03ZjlkRWxrTytmVTVWdHhGNDVhVWNz?=
 =?utf-8?B?WWZFTHFiNmRDcjhjMCtzTHUvTnlLaXhId3JvMW43NmdOUGtGTGF4L2ZTMHIx?=
 =?utf-8?B?SGVYTW9TcTBBbk4wVXV1RXZ3Q2dIQWdFS2p0aTF2ZmZPQktiS2xxL01xZHRY?=
 =?utf-8?B?OGI2WWppQlliUXdFczV1WkJOYjF1bWJFY25BQkF5YTNJM2lHZ3lLM2xlNWp2?=
 =?utf-8?B?Z3YySkk1dnJMaHZqNk1RVndvdThEaGhoN2dHYnhFTDVTdnRnckFQdngySlA5?=
 =?utf-8?B?WEtNclRKMlpsdlJJVEhjQXNSWlVjTWZEd2RCcjQveXlnZEovVVpQQi9FMnhi?=
 =?utf-8?B?OHM1STBzNzNPR0ZSR1QxQ0hKelM4elNZRS9qK2ZQQWYwSUFOWFVvSjJDZTNB?=
 =?utf-8?B?a0VzU01UR0VsNTBRYzhxRHp1Uk1vb3dZVDRzYnVRMjUrb3EwM1ZlMktPVUVn?=
 =?utf-8?B?cUJIbXBJMTNIVUpLVHNwQ0xRMXgrWk9GSkhmOFJXK3FDY0tBaDVZQlpVUCtp?=
 =?utf-8?B?bHdTNUtJVWN1aDN0WmxEN21odS9jVG1lbWRsUCtURzdTYjdVNThtTDE5T2RI?=
 =?utf-8?B?NENPN1RtcUdGa1J1UDQ0Y1gwYkR1OURyV0lEN3kvamhjQ0pmSFdmdVVxaGxn?=
 =?utf-8?B?Z091Mjg0UXVBWnlpZ3FyVTIwRE9BUFppRTFpSVBNeGh2MjIxMWZzSEVxRnZC?=
 =?utf-8?B?bkIyRktBNTRyTEZQUi9oYWtzYytIRklSVThqNWY3M2xOWUwybmYxN09aQ1dM?=
 =?utf-8?B?SHYvWFY0ajdVNTFsNGszV2RyVThTTmFmRENjU3lHeWptRmZFMzQwMzhRc09x?=
 =?utf-8?B?cDNZeFlNRlZYM1Z3WXpzeGVXMlhWUS9tZTJXeCtuLy9vcGJtekUvdDZGZ08y?=
 =?utf-8?B?SkV6NDFTakJiZ01Wc0s5cmRJdXFYQVlmbUo5TklZZzBCUmFzQ29OVG1mK0tN?=
 =?utf-8?B?SDB5Y2VBejZ0S2ZwS1hmSEJvZzA2TnZJaHNCS2U5SE5WSDBWMVBkQ1l4a1E1?=
 =?utf-8?B?NEFzTlVSamhPZ2lWbURnQmFaaExQdmtvQ1ZkNGNNSjRwTzZzU0g4S2M2eTN5?=
 =?utf-8?B?aDE3NHNQaWxaK1I5T3puVktLMDFaUytpK0xGcHJxVFVBNkVDRkM3VnBnaWZ3?=
 =?utf-8?B?OHp2SEU4aUI1aktRb21KWGhqdXhBOTNEVVRwVXVBc0FhSGlDWWRKYmYzWHJw?=
 =?utf-8?B?R0hHU2k2NkQrZEVQKzljalYzVzNSM3JPYml4TzJkYnlEZzVaNEJFZWdGWU44?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 088fb514-e180-4f84-07a1-08dbd3dcc2e8
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2023 15:28:52.7574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kasmWmHGeMTaGE6FDuafNU4ykI7NRKkt82mUItQEAdwhy5r8W05/Rypb8wRxTj58vmw9XaFw8kk7GDywbajk5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8198
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/lnl: Fix check for TC phy
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Lucas De Marchi (2023-10-20 13:04:48-03:00)
>On Thu, Oct 19, 2023 at 01:04:40PM -0300, Gustavo Sousa wrote:
>>Quoting Lucas De Marchi (2023-10-18 19:24:41-03:00)
>>>With MTL adding PICA between the port and the real phy, the path
>>>add for DG2 stopped being followed and newer platforms are simply using
>>>the older path for TC phys. LNL is no different than MTL in this aspect,
>>>so just add it to the mess. In future the phy and port designation and
>>>deciding if it's TC should better be cleaned up.
>>>
>>>To make it just a bit better, also change intel_phy_is_snps() to show
>>>this is DG2-only.
>>>
>>>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>>>---
>>> drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
>>> 1 file changed, 15 insertions(+), 14 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>>>index 28d85e1e858e..0797ace31417 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display.c
>>>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>@@ -1784,31 +1784,32 @@ bool intel_phy_is_combo(struct drm_i915_private =
*dev_priv, enum phy phy)
>>>
>>> bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>>> {
>>>+        /* DG2's "TC1" output uses a SNPS PHY and is handled separately=
 */
>>>         if (IS_DG2(dev_priv))
>>>-                /* DG2's "TC1" output uses a SNPS PHY */
>>>                 return false;
>>>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv)=
 =3D=3D IP_VER(14, 0))
>>>+
>>>+        /*
>>>+         * TODO: This should mostly match intel_port_to_phy(), consider=
ing the
>>>+         * ports already encode if they are connected to a TC phy in th=
eir name.
>>>+         */
>>>+        if (IS_LUNARLAKE(dev_priv) || IS_METEORLAKE(dev_priv) ||
>>>+            IS_ALDERLAKE_P(dev_priv))
>>
>>Just like already done with the previous patch, I think we should have a
>>paragraph in the commit message justifying s/DISPLAY_VER_FULL(dev_priv) =
=3D=3D
>>IP_VER(14, 0)/IS_METEORLAKE(dev_priv)/.
>
>humn... after giving this a second thought, I will take this back.
>intel_phy_is_tc() is different than the check in the first patch and
>it's actually something dependent on display engine. Here the check is
>about is this a DDIA/DDIB or a TC1-TC4? This will change how some
>registers in the display engine are programmed:

Hm, yeah. I overlooked that... But we are looking into the PHY
regardless. Is the mapping "phy number -> port type" really associated
to the display engine rather than to the SoC?

--
Gustavo Sousa

>
>        $ git grep intel_phy_is_tc -- drivers/gpu/drm/i915/display/intel_d=
di.c
>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_=
phy_is_tc(dev_priv, phy))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (IS_ALDERLAKE_P=
(i915) && intel_phy_is_tc(i915, phy)) {
>        drivers/gpu/drm/i915/display/intel_ddi.c:                 intel_ph=
y_is_tc(i915, phy)))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (!intel_phy_is_=
tc(dev_priv, phy) ||
>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port =
=3D intel_phy_is_tc(i915, phy);
>        drivers/gpu/drm/i915/display/intel_ddi.c:       } else if (IS_ALDE=
RLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (DISPLAY_VER(i9=
15) >=3D 14 || !intel_phy_is_tc(i915, phy))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc_port =
=3D intel_phy_is_tc(dev_priv, phy);
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_t=
c(i915, phy))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_t=
c(i915, phy)) {
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_t=
c(i915, phy))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_t=
c(i915, phy))
>        drivers/gpu/drm/i915/display/intel_ddi.c:       bool is_tc =3D int=
el_phy_is_tc(i915, phy);
>        drivers/gpu/drm/i915/display/intel_ddi.c:       return init_dp || =
intel_phy_is_tc(i915, phy);
>        drivers/gpu/drm/i915/display/intel_ddi.c:       if (intel_phy_is_t=
c(dev_priv, phy)) {
>        drivers/gpu/drm/i915/display/intel_ddi.c:               if (intel_=
phy_is_tc(dev_priv, phy))
>
>and particularly the creation of intel_tc, which we do want to happen.
>
>I think we will really need to rollback the port -> phy conversions all
>around the code and simplify it. While we don't do that, my proposal
>here is to turn this commit into:
>
>-----------------8<--------------------
>Subject: [PATCH] drm/i915/lnl: Fix check for TC phy
>
>With MTL adding PICA between the port and the real phy, the path
>add for DG2 stopped being followed and newer platforms are simply using
>the older path for TC phys. LNL is no different than MTL in this aspect,
>so just add it to the mess. In future the phy and port designation and
>deciding if it's TC should better be cleaned up.
>
>To make it just a bit better, also change intel_phy_is_snps() to show
>this is DG2-only.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
>---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++----------
>  1 file changed, 14 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index 28d85e1e858e..1caf46e3e569 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1784,31 +1784,31 @@ bool intel_phy_is_combo(struct drm_i915_private *d=
ev_priv, enum phy phy)
> =20
>  bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>+        /*
>+         * DG2's "TC1", although TC-capable output, doesn't share the sam=
e flow
>+         * as other platforms on the display engine side and rather rely =
on the
>+         * SNPS PHY, that is programmed separately
>+         */
>          if (IS_DG2(dev_priv))
>-                /* DG2's "TC1" output uses a SNPS PHY */
>                  return false;
>-        else if (IS_ALDERLAKE_P(dev_priv) || DISPLAY_VER_FULL(dev_priv) =
=3D=3D IP_VER(14, 0))
>+
>+        if (DISPLAY_VER(dev_priv) >=3D 13)
>                  return phy >=3D PHY_F && phy <=3D PHY_I;
>          else if (IS_TIGERLAKE(dev_priv))
>                  return phy >=3D PHY_D && phy <=3D PHY_I;
>          else if (IS_ICELAKE(dev_priv))
>                  return phy >=3D PHY_C && phy <=3D PHY_F;
>-        else
>-                return false;
>+
>+        return false;
>  }
> =20
>  bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
>  {
>-        if (phy =3D=3D PHY_NONE)
>-                return false;
>-        else if (IS_DG2(dev_priv))
>-                /*
>-                 * All four "combo" ports and the TC1 port (PHY E) use
>-                 * Synopsis PHYs.
>-                 */
>-                return phy <=3D PHY_E;
>-
>-        return false;
>+        /*
>+         * For DG2, and for DG2 only, all four "combo" ports and the TC1 =
port
>+         * (PHY E) use Synopsis PHYs. See intel_phy_is_tc().
>+         */
>+        return IS_DG2(dev_priv) && phy > PHY_NONE && phy <=3D PHY_E;
>  }
> =20
>  enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port=
)
>--=20
>2.40.1
>-----------------8<--------------------
>
>This would at make intel_phy_is_tc() match intel_port_to_phy(), at least
>for display version >=3D 13.
>
>Lucas De Marchi
