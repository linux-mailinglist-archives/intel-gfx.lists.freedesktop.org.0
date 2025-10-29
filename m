Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 356A3C1D857
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Oct 2025 22:53:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ECA710E85B;
	Wed, 29 Oct 2025 21:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HthrDLO0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1000710E85B;
 Wed, 29 Oct 2025 21:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761774820; x=1793310820;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+ldPJfFJSkDcBepooASI7hlgoF2cpiwljD3bmx4VTv4=;
 b=HthrDLO02zX5aD5X5XQr6dYDXYlsBqPHIgQN6gB72MTA0odEGMssO20x
 gB/ngWQ0X/gvZcNV243jzBExR1C8nHnX+VboLA1MVUMjA5v40orYjk5fY
 uixkzt8ADZXbuJivTKIVjPQ0tN4EQUGgaecQdii8vVz3nGZLDRLGKz7G+
 14tionU4h2pvMB7wh8VZ5j6UH1nYICmb+d7G1SLxe8hKVGfDhaVhNDC+1
 PG86DYyv/RJSiZ1ygsWzSoVT8pr2spowWsDshcfyuPtxVEWW9dWo14HUm
 E3i5C04b3aUFP+gR7tN2SbDoUY6C8GEiWJqxvQBI31FpWpXHkAjw/aK5E w==;
X-CSE-ConnectionGUID: PFbSVny7Q0iwrtkrhM2TuQ==
X-CSE-MsgGUID: OoB/gk8ERIyUmmFrjZ3YPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="63947123"
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="63947123"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:53:38 -0700
X-CSE-ConnectionGUID: jK2KNP9vQI+vmM6kANh4AQ==
X-CSE-MsgGUID: hMtilCJ7QIWjrxnVGHdwCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,265,1754982000"; d="scan'208";a="190948164"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2025 14:53:37 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 14:53:36 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 29 Oct 2025 14:53:36 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 29 Oct 2025 14:53:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qdTMTo2Iv/mD8V9V3ekEp1/LeI8AUcJKB1Dak6Hdj8fihoJIsdRDpeIAOVrHvJKHTm2yAyXpTcFiwumyZqXiW18ZNH/QM/RbZ0OGBRm0lTtpuwabdfxNPb4DwXQQx/u1kh97YCse/QKT8X1OS/Um1Ek1+0HjR39+enAUI7HvVv6hjj3UuuwNJ8+qEVLT+B8oOFAfZ4AzsDl1wa8JCYS09bVzGBt6pK8O8lVBurDTUFbc2n+C7aohxjm4N7bQ5c2+j/1PbPqbWWqtmHjQ8azN0Re70dFB7EoLbnGeciNmGBJRosLvrL7YQbbqPrsc7qGtWkZ2v2r1MceYrwoWPQtCuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KCFtdGGIXSy+u8q15WAZFWkTPyXAiusLHKCgcoHHrNg=;
 b=oYUjKKXeelHL1D5Hztz4/gN95nMSE4aGEtPqrjaxDZQ0eOnkOlPRCXIEslqnydARf2nxoB+W1uSnn6rsE/aua2bhaxA0IhFjYvcS/y9GmWwjziWTJPc+7pGKMIRd6iOxnxkIhi40Km8uFARboKJI+UD7wy2yK5l7poYCPXuoMEOIw7MymC7OL/t+0ZNl4kFfas5w/9lkcf1uacQH8+RFK9hJbTTtt2p58koiE6FPwgiANOQG6dppzy73zU0pTLnk9vccmQknBU8txTctIX/C+fVvIK+TW0rGdsdPGoyeDTp5/acSIBDLNtbfRW3A2vISr77DDMubDUK88s/Z3W03ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6335.namprd11.prod.outlook.com (2603:10b6:8:b7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.17; Wed, 29 Oct
 2025 21:53:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.9275.013; Wed, 29 Oct 2025
 21:53:34 +0000
Date: Wed, 29 Oct 2025 14:53:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2 14/32] drm/i915/wm: Reorder adjust_wm_latency() for
 Xe3_LPD
