Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9086EF53E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 15:13:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE7E310E03E;
	Wed, 26 Apr 2023 13:13:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3635610E03E
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 13:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682514815; x=1714050815;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=A12MEhaFTuVfAe5T8c9V58h06Cp9owJna+BaaXIDmDQ=;
 b=ndPzXmpByRyVxBcuMPNm455PC1mjteuPDcTz2r8pSaMgyVkrjIqd4I+w
 zeE0QjRGZBvwi0FDK4tn0AI3rysR+qNiWHdk5ayJ8FNyicQKLcOiQdej6
 zoa3v+IZcIMzF1jgJyU2mUqVcnS2p9kExf+sjKjXQ0mLhQktBkHU+qq/z
 9pGmrqvY8tTqamq1tcmPfSjUaWVtYQXuQ5V8XDiTElgvdvMcKJDvWYFV5
 Duu3Iei8VBfth8bnKbqyqdTNLIK9isjb6dMxsYpWBHZseBfWhAX173yeB
 eduHwzHmHSuuAUG3dyUgxVcDdz8Nh8uatHv33t63ceWN+l6W+UwOlrHME A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="326702501"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="326702501"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 06:13:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="671338475"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671338475"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 26 Apr 2023 06:13:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 06:13:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 06:13:32 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 06:13:32 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 06:13:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j5OvlpLkjwcORV6jtgfiYyshWQb/H1X4hDcY2Lg4jSTqSExWbh5qOi/5DxWpF4HZ8NG5BhmYTiM4Ui6Ky4BuwmArSUB8NBIpJrzGm1VOffZr1d92Zt65qdmbL3sQDe86DSxD0BV4tnKo4wPwk1T8P6OKUhxIVH856Q4SuI09ljHkeu55bKj+LbbsfiuUQTZAOYi9Yi+1VkF/BV6JTff3kjZCY516m6G6T+dHV2OahdRRqtRK7FycsvAF/CUbLXmpjQCo7EbCvxJ6lYQrfMyhocZIwWrTSbfpW8+FBumibmHGVjGz8k2kMR198h1MvQYaB5UuU9yfQypQEI5+mi9Fmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UxKwsi9EQkbmz3d2IW9UgMrCJuYE+apeHGtuaFfAmDA=;
 b=fJ4+blv7RdD/FfjKV5cRX/6fsQne6EfZFgzoI8x8TD75lMupeKbnZHU3ZDbiCdiASCBk9GwycodKAzHkUNi8LJbON/tPTRrwdaGnew6EHYTpvbTUtGkCQciRf6srs3TO1shOgfmid3PbK4XpYvd12T+3Ehq7tccPDFdW8wiggKX07LYB8d0ROEPpwesdsINr01k8XfFwYndXKK6SpLXhL5ASoWzMl0OcnXGQh3pZw57LXaJvWXxnybkuUNf58f6/sB8lEqqqLZAX9vXFQNuai7j7CBSxb/kaUaQuZHbT5S7Jn3LkRVJOl6hwy6rn//AJvEnyftc2Gxr9P0o3Jtittg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Wed, 26 Apr
 2023 13:13:28 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6340.021; Wed, 26 Apr 2023
 13:13:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230420221248.2511314-2-radhakrishna.sripada@intel.com>
References: <20230420221248.2511314-1-radhakrishna.sripada@intel.com>
 <20230420221248.2511314-2-radhakrishna.sripada@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Wed, 26 Apr 2023 10:13:23 -0300
