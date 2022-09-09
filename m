Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5847B5B405F
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 22:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA7E10EE22;
	Fri,  9 Sep 2022 20:14:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 414D010EE22
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 20:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662754448; x=1694290448;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JPF6O60L2bhXF5IKt3P/uKmlyH+ARrLnQpDA/k6eGC0=;
 b=VNnCdvKYlTZlSNLAKWKGi5PSj8TgCV0k4E2l1CpwOV0oVvarMOMR/ixK
 M8EQHqFcZ78WuBIUfM8p7iJq3eZMWTwjFMP3mZX1YEGSqzBIgaUUytzXT
 udc4yRZ5vLaUDvUCOdKOO39MdvOmobgdzy5ud2XIfjQiULNp+n3eZvJTm
 mjr7Qp7y4akZP123wLVBKqIFYXLxWL/hKvm4yaxbUqCgLUqyefncR0B/P
 /VI5ZLu5YrHmB58alkIff2hObrNDPV1QN5REEJfGbO46hOXezNE9c6WyQ
 k0tWPuEcvy4VN7ZFprXBk3fISZn8dPMvfWswqyjkZZh0n34SIfCYddmz7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="383858620"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="383858620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 13:14:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="645671357"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 09 Sep 2022 13:14:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 13:14:07 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 13:14:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 13:14:06 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 13:14:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jS6/uF1LWVP063t7KuuWqkWBsxN0c9svYKSGVsvxRGD5Chfzwx/m1qMIRmM6W42GWhEynUjMl9w89vHfOlXRil9qZihTpfUmddKZ9hvYWt1IX/KNtCSWOAXfMXfdqKpI+juN6Hj/XkjccZM7NfHTJJNphTe5s79hec8ZF4Py3rI8QhlCzDKwtkCLCMoVAbt6rVXfSnq1ycHtThbj0wtVjsaQ1iJ2zeqBF6wnUVZTbzwBZMovgXZhAdFMXMPy8JQiPemivBoWBEF1tj9MBWPrbK0JiPM7dSjgzbTQKLmm6K4dkQHuYg/euRuJK6Kip1A2QHhvQ3AFXEz0DMCHzEDHmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sER0Jr2J/DOmPlRSNIyCCXrFt4+mw65FXwExwHUYm5E=;
 b=BEpEXUQkgegV4/6/o+3Gotkqp8SnmF9xC0c29wD/GXUSZr/YqtwdNQESaLhN3mxavJaYD0NhTDpYW1DdGQ+D73inSCbBk+fAZ1Pm1SCybKy4wvt0gLxgI0GutCKWaglgEK4PKfDZvWkDB9ZCvUJRsGwLZd4NSXaWOff4sdITEaYnD0LzaRHPaBUupnE3zYU2gJ5Wsg7F0+X7HqqoLCXMMRuN5GGftCyG5XQr5sHH/gMdos3cgDlq7+17EdjpBR0t/n9wxJt3UNFt0XfeicdNa1oXyuqwuc9Z/eucQqd0AQUGD1fRlWoL21+RfNfT7tIGyEWQGN8rGpMUcr6aLDPTxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Fri, 9 Sep
 2022 20:14:03 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::ecc9:50cb:5951:2514%12]) with mapi id 15.20.5588.015; Fri, 9 Sep 2022
 20:14:03 +0000
Date: Fri, 9 Sep 2022 13:14:00 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <YxueiCfFJh0W3M+r@mdroper-desk1.amr.corp.intel.com>
References: <20220908155821.1662110-1-ashutosh.dixit@intel.com>
 <166267032566.27232.8599380995763114662@emeril.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <166267032566.27232.8599380995763114662@emeril.freedesktop.org>
