Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94C47ABD4B
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Sep 2023 04:30:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 295F410E09F;
	Sat, 23 Sep 2023 02:30:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EE6B10E09F
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Sep 2023 02:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695436205; x=1726972205;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=qSPxdplrwyYiXUJUPncz6BYPcL2aihVnvKWIlcMcNyw=;
 b=c7qWHWXauaIJ2biFX0ZU9jjwtSjxjOS/gdr8zTKZcACx/G86bJKxLrIL
 SANTLbzUVe/QyBJeqUy0rUGz8RbohsFGqW8ufCsoV4BsGJ+qAei7E7aq1
 sh+CjXSPMtesJkGCpjHir4K4SWdl/SDS1mVaUDeKAjWfXFmNEuU3EcVGt
 8o9tzAaGkHObOzSvuYL1ysBSb9Bujliy7aMUoPyID+TLgcHUAndGWKY1Q
 6r7sIvGgSxBlcCZckklaUFD/hU+LfxYs462EsReZxEGjmjvISBt/n7YGy
 0r1UrC7b821J7pJm9/jI9LP4DiDvIsFB0glURTroAeALMmvxVHKET8ePR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="383739794"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="383739794"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 19:30:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10841"; a="921386785"
X-IronPort-AV: E=Sophos;i="6.03,169,1694761200"; d="scan'208";a="921386785"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2023 19:30:03 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 22 Sep 2023 19:30:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 22 Sep 2023 19:30:02 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 22 Sep 2023 19:30:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BlGbp+hGgnggsx++t3yZbL7Woc9e2qRhUubLoZWvOkWQKN4zsLjlxSRVD5uhIrHaTaZEEE5M0dLOHtLHa2+sE6KsgMSrrUimQ5G9se9yGKUQtiPC55as0lHH/TJS8AuvnbGSuugM//1+ciNhIU5Xzs9f7J4tUFRHslZ1XjEHOF6UFsMEFw/4e5hSNxD+CzMyTqCtRJacun5jKmlkyXvh1P9EKoQ6uP6YfmBVa5J8m4MsjTWq2MYByFnSb8hzK7l0OkWJzEN5A5Grrcqfa6AjEr+1X6DhEYcDdJbqdojmucxksb7klpRTrg8L7NyFXpD6WRiDTqUpVJHArB3kMuXJ8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zhN/Z7apqblGRHqnUJfcxeb8UBbGRXfVPcKsLkhQ+jg=;
 b=Jb6Wytdvz5LP2/FEgV4yfeOGoeQCOCQP+mPq9Ef/CfbWJqrYIJGwbrSCWx3++e0qv9iHt3RwEGdWu/VWOzZOnjPuXEUWQGeUI8VyOvNQCUVEZni926+quQ23RZQZ1BBWBuvy0C0YOiEY7xJNk3oOh9w5SiGr7kdolfodVGRmAN8YZLkgzwkPUhy3oKgCu7uujZ1lMtuZ66XCrnR/FTE/+r0zVkjKHXra0CksuVQrbTkO8+9kQBhEcUvPtAkiPAtbP+EVvFX50VGGXrKjKVaiDq/OSBG7r+qcKhqfIJiyH/9bIhwU8DAH5AdGOETItk2zQr4AXIzUSamHGUVAHLhGiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7076.namprd11.prod.outlook.com (2603:10b6:510:20f::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.21; Sat, 23 Sep
 2023 02:29:59 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6813.017; Sat, 23 Sep 2023
 02:29:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20230922105645.3991066-1-jani.nikula@intel.com>
References: <20230922105645.3991066-1-jani.nikula@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 22 Sep 2023 23:29:55 -0300
Message-ID: <169543619594.1821.16031774088885932281@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0086.namprd03.prod.outlook.com
 (2603:10b6:a03:331::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7076:EE_
X-MS-Office365-Filtering-Correlation-Id: a2612169-2844-4bfc-3087-08dbbbdcfba1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yP6GxIMfno2+EqzB4gF1UeTb9HaHffo/lDKe7ahCT3mG1B7ChP3w+UAidUFP1O746Bp5PGDqwPTbuzWT+oWPfkFFO7BAhbhLmF7CX4tSaK0oXTMfdWZzbhSXAr0eZ6wHng54WVQrKWmUo7ECyvOFxAQ+qWW82CGeKDi4pgQLkj1ZHK7XTAjaSkBYsNXEAuO762DVpncRxkpZDQqa7E7GftV71xp3DV2T5hB5cprVPTl4VoJchsWQ5omLKcCH/S2bMghDff7QrPcEOxr0apOlJSuC8ikNKajJsosDoRChEEggrJXKdhq5VYC2xiWqG7iZ0ufWqByATEUrAAmDVkBxxSAwnKcI3KvA5NokjlyCob/4P7IZIiRtVYxQQpyF8RwduDln+QlYjOIsXjUUSS7ZCIt+tCyVvOdlhB7nrLefik+VxmqT+sGK+kPWMn1FFM6zYxuF7ZQCjat4434U8iOQCHdIF7y0YIAeeDZkE/uV4jTO6BjxnRfSc4aTFONhV9gRkhi3TLr6teVs3vHGPRC3JMJRaW3g2rOfTrvCSxJRdFphpvZkE8kKCUh7uxPzbI/Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(346002)(366004)(396003)(39860400002)(230922051799003)(1800799009)(451199024)(186009)(107886003)(8936002)(5660300002)(9686003)(26005)(83380400001)(6512007)(66556008)(478600001)(41300700001)(316002)(44832011)(66946007)(66476007)(6506007)(8676002)(6666004)(33716001)(6486002)(4326008)(82960400001)(2906002)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmxCaGNiR3JlSVQvd1FmcXVSVHU0eWZqSHZtS1N5UUc2R3hiOWNSNHhlZWtR?=
 =?utf-8?B?L2VoVlRtKzJPY0lyZi9PcTErc2RZQk5vaUtXdnBQWEJEdFZSakFQVGdrSkZW?=
 =?utf-8?B?Ti90V2M0WHJJTUxieGgrelpwYmxiMTQ5NTZHMzFYdXd0V3l0Q3JLOEdhVFdP?=
 =?utf-8?B?YWRnZUN3a2tlWVc3Q0U3QmhJUVNsWFBGcXpOY3RXM3ZFWDFzZVBqWjJsZmtZ?=
 =?utf-8?B?cjJJVHFLMUJEWWpYbm01QzZrbGsrSjJheVFFcGNrOURQcmhjVlBhYjZMTGN4?=
 =?utf-8?B?TzF4aUs2ZUg1MDVkK2JIMFhQSXFGdUJoTGh6NktVVlNWZEFVUThsV21nN2d1?=
 =?utf-8?B?NC91djJzYmtMR3puRmoreFIyOXp3L1hIekNzVGp2OFB4TEJaQlVhZW1rWkZ6?=
 =?utf-8?B?UlBXQTZFTnk5czVUaXRJZUcrQzFNVHMxTHJKNEYvQmt5NHdUdVdkczhDTGJ4?=
 =?utf-8?B?SmkvWnJsZDJCaE45V2Jtakkvdmt2WDhFRUR6bThQeVBUZnl2TENVc0k4VUJw?=
 =?utf-8?B?ZWwzd2FodHJiQlZGWExhcWdoajVZdmI3QjEzeXFFbzVqVzA1S0x1dC85YXlB?=
 =?utf-8?B?eXMybGdMNlZuNVFqQnRiVnZrbUZVYVoweUZLWWVwUkxkbXRjR0orcTdLdzl0?=
 =?utf-8?B?Mmdad3R5ZzB5blBRNUZFdnArbzVaU0hOb1NWT0p5QjlsSWxRbjJsOVBTTk1x?=
 =?utf-8?B?dnRXa2xSRU9HQVpBeWJTaGZxdEc3eW40OUp1ZHpsTWdrNzgzOWNaaXQ3Y1U0?=
 =?utf-8?B?QTUyZ1Z6K296ck9lNXRmRFF2U0lqeTJMaDN3V2tmVVlIVUNocFg5Uk0zNGxt?=
 =?utf-8?B?NkVUS25JdHc1V2hhRkwxWEtZRzFBaFRJQXZYVkFIdTVYdG9BbU96VVdyY2du?=
 =?utf-8?B?R3JoN3JrSk9tT2JxRlE1cnlUUnc3T1J3Zlh2OHVETkp3MXRlN0RFeENyVHUz?=
 =?utf-8?B?WWpKdVhXRzdWOWxVaHhFS0RkODA2M1RVYjE5T1o5VEZkdkJtSzNJU0orU1lR?=
 =?utf-8?B?akRmYjN1dkVwdDZxUnU4Zmh2Rk5oc3N1a1pmZkxKVUxmUkNMMllxN3Q2enhz?=
 =?utf-8?B?UDRwN0lSRVUrbDV2Y0EyOFRUZFEzRXZ0c24vdFpiZjJKZk9sL0Zoa2FTQkVL?=
 =?utf-8?B?enFrVWJBaldmblM3cjl6ZUJhTys5TGJZdFhMenJCTkxyNXJxUE5zMzBvWlhV?=
 =?utf-8?B?R2dJTlZIM2Vka0ZxM01kVUxqOUZoWFNqajJBUTJ2UlBWNThVaFZYS0U4TEow?=
 =?utf-8?B?WmFrRjRtaU9TanZ6WU8yU09BOXUvcnFyNWw2RktRV05GNWZEQkQrb0l4S0hE?=
 =?utf-8?B?N0lMUytIUXZZWThxWGhqR2VqRzY1SFhXYnhpTjI5N2I1VnQ1azVJenh1M0t2?=
 =?utf-8?B?ekpxQjZEYzFkb1MzMGlzS3pHQUZGWGVYQTRvdTlYeEl1aS8wZVh5dzRqS0xX?=
 =?utf-8?B?MjFqUFY2TmwvWlhrOFNFZ2NvVHVVMXNZcG1vWkZNeURiNTZ0aFRRL0VRd2Jn?=
 =?utf-8?B?c3NUcGlyTlUzc1JXTzNlZU1oMDBlc2Jld01ONWVEd3Bka3kvdmJTTG5lVVNs?=
 =?utf-8?B?WlA3bWxMa3VPUk4rcml2bzJZOVl3T3lvN0pTdkhyYUhlRS80b3Y2NTMrdFNs?=
 =?utf-8?B?L0Iyck40NENSUmJodkpNMnZJT0liTWdyTXpHNUZXMXp4OHB1b3E3S1JBOUlw?=
 =?utf-8?B?NUVZeldOdzExMWsvcXRBVWZYeWlieWNMRU9GbXFKSkN5VVpWRitGQjI2OXp2?=
 =?utf-8?B?TFd3eHMyY2VGS2xrNXlGRjdGcm85Vk42VVNOS08ySGphQUZqYlI0SFEvVCt1?=
 =?utf-8?B?b2phR0JJdHZWYnJRbmZJVjNaaFg2R2JSK0FLVWlVdHRDaWFiekI1Vm5BRTZv?=
 =?utf-8?B?cXI5SmhQc2FNT201UTd3TnBCZndCR1BweUhjTHZ3cFcxdm9teGFDcWVWZVVL?=
 =?utf-8?B?VEN1emN0Q2RKb2p3RzZHYW5JQ3BQcjhPbGFoa3dFQmVNZExVajBXaFhVeDAy?=
 =?utf-8?B?Ym1kb1VpTUxvVFBlVGJqVmdEQzhLUnh2STJMMmh3NFV0cGg2YytnazhlTDk5?=
 =?utf-8?B?VGo4eWkvYnU1dlZPdU5obzE1dW8veFhkWkhHRHlmbnFoK0k1RktLVjBTUzhD?=
 =?utf-8?B?aFVUUXpIK2VrcHZuRDYvRlBUQTBaRFlYcVNXTjdnM0RzUkJjOVcrdE9ZRkwr?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2612169-2844-4bfc-3087-08dbbbdcfba1
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2023 02:29:59.6127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gYXRILZAVOFpOnhUhar+1YKtU4YHx1l0hfDubnQ519KmJpYXdJK8aY4NZYLAvV4s4YCWiNy/B5KZsrRiv2YgGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: refactor aux_ch_name()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2023-09-22 07:56:45-03:00)
>Convert aux_ch_name() to a helper that prints a string to a caller
>provided buffer, and use it to get more consistent aux channel
>debugs. Now that all users of aux_ch_name() are in intel_dp_aux.c, we
>can make it static too.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display.h |  2 -
> drivers/gpu/drm/i915/display/intel_dp_aux.c  | 41 ++++++++++++--------
> 2 files changed, 25 insertions(+), 18 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/dr=
m/i915/display/intel_display.h
>index 49ac8473b988..9f252d1f03a7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.h
>+++ b/drivers/gpu/drm/i915/display/intel_display.h
>@@ -190,8 +190,6 @@ enum aux_ch {
>         AUX_CH_E_XELPD,
> };
>=20
>-#define aux_ch_name(a) ((a) + 'A')
>-
> enum phy {
>         PHY_NONE =3D -1,
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm=
/i915/display/intel_dp_aux.c
>index b90cad7f567b..4431b6290c4c 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
>@@ -14,6 +14,21 @@
> #include "intel_pps.h"
> #include "intel_tc.h"
>=20
>+#define AUX_CH_NAME_BUFSIZE        6
>+
>+static const char *aux_ch_name(struct drm_i915_private *i915,
>+                               char *buf, int size, enum aux_ch aux_ch)
>+{
>+        if (DISPLAY_VER(i915) >=3D 13 && aux_ch >=3D AUX_CH_D_XELPD)
>+                snprintf(buf, size, "%c", 'A' + aux_ch - AUX_CH_D_XELPD +=
 AUX_CH_D);
>+        else if (DISPLAY_VER(i915) >=3D 12 && aux_ch >=3D AUX_CH_USBC1)
>+                snprintf(buf, size, "USBC%c", '1' + aux_ch - AUX_CH_USBC1=
);
>+        else
>+                snprintf(buf, size, "%c", 'A' + aux_ch);
>+
>+        return buf;
>+}
>+
> u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
> {
>         int i;
>@@ -728,6 +743,7 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>         struct intel_digital_port *dig_port =3D dp_to_dig_port(intel_dp);
>         struct intel_encoder *encoder =3D &dig_port->base;
>         enum aux_ch aux_ch =3D dig_port->aux_ch;
>+        char buf[AUX_CH_NAME_BUFSIZE];
>=20
>         if (DISPLAY_VER(dev_priv) >=3D 14) {
>                 intel_dp->aux_ch_ctl_reg =3D xelpdp_aux_ctl_reg;
>@@ -764,18 +780,9 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>         drm_dp_aux_init(&intel_dp->aux);
>=20
>         /* Failure to allocate our preferred name is not critical */
>-        if (DISPLAY_VER(dev_priv) >=3D 13 && aux_ch >=3D AUX_CH_D_XELPD)
>-                intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
>-                                               aux_ch_name(aux_ch - AUX_C=
H_D_XELPD + AUX_CH_D),
>-                                               encoder->base.name);
>-        else if (DISPLAY_VER(dev_priv) >=3D 12 && aux_ch >=3D AUX_CH_USBC=
1)
>-                intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX USBC%c/=
%s",
>-                                               aux_ch - AUX_CH_USBC1 + '1=
',
>-                                               encoder->base.name);
>-        else
>-                intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %c/%s",
>-                                               aux_ch_name(aux_ch),
>-                                               encoder->base.name);
>+        intel_dp->aux.name =3D kasprintf(GFP_KERNEL, "AUX %s/%s",
>+                                       aux_ch_name(dev_priv, buf, sizeof(=
buf), aux_ch),
>+                                       encoder->base.name);
>=20
>         intel_dp->aux.transfer =3D intel_dp_aux_transfer;
>         cpu_latency_qos_add_request(&intel_dp->pm_qos, PM_QOS_DEFAULT_VAL=
UE);
>@@ -819,6 +826,7 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *enco=
der)
>         struct intel_encoder *other;
>         const char *source;
>         enum aux_ch aux_ch;
>+        char buf[AUX_CH_NAME_BUFSIZE];
>=20
>         aux_ch =3D intel_bios_dp_aux_ch(encoder->devdata);
>         source =3D "VBT";
>@@ -836,16 +844,17 @@ enum aux_ch intel_dp_aux_ch(struct intel_encoder *en=
coder)
>         other =3D get_encoder_by_aux_ch(encoder, aux_ch);
>         if (other) {
>                 drm_dbg_kms(&i915->drm,
>-                            "[ENCODER:%d:%s] AUX CH %c already claimed by=
 [ENCODER:%d:%s]\n",
>-                            encoder->base.base.id, encoder->base.name, au=
x_ch_name(aux_ch),
>+                            "[ENCODER:%d:%s] AUX CH %s already claimed by=
 [ENCODER:%d:%s]\n",
>+                            encoder->base.base.id, encoder->base.name,
>+                            aux_ch_name(i915, buf, sizeof(buf), aux_ch),
>                             other->base.base.id, other->base.name);
>                 return AUX_CH_NONE;
>         }
>=20
>         drm_dbg_kms(&i915->drm,
>-                    "[ENCODER:%d:%s] Using AUX CH %c (%s)\n",
>+                    "[ENCODER:%d:%s] Using AUX CH %s (%s)\n",
>                     encoder->base.base.id, encoder->base.name,
>-                    aux_ch_name(aux_ch), source);
>+                    aux_ch_name(i915, buf, sizeof(buf), aux_ch), source);
>=20
>         return aux_ch;
> }
>--=20
>2.39.2
>