Message-ID: <168251480380.2664.2798787710641823280@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR08CA0053.namprd08.prod.outlook.com
 (2603:10b6:a03:117::30) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ed4999e-0788-4ffe-407e-08db465806a7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1/iEfXyQhDJWFnMhLXJvZOK4gr8931musKMcZ4mDT539TYX4zpbsH02A7OTN71H7Z9N8yUfmrF+QJuVJC6iwkDnUHoEOPlFxmVldvQIaQcmoQ86iuXZxgUyw7ub25jtf9CtTz6hgu/4QPxyu+dKQHny5HPgU8qmQjQ2VeXjquhr0ZY0Y0WYKtjAfu8fcrd18U0qQH3C5jbzPg5iRCY3o5NoecrbfPhH7pu2h9P7sB8KpzFV40xcWrl+aE6FQ/DleJnkQRR4upeDhzsLD+gbVBYqn2o1eJ/Qloou5xj7Y/70zuvYYeUq4QtA1dR9A3bnGw9Z2mwYg2QTVSKM84/pXFbcZi7PnydxI/1nZn/5KmLw7xvK7h5xjawVd1/tAYQwLgg3EWwFT0qmy3GSWV3o28kCmP2Gjjd0KVCR+nLxtixEEYMKJFK6j23Ow5hInIcoG3ORoQdkIIqJD4N7KHA56wiN0GjMyzDDSzJK3mWkZ1U9xdRFjvtmrBGs7gEEYC8PJNMqqQHMT11wCK8jPXJLvry68QagTM5vBa+/afjYvToFgch7Jm5VK6/OSP0rqnwYk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(396003)(346002)(136003)(39860400002)(376002)(451199021)(41300700001)(26005)(6512007)(9686003)(6506007)(5660300002)(82960400001)(8936002)(8676002)(83380400001)(44832011)(2906002)(38100700002)(316002)(66946007)(66556008)(66476007)(478600001)(86362001)(186003)(6666004)(6486002)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3VQOGtuck4zK3V6bFZZUEdYZFlZQmlZeE9NTll2cGdoQnlzRWxvL1Q1dUw5?=
 =?utf-8?B?WjljbUNpVk9TVDhLWVZMMXp6STRpQk1vaTA4NTAwVllSTzZEWHdGL3FQVUxP?=
 =?utf-8?B?a1FWRno5VE9LRG9TRnVrSllNSUdONFk2VHliRTJoV0ptWmNxY2VmRFhabWti?=
 =?utf-8?B?dkJtM2pKTUk1M3dPRHlGdERFbitWOVlobDJwNHBzZDFEdEFyV3VRR3VjYzFt?=
 =?utf-8?B?WXYzeUxTZGhEaVBETGJ0dGNsVU41LzVzT3o1c3dTSkd0R3VNVzFSMDc3a2N5?=
 =?utf-8?B?QlRlMXExbDhSQ1JFM2Z1NWVoRjRXVkZrL2w2TmZ2UHI0UGM5ZE5jRFkwa3Q5?=
 =?utf-8?B?Y0MvT3NRcC8vcVVGa1RFWUlWRk9DcHFwdzlia3BuV1pRUFM3cVlnMmVmNG5F?=
 =?utf-8?B?aVQwd3hlS3k1em5ScGYzUDNIcEhpZ1k2QVUxa2VPUXpkczZQTUVqRWxjN2V2?=
 =?utf-8?B?dVVXMXVKWDNyNXkzZGppbkRqRjhSelhiOCtaRU5FeE5FYjl1S3g1UW5IdGtr?=
 =?utf-8?B?cjlZcjZVdElyekliUmJpRzF0RU5OVURrYXRkdGx2cFB3ZHdnSmRidWlaRy9z?=
 =?utf-8?B?bDM5cjJQU2NFSEpEZUgvMzBKVmtQd0dUVW41OW5RZjlURkNNeHRTVG1CRm9C?=
 =?utf-8?B?eFNkSmRYeHVQSGI1NnA1dDZxZTdPNHJWa2RFbFJYVk1QQUY5dld4bWZaakww?=
 =?utf-8?B?MGhCZ0JSNUkyaWhNQUZQLzhhTjNrZTBaUkl5b29LZVBNYTB4R3UxSzJRUnUz?=
 =?utf-8?B?L05IdDFNQ3ZZQjBEWnE0Z1ZLYmNiVXVPVjgwR0ZEakE5blZnNGxwRld2TGhw?=
 =?utf-8?B?UUZwcC93R1ovckI3cHZ4aUFCUnVsWk93SkRwVlZTVERSVUtENW9uZDY2VHZU?=
 =?utf-8?B?RWNheTRVWk44TE9NYWV6Q2ZDbTI3KzdKL0gvTCtZUUozL0pWbnNuZDRsZG9y?=
 =?utf-8?B?VlN0UDdUakhSUkE4STJvMm9kMzZGVmtYRXgvVGxPNG5xZWZuRWdvZ05wNEVt?=
 =?utf-8?B?SVJOemRBaldKcmRnSmpDRDMrcnNIQ1JYb2pHa3FFNk9peElQQjZLNUxmSVNv?=
 =?utf-8?B?RmY0bVZTSmF3OGR6dU1UUzdKa3ZLbFVXWGZQZnFEbmhyd3NjdVRRU1dzN1pH?=
 =?utf-8?B?c3ErSkt2YzBmUS9zR29Yd1pWdGh5bjMrNjNXK3dwWE90U040V2wyNW9XVFAy?=
 =?utf-8?B?OFFKa0RKNVYweUVJV2tsNTE0TW5SNzBjenVRc0YzUnprTVFyaE9XS3I0emFC?=
 =?utf-8?B?akdIM2JETGxlempzZzF2djhLUFcyZTQvTWp1ZTFaS25BKzlGVmpia3N2YWRQ?=
 =?utf-8?B?ajY3bDRILzlOREZFc0xjMllKOC8zTk1WQzVQZWFuQzMvSGozVVRMK0RMRzEr?=
 =?utf-8?B?cGFRWXdadWpRaTloWWFzQk8wMGZYUjZSSGEvMzlNQ3M5QlpXVnIvR1BzTTEv?=
 =?utf-8?B?UlNHRkZEUEloS1FjWStkU3BFcmdlSkJqWHRJRXB3UElISmpEbTB0eEZZcWo1?=
 =?utf-8?B?SEU5RWVobVRSOVdMNHFxT1M0M2hRbURmOVc1di9hOGRXNkt0UjYzWnc4VkZw?=
 =?utf-8?B?RmNob0JZMGsxNWlneGtvYjFaRThtd0lLUXRaeGxjWWpPV1BDaHBjSFZkMEhX?=
 =?utf-8?B?dHZDaTRzRWxrVFNCczlOcDJUU054WVFhZWVMZEJaM3d1SzV5UmtHM1NVMXJT?=
 =?utf-8?B?ZjV0VWswa0xESzJaUWM1OEhtMjlPQnFSQzlQL25mSW02b0cvd0hXb0pnU3NE?=
 =?utf-8?B?eENST2RLZHdDam9saVA0UlNYVThEa3JGdWdiRHROUUtDRm9TR1Vsam5DU2dt?=
 =?utf-8?B?N211ZHN6TWVVVXhLUnVsUElHQ3lnbDNvVDBqU3NaZnFwQnVxMzgzTHVuYlYw?=
 =?utf-8?B?Z3d5TkVWS1NxLytaeS84SC9pUFBrMVI0akV4SkpJMDI2RlJtak1Ba2o3QmNt?=
 =?utf-8?B?dGZiWkNQdWFUd09iYzZmditGb1dtWTY3aFlHS05Eb0o0aGs2bStGbXgrdnN0?=
 =?utf-8?B?OFFzeHZLTDhPTFhBcEFOYW1oc0J5b0dQU2JoT3g3cVF2RDVhUXZrTGQwUUZ2?=
 =?utf-8?B?Skl1Wk1rNHZaQUwvcVJ2T3dkZUtnQnFHYjI5UWF5a1RXQXJEem15Wkl4aDVU?=
 =?utf-8?B?RFVmSEpwalc0VzhReHJyN1d1a0R6MDg2Qm9sMlFlb3RhK2FsQUpGdzZwVmxl?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ed4999e-0788-4ffe-407e-08db465806a7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2023 13:13:28.7553 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qaSFql0Z2Gocv2zf9E0Bw9EzYVcOCE5QucI3xlr0KsJRCTKCxEBI1Yzzb9+6tDLQCJb3quIRd2rPVkoi/acEoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Copy c10 phy pll sw state
 from master to slave for bigjoiner
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

Quoting Radhakrishna Sripada (2023-04-20 19:12:48)
>From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
>We try to verify pll registers in sw state for slave crtc with the hw stat=
e.
>However in case of bigjoiner we don't calculate those at all, so this veri=
fication
>will then always fail.
>So we should either skip the verification for Bigjoiner slave crtc or copy=
 sw state
>from master crtc.
>
>Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index bf391a6cd8d6..83c98791fea3 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomi=
c_state *state,
>        drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
>                      &master_crtc_state->hw.adjusted_mode);
>        slave_crtc_state->hw.scaling_filter =3D master_crtc_state->hw.scal=
ing_filter;
>+  slave_crtc_state->cx0pll_state =3D master_crtc_state->cx0pll_state;

We are unconditionally copying cx0pll_state here, which is part of a union.

I haven't checked, but does the verification issue mentioned in the message
above happens only for cx0? In that case, one option would be having the li=
ne
above guarded with something that tells us that we are really using the cx0=
 phys
(maybe DISPLAY_VERSION(i915) >=3D 14?).

That said, I think it would be even better (and safer) if we correctly copi=
ed
the union data no matter which is the currently active member.

>=20
>        copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
>=20
>--=20
>2.34.1
>