X-ClientProxiedBy: BY5PR16CA0033.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::46) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9cdd0f4d-b68e-43ed-3297-08da929fd72c
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4896:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tp7GvK7TDO0wfxxu4Bp5Vie5H7aGWl1PS/yLLuVh86nEO78SJyA8QpS1RL2jspS4+9k4loCpojcNU+WJi50hXBq3zB+ICYf32LKXB4DD2AaS/uoWIIodrGQ4Ye0OPbZv0Gp4ZYBgPWWMRi2A5cTazB/PVJjcHNzyS3/uj7mRV9yvHJNI7JPwDE0hMXge7UmLFG7YQ65xAeIlwxNreNB0IToMPrrv+FFfx+IdfGpi1Y1h9F8vdJL65gHkZ3KJOSFV0Af2jNODeqcjeKHnDLh6P2hIi25rVmPJl3JOZuYG3qKrz/lzzvoRZ4fqSRnCxGcL3Hel+T5S6GOX2Tf2qWaQVSUa/CjJpGrcZhukM3I3bLN7CJ8XUYGVmDyAmgZiUL2VIEPxNc0/D85ZtrfL8SZSVmvy83b8EOa9OyCvSX5Ap9In8PFG3zZvbm9E3r8oEnCB6hI9vacf7AizVmvYBtCb8GWAHzIujtu5nXLKuIVCVvrbqzoxQPZ9KzQ5CCwJ+MXiB06BIS8xP31/UOuhJPBt6kdPDtj2cDHz6vJHk2QlHCg6HOfzpGFaCNYnj/o44xpgDuzP9V9XO5hQJ1unMwo8I1NENzUWXXO4uTKpzrmXCHlgHb0DBvLdMbNESjW2GznftEnupQcWWKf4pZR4i2F3FqGsJzxAeFtHKFOAHbeMNPqbj4MyvcUFv6sg8QB2MXYkozNrQQdYhwvMKbceJ+XOZLPBwpNjz1rv37G74OZJQMVAPpF2qq/D0n46ZZ60Q7S/2ck7pEk3KH14xxRdwo9+ICUZthqd45Vb3yr822LUzRBhU0rgr/YfZeoWxqoUe14c
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(39860400002)(346002)(376002)(396003)(6486002)(186003)(966005)(41300700001)(478600001)(2906002)(82960400001)(5660300002)(66476007)(8936002)(66556008)(86362001)(30864003)(66946007)(4326008)(83380400001)(26005)(107886003)(6506007)(6512007)(38100700002)(54906003)(6916009)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pCX0Sp3qZZSUFk3WFUS+pqxpFox1Y5rfMqFVSlTOEYGLTZibk2EZE4ztFgxJ?=
 =?us-ascii?Q?S8Vr0cer+9uwcVSL7SayhU9GdOlruCeegnbvpJHbiC51AhaB6g9LWyf2LRIa?=
 =?us-ascii?Q?UdK/DOcbeNGEgtAX4hWDXSDLCDEV4ipuKiBn1wDU1f32wYlibkcfcS5F0xJz?=
 =?us-ascii?Q?+6h//ZlScfvaQthEfWHsKtdt/w2vzqbIyd+OIkJ0dzkl1dzD5pYcW1UmZiBj?=
 =?us-ascii?Q?9Au66gFWH7qjYrH1+eyVLNLK+h1g2jBgZuWoV055jdV319AYZt++KIzM/tnk?=
 =?us-ascii?Q?3ERsrs4WF1CF3h1vpj+RLjS0ndiFMxS3ZPRN441k7jZ5KvwLy0RLOtsHku7m?=
 =?us-ascii?Q?RBXmFHmQLBtbv9lzgGd+7YWykBYtTyTzktCYPu2MhPAErQbzNrgCni6X0rO5?=
 =?us-ascii?Q?xvFw1VSQ1ZLBOtPqOf5vBG0QVmO9qV/moRgUYQtCuxjrX1QIHNISeNtwNuSw?=
 =?us-ascii?Q?wb3HSMsLt305251K5vblvq58mC6r4b7r2/cwr/ub5CZ/EVWFybTM/kAGwfPM?=
 =?us-ascii?Q?mRUz0HAzTqfdOF3hRxtpKT0dEiewlOeN/AdNf5EBcW/jwJp/mzAUt+1gVrJz?=
 =?us-ascii?Q?uY8O1ZlKGiELUIXOxi0LP96XORZubh+2mEUQgodilUdKcYML/08V7GMTvCVb?=
 =?us-ascii?Q?BcEmlpbQETrQ065Ffbq2iwZ0UbOkSBrjJJRu49x0INKBe05DkH0W87gSkCqZ?=
 =?us-ascii?Q?5K8nX/76RGEPyo6xD+/pGheN3P7GaWTnR8g+DKjC0LCOvMeLiDAyaAOzLa2i?=
 =?us-ascii?Q?0BnNrubUZwf1KtOAMLrGRWCyp1/HaN+Cp4i4JUH1nlq66hSNgqylG5T1RSWV?=
 =?us-ascii?Q?OTu+GqBHE25yCf7i+cKQqLeRTwRu6zkVhBuaQy+6Fh6UUCt05+YYydpGYys8?=
 =?us-ascii?Q?rA2RRezFVpkq0+DQiYLjbqEPEAgZJ7gIS2MEcnE3+sRCX+KtMyrSoyiHMCfi?=
 =?us-ascii?Q?Vhfob60CDzdJluLj0LCZwqilWZmyZ/WUF/p/ZyXoa8z2Bhyiyu0iciUACyFg?=
 =?us-ascii?Q?MpHcRKgdW5fwtGUBRMt/gFBQgLLoTwbChf1ilxGWpnZBswFNI3NeXiqTGoPh?=
 =?us-ascii?Q?eEHH0otvbTCM/r78tusq8m5yw3lE4ToTwSA9lfJEHW6kKT99xeM7a3xLpoZj?=
 =?us-ascii?Q?61du1QmhRZECM9cc3PQpvwsqxBjVDftdij8XTVxxgMUJf3ZhXVS6MfW5iMc/?=
 =?us-ascii?Q?wyin2GRR+tbg36n+BvqdjWpRRephnT3mPEM32z+UGFgeV3FVe/znT+HuEHsS?=
 =?us-ascii?Q?fSgd5irl9CPMiz7KRsP8DOC0kgK1SFFwS1Jqf96xotQXJsI7z/t2+VE+5BAe?=
 =?us-ascii?Q?nwN2VV6LcZ10S4LA3xj0UnPXRq3UoLh3gEhhUc4V1I4SOW41UAiUF1fm3mcJ?=
 =?us-ascii?Q?kgLVn2tJAe6/DaG32i9BUYTou9QCGjOQW3Bav0Zu1uGkBB8U5uXB9ha0UyHC?=
 =?us-ascii?Q?VMA2P5qgUGvPTvrrjoXMVVVqyLuNN9SL7N51I9xHzicr2/YDz50c6seIrupW?=
 =?us-ascii?Q?bWEKmH7hRn43LMvdw+PRSDDTaPM0uBOIwmqEV3oFMr+c9c2HKnJKAjC/018X?=
 =?us-ascii?Q?mpDZ9skvNh/IR2UtdDaIne81MqU47SV1hp7J4mUd/e3E/BYpJWbi7eFqgyRh?=
 =?us-ascii?Q?IQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cdd0f4d-b68e-43ed-3297-08da929fd72c
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 20:14:03.6612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPWZXOYdTcc0Bm4d4Sx7zR4ygxpWRsvgMwf9YJdQuoHKM1qPhAs4AYqNUq1rImsgS8jkm8NcVd5SSboYmOvIKSQo0I6x4WirP5QXbe+cOAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Fix_perf_limit_reasons_bit_positions_=28rev2=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 08, 2022 at 08:52:05PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Fix perf limit reasons bit positions (rev2)
> URL   : https://patchwork.freedesktop.org/series/108277/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12098_full -> Patchwork_108277v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108277v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108277v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_108277v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_rps@engine-order:
>     - shard-apl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl6/igt@i915_pm_rps@engine-order.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@i915_pm_rps@engine-order.html