Message-ID: <20251029215331.GE2806654@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-14-10eae6d655b8@intel.com>
X-ClientProxiedBy: SJ0PR03CA0231.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6335:EE_
X-MS-Office365-Filtering-Correlation-Id: c14ccd6a-1c11-4ebb-e54b-08de17359b6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?2L2GhVY3MtPLqjw263K+1Ly4jGv+wezH781Tjsb6nC2PpQQzZw139n0GoI?=
 =?iso-8859-1?Q?e1+LSBIK1iAQ7Ru6+H/tVtzi7dEzEBsJrGbVrDK2DEqS05ygo/UV7wN4NX?=
 =?iso-8859-1?Q?yKMAJulX/z+Oiib9Ktjr9sfWUJajgeKtJTGuxRe8ur0YBvMBWrT5fXUMSc?=
 =?iso-8859-1?Q?5wyBd2E38fhUHzJ/MMMy38o6TeIsUnXXa9yYXNyUxl4E6cgX6PZekhcrY0?=
 =?iso-8859-1?Q?X84evy7v0CFzphx3Y0R2h9zV3AKEkx4mnYzAVBQU6bPUqsGTcodkiafRJ+?=
 =?iso-8859-1?Q?GJBJYMxItCk5PW5rM1l12xETxACxzEWywTn36rfLf7aL4yJezxo695d0Kk?=
 =?iso-8859-1?Q?zKC0BFWmdQ41WYzr4GMP8htsIflGuNaiVWVlVTw41qkUHaLMjvD4vGg+w6?=
 =?iso-8859-1?Q?dBmetgX3OUNUBsSSICFoqCEx37b11fcX2smJ5uhv51S5cLFGwiVg6mbYW7?=
 =?iso-8859-1?Q?UgGe9elPL7LB3FGyKNac9W0aJirKeh9rRYoDBii5BMwNXkBrJxSG50VvpV?=
 =?iso-8859-1?Q?RsecKrZgfDL70ZajJTV84VACvhsFa4mZrmA3YwOEfih/Y6dybsrlz+bxK8?=
 =?iso-8859-1?Q?TM0hxaTU9h0FybJRxgYdm7NIY1Htwv6VRR9i/6hH74KrFt5/BmkZ+i4H8O?=
 =?iso-8859-1?Q?cGQMTCZiIX/qGRk4o7ZVNgtwPfCu65XV5AKRehHJV7QnAT9jMv19U10L7v?=
 =?iso-8859-1?Q?wnYyko1TDEtWufw1Kq4Wz/klWvf5EXOI7Lw/2izkXYoMsU3SS0plhOE0gw?=
 =?iso-8859-1?Q?lhOatgNNTeTj//vkhM2w/YKUbCMA2zwNElWhuCBvgIyyWQfguYxbzMdwbN?=
 =?iso-8859-1?Q?VrD4KGio69v5PJd6IZvWKAfYSGXtnV0fB/6OAN/HWSzcq17ob0cYKCc1Hh?=
 =?iso-8859-1?Q?JWX8aesySkJY2a+79WUBrvBHh5b9UpLWaINtlcb2PRyubdUz6W5TspGPps?=
 =?iso-8859-1?Q?plFZGJHvp1ybDwKPpVJaU6NtyJLoEPIImcrJTEg0dzWrnC64hqNvlcuzPF?=
 =?iso-8859-1?Q?DDc0GkVuf3L2OXpzvnWyMpOEKw1FYE3yUfx0XCpP0JlIa+T51Fj/Q0uO47?=
 =?iso-8859-1?Q?VfqQZceBvQSyyDqTRUvZxUucZS3uoFgssPvS00mrhOedD+92YbmZc0Zlo3?=
 =?iso-8859-1?Q?tv5UECVZBir+AuqGAZ5ShhdKhveK7oi5Js+iO3CBmprIownG+m6cgl354c?=
 =?iso-8859-1?Q?A41hFdBYyquc91tD9P7gPqrnijCQx1B2y8I3xNzcUM14FmeAOgdFDGiiIj?=
 =?iso-8859-1?Q?IYLi9QYtlW8GKHOXwSGpAT7+rTY43UjySzSs2Rrry9ZK8Q9VMdENYtpa1Y?=
 =?iso-8859-1?Q?ZuaOqQZZHisRY4DprTACECm2yJF2rme0nI+hD6WfD3HdSte1JVuyt4Xgx2?=
 =?iso-8859-1?Q?DvtdVNahkThd6nNohndtHl1ePheKSy/GYTzJXJY3oxEtW6BGXB0nBDsjmV?=
 =?iso-8859-1?Q?aeHl6s8XJvV2e0nuwD+mQKYSFtDZZe3p21wr0CZuXP/V+nMllfmrMtIuRI?=
 =?iso-8859-1?Q?SuPnL5rrpmNBomtPoulTeB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?aod6kmcNFzw9jpUg9ZA6FPrhIWhKuADNWRxyF73iOa6PepDZ9ePQhBUVRZ?=
 =?iso-8859-1?Q?NHdCdfB5RwDxFhI58wr3nYL6GyKgKP/l+EYdZm/kUH9Fg6enEORTdBVl6a?=
 =?iso-8859-1?Q?au3xWsiCHWyzU/bvc+rgQM5u3vjn8nAfaLT/1AI5e55r0x1kW1B77evFWb?=
 =?iso-8859-1?Q?gviVXtKOnh9Sxx4Iv7LvHhjvwOInWCSkQBEedYoFi9I2FPIZWCCIx6Gevg?=
 =?iso-8859-1?Q?p7dKsQDqYzhrzzpl1V1Iyw/+S/MH3vvEuWHMz/p8C97yas2C8u0jHjpOGj?=
 =?iso-8859-1?Q?Nr3MIhqM9RFxmYAB/v69O20Mu+M/Yj1p8WDVAENisrNELQB+ennWynsf0j?=
 =?iso-8859-1?Q?blJFdU9Qn9Y1MWBRKI0MH8HPpGdSfOzcwVORGYOl7xOCwlLrrY34Pck8V4?=
 =?iso-8859-1?Q?pBY+MvAdX61zI14MyNiXSHoQ9ZOiTpTUHqugOrnXlcGnzY9Y8tUbBdNqXr?=
 =?iso-8859-1?Q?i2XziCp3KPz7HOw1avNf/chfsZCh8JIZ9FRBC9Xu2uBJ2IEnUBuuMi7EY+?=
 =?iso-8859-1?Q?LwvK3UyUdBPC0diQran748mtKtxEd+yJzWste1daCPUQhWux01wSia7GQC?=
 =?iso-8859-1?Q?pSh27J2oz8AZ9n33BmwKmFWTxSsNzVSPcZzyaGSH4yDY0LKS1B7S5qgKLS?=
 =?iso-8859-1?Q?0KQ6GalBAqGUeNAZaWiBctydfo5BwJfgTwHfGudMOxWzm1JhjBCrl/tS4O?=
 =?iso-8859-1?Q?U+RfyJVx26srCboJpDJsEt5oni0ySKq1kaNDrbeQMkNFChJgBvQC/8aCrq?=
 =?iso-8859-1?Q?eDyrhe3bilfvJQV+K4NDUu6SWuBXN7hME+4ydBWl8pYst/npoxA593GCsX?=
 =?iso-8859-1?Q?QKFVJk5PtSQRqmC/u/MNq7VsjHLW/+axdHJBbNRAm9SzBerxBS9NRUJpVx?=
 =?iso-8859-1?Q?0dG4hkcME1PFc5sHynEyzwU4yXHbXs1mKhIKuhdDo+uVld/chiSsTkDUKc?=
 =?iso-8859-1?Q?Xfhcb3QHzGkdXrR4QEiChQmhNBYXyscbzb0vpy9yd+zpeBtkCeIj61yksL?=
 =?iso-8859-1?Q?rJP3Se+F3/6tPT6p92QC+wj57Ezz7dT4vHgCcTOKfiQWFaJbmwkbN0ap52?=
 =?iso-8859-1?Q?7/c2l9KOrJjd69J5quEZeHj8ND7GL2Le+APAPoFfxap3P+v86gzNDAH/Dm?=
 =?iso-8859-1?Q?EDaIeLY02kjG0DgPzy58rUwFm3cL2biqloU/V6Xe9p+le+nOZMS8EPZ6oK?=
 =?iso-8859-1?Q?9W4B+bHn9Qix4Q1nvNLebfEeiwebGHnsWpHa3XPkC2kIYpc85moEz1Skx7?=
 =?iso-8859-1?Q?rnO/kYbKbKVbNFiz8OWt4f2QcotI6hk3cvoHJA3yxkBqR/9//TtWVoTvDr?=
 =?iso-8859-1?Q?cTt5flCuRhgKySQgsvDmek94x908Ti2rifu2P4gPfCu/tppY36S1ye9Zyi?=
 =?iso-8859-1?Q?9cdBwH3kvwBfMHHbEPTgZd6bFDYruNqOcODu5J6gSwZJGkm8lQd0kawLTJ?=
 =?iso-8859-1?Q?RVe2f7Oc3t9s2WDpl3LZGN0axTHyffA/JFda6KnGUIHX2rmkcxWzD6Xsh9?=
 =?iso-8859-1?Q?OPxMTOJiFNg5b5fVJbmtsqHN+31B3IqK1B5Br78/jGOPGSLuVCZu9y+KE4?=
 =?iso-8859-1?Q?kBJ+D2iuuBmMZrmU+Rp/gnWI1RA4uk7HRiJiwcp4cYHbppLr1we471saNB?=
 =?iso-8859-1?Q?qRkHf/v2csVxOam/V+nkx99HS8vIg8rbwmsCNljqN44PD0wIiMMZHQuA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c14ccd6a-1c11-4ebb-e54b-08de17359b6e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2025 21:53:34.2808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VgDIij9BYxL94Mdz77n+/2g8A+ytbjKQ4xrTX09pbigL3m+VncXgJFlHMz0Mi4Prl5uhJV2C8Gn5B7K4ELH3/d8gtF74CIvTVZdPPgp4T8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6335
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