https://gitlab.freedesktop.org/drm/intel/-/issues/6537

(filter needs to be updated to include APL).


Applied to drm-intel-gt-next.  Thanks for the patch and reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_108277v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [FAIL][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4392])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk2/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk3/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk3/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk3/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk5/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk5/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk5/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk6/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk6/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk7/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk8/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk8/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk8/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk9/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk1/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk2/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk3/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk7/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk7/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk7/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk8/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk8/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk8/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk9/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk9/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk9/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk9/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][53] ([i915#4991])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@gem_create@create-massive.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][54] -> [TIMEOUT][55] ([i915#3063])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-tglb6/igt@gem_eio@unwedge-stress.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][58] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#4613])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][62] ([i915#2658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl1/igt@gem_pread@exhaustion.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#5566] / [i915#716])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][65] -> [FAIL][66] ([i915#454])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl2/igt@i915_suspend@forcewake.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl1/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +39 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-glk:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl1/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
>     - shard-glk:          [PASS][73] -> [FAIL][74] ([i915#2346]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
>     - shard-apl:          [PASS][75] -> [FAIL][76] ([i915#79])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#6375])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][78] ([i915#2672] / [i915#3555])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#3555])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2672]) +9 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271]) +12 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-glk:          NOTRUN -> [FAIL][82] ([i915#265])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
>     - shard-iclb:         [PASS][83] -> [SKIP][84] ([i915#5235]) +2 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb1/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@kms_psr2_su@page_flip-xrgb8888.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb6/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_render:
>     - shard-iclb:         [PASS][87] -> [SKIP][88] ([fdo#109441])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@kms_psr@psr2_primary_render.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb7/igt@kms_psr@psr2_primary_render.html
> 
>   * igt@kms_vblank@pipe-a-accuracy-idle:
>     - shard-glk:          [PASS][89] -> [FAIL][90] ([i915#43])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk2/igt@kms_vblank@pipe-a-accuracy-idle.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk6/igt@kms_vblank@pipe-a-accuracy-idle.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2437])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-iclb:         [PASS][92] -> [FAIL][93] ([i915#5639])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb8/igt@perf@polling-parameterized.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb8/igt@perf@polling-parameterized.html
>     - shard-glk:          NOTRUN -> [FAIL][94] ([i915#5639])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/igt@perf@polling-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-iclb:         [SKIP][95] ([i915#4525]) -> [PASS][96] +2 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][97] ([i915#2842]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][99] ([i915#2842]) -> [PASS][100] +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>     - {shard-tglu}:       [FAIL][101] ([i915#2842]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [DMESG-WARN][105] ([i915#5566] / [i915#716]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk5/igt@gen9_exec_parse@allowed-all.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk5/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][107] ([i915#79]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1:
>     - shard-iclb:         [SKIP][109] ([i915#5176]) -> [PASS][110] +1 similar issue
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-formats@pipe-b-edp-1.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +5 similar issues
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb1/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-tglb:         [SKIP][113] ([i915#5519]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-tglb2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-tglb3/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-iclb:         [SKIP][115] ([i915#5519]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [FAIL][117] ([i915#6117]) -> [SKIP][118] ([i915#4525])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][119] ([i915#588]) -> [SKIP][120] ([i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][121] ([i915#2920]) -> [SKIP][122] ([i915#658])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb1/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([fdo#111068] / [i915#658])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
>     - shard-iclb:         [SKIP][125] ([i915#658]) -> [SKIP][126] ([i915#2920])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         [FAIL][127] ([i915#5939]) -> [SKIP][128] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-iclb1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][129], [FAIL][130], [FAIL][131]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][132], [FAIL][133], [FAIL][134]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl6/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12098/shard-apl1/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl2/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/shard-apl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3810]: https://gitlab.freedesktop.org/drm/intel/issues/3810
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#426]: https://gitlab.freedesktop.org/drm/intel/issues/426
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
>   [i915#6375]: https://gitlab.freedesktop.org/drm/intel/issues/6375
>   [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12098 -> Patchwork_108277v2
> 
>   CI-20190529: 20190529
>   CI_DRM_12098: be32ae92a328265c2e49e459259eaae3b5f6b754 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6648: 3c9079c0b97445fbfc903b9c5a1d69707b80af80 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_108277v2: be32ae92a328265c2e49e459259eaae3b5f6b754 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108277v2/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