On Tue, Oct 21, 2025 at 09:28:39PM -0300, Gustavo Sousa wrote:
> In an upcoming change related to Xe3p_LPD, we will need to (i) update
> wm[0] in adjust_wm_latency() and (ii) do the same increase_wm_latency()
> that is currently done when (wm[0] == 0).
> 
> Because make_wm_latency_monotonic() depends on wm[0], part (i) needs to
> be done before it gets called.  In order to keep (i) and (ii) as a
> contiguous logical sequence, let's reorder adjust_wm_latency(), making
> make_wm_latency_monotonic() the last thing to be done.
> 
> Also take this opportunity to simplify the code by doing the call to
> increase_wm_latency() only once.
> 
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index c141d575009f..57260a2a765a 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3213,14 +3213,13 @@ static void
>  adjust_wm_latency(struct intel_display *display)
>  {
>  	u16 *wm = display->wm.skl_latency;
> +	int inc = 0;
>  
>  	if (display->platform.dg2)
>  		multiply_wm_latency(display, 2);
>  
>  	sanitize_wm_latency(display);
>  
> -	make_wm_latency_monotonic(display);
> -
>  	/*
>  	 * WaWmMemoryReadLatency
>  	 *
> @@ -3229,7 +3228,7 @@ adjust_wm_latency(struct intel_display *display)
>  	 * from the punit when level 0 response data is 0us.
>  	 */
>  	if (wm[0] == 0)
> -		increase_wm_latency(display, wm_read_latency(display));
> +		inc += wm_read_latency(display);
>  
>  	/*
>  	 * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
> @@ -3238,7 +3237,12 @@ adjust_wm_latency(struct intel_display *display)
>  	 * to avoid any underrun.
>  	 */
>  	if (need_16gb_dimm_wa(display))
> -		increase_wm_latency(display, 1);
> +		inc += 1;
> +
> +	if (inc)
> +		increase_wm_latency(display, inc);
> +
> +	make_wm_latency_monotonic(display);
>  }
>  
>  static void mtl_read_wm_latency(struct intel_display *display)
> 
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
