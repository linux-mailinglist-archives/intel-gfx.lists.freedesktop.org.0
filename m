Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECBA377F7A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:37:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE726E441;
	Mon, 10 May 2021 09:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED696E441
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:37:16 +0000 (UTC)
IronPort-SDR: xDvoB+u2EAeR8Zl9mh6zjA0Fqn+35Tud6TxourjkX5ydPAUDqgx4kZKIkp3hMXxx+c+qjwczUX
 n8U6qV+QoK2w==
X-IronPort-AV: E=McAfee;i="6200,9189,9979"; a="197167184"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="197167184"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2021 02:37:15 -0700
IronPort-SDR: IC/M+BFO+ggzdG/YZo3+eO6Sjamwwry3VVqf4rIFeWgNXjoQMrRWdV2Go6lnYdInLObq5EvmRM
 P1+PtBblOb5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; d="scan'208";a="408279043"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga002.jf.intel.com with ESMTP; 10 May 2021 02:37:15 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 10 May 2021 02:37:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 10 May 2021 02:37:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 10 May 2021 02:37:13 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.56) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 10 May 2021 02:37:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WDqPk/tpZjEBsPFXL1lFRRdGULgY4y+GJFM6AKP03nqlErN0itTRAkL0SZMwbKpeozsO3xtb3rwFSxQ3+jfNGMj07ttDrPeZ69nJFCYRh5nM1Swk7Am0LJe8ULa8jUEJHVVbcoEwiIYgsetJgSn+WHMQ8JmMZBocpKVWacH41jxnTmgmb9Q0L6MPa59QxL4ArLq/u0Qoa6I/wNdqT/KhXKaakkEQdcIo8ksKAqylHYpVTD7TMprBp9wzXBDY2bfNqyk2atkcA+BvhZjPHN3hOAp6w1ktjIKE6T61NEslHAkMokJnQXJlG4HguqxHsyBjz0SNEF47DuccyNszZaEcKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRZ+dmg+df4+aR4oTjDoGiuwhmF7d6nVdGEtr8O/rIk=;
 b=nrql49XUln+Bs8Gmv7b2aaH/0XKi311l73UzMPfcIgnCRyqzRPyHZ/6JRK8X5nsbDEz5ZvV8jcqJ1XInutAJzqddPvFmNQF+PcTRa3b47SqciJ/CZEo1ViRnqu9rGLXnh0/ZyRkEVKYuZecGcqNM9wtlfq/v5BcSFws7pMLdP6lm/uquUfEyEJ7m875Ibhc8WU4b1Cczl973URRPIq1OtfhYLl933kBDJ5Gre/n7yeWiOY65jhBRS62h7hK8SGVDyi+juNpaYxLE4Mii86q9+Y+d0An+BgRy5X9I3z+Sbkzsbhwak3MKqGsYDHXZkQskWKIYs51mGAXv9VSD1m9pvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aRZ+dmg+df4+aR4oTjDoGiuwhmF7d6nVdGEtr8O/rIk=;
 b=TRmFlxt20z00TJGyaL9qZBK6JZTvhyAB0O/LqYw7O2kaBNrLDSRJb8eYdU1BQIWw3WCELhiqy58OtrB/IgaEiGTB2ZUZsMu+9u45svy2k4Ze26KJ9NcH5rHZ3p2+khy0XHQbFZ0/ESPjYdFUfE+mgK9fIIqc2iPy9iD+7y3Bmzs=
Received: from CO6PR11MB5651.namprd11.prod.outlook.com (2603:10b6:5:356::20)
 by CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Mon, 10 May
 2021 09:37:10 +0000
Received: from CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d4f0:68f6:3cec:29f6]) by CO6PR11MB5651.namprd11.prod.outlook.com
 ([fe80::d4f0:68f6:3cec:29f6%4]) with mapi id 15.20.4108.031; Mon, 10 May 2021
 09:37:10 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: relax 2big checking around initial fb
Thread-Index: AQHXQyEruVKUMgOOS0e7zXclpn5C46rcdr1A
Date: Mon, 10 May 2021 09:37:10 +0000
Message-ID: <CO6PR11MB5651AA4FAF64A89FF4586A89A3549@CO6PR11MB5651.namprd11.prod.outlook.com>
References: <20210507091210.371132-1-matthew.auld@intel.com>
In-Reply-To: <20210507091210.371132-1-matthew.auld@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.3.48]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f4b6eb0b-7419-4371-a8e5-08d913972f8c
x-ms-traffictypediagnostic: CO6PR11MB5569:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB556950872601D3A909179424A3549@CO6PR11MB5569.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AfSdot0iAzAPIIr+Mz0MJABFHi/s2PhoO53UhP1xkTvx4GZzJsAQJe/WabBmfDLhGgf0JlvclyRiY0F5c+gYrvGjtLllBw/8eZmOyUujsp45baVpGNgi0HaCDjKltjVgOA78oidRqTXzJWE80Lznjl05A2mgODTantOyvCeGDgZGb6l/6akJyk0ocv3fudH0CCIPWUJs9PaTeJtfSy0Cad4ssz7FlX6uH73V9BkAWztWtNMy4D8z0aWwLGnmEG3ueZV5C+HMKj45QjLjP8wU2aRNfoIuplTA9cUURFW4bg+NYYmIyKt3CXLuoApGrosa7Ud3yb2VtLfpYmaED4/DBlDLTSHHlJaH0fsAYCpIvKvuervDZP0VsoJpJbtVlIQueWgCzLnL0zKiF6C8VfAq6tAdIZBETxxawqnKiYVgZih4xiIJiR+8y8uH70puldA5RI+aRbh/x5xgKHqjqY1BdYMmD6R6CYhe3S3oXkX8J+z6NpRHSC4zviagegzuSnD3nKMz1SPwGuC7yw5LbfXqZD3wEXMtc963QJctM68HzIU7Zkl0NEtLeqrevU+59R15KBFGM+OtS/W/Qof0qt+oneBQX0EnLoYmUJynMlfCBGI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5651.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(39860400002)(396003)(376002)(346002)(136003)(366004)(52536014)(76116006)(66556008)(66446008)(66476007)(64756008)(66946007)(6506007)(33656002)(110136005)(316002)(54906003)(55236004)(8676002)(478600001)(8796002)(8936002)(83380400001)(26005)(7696005)(71200400001)(38100700002)(122000001)(5660300002)(86362001)(66574015)(2906002)(4326008)(9686003)(55016002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?8XTpIGGFJWOqsslkuSjfUT9pxwFdaI4gy0swThPXktE9/T/ejCciPOQiBR?=
 =?iso-8859-1?Q?WFDGlnmPoCx7lerTqcJm2EFNzYCZ0cP/rKuKJMpGYorNp68f77cWN4Bcns?=
 =?iso-8859-1?Q?cjlShVLsT0T4HHBvFtdKO8mQIpaDL2XzFyMXL2/+hjTLT+qWXkYBVe6A9C?=
 =?iso-8859-1?Q?ZuZsMJau1Rbf/3ZcEEr5fEZe8IU3PEM/SZh++1wgZDG3el6CpVFXf6IvAA?=
 =?iso-8859-1?Q?MVFYGkuWuUggPoA3ZqH4+T8Qo03Dm6HmLCqcPak1bBnY1mEDhQHTAcydTA?=
 =?iso-8859-1?Q?i6OE4EDFSG/0y6Iy2Oq8i61MYpIohyt/Y5TrN8V+0Tk5g/7iOqC0OxuPrO?=
 =?iso-8859-1?Q?0/mo1gnxoZ7djqy49tjR3rO9iZ797gBuWcSTy184Z4LTsqm6iibsrUJaB6?=
 =?iso-8859-1?Q?jI8U2A+5L0/smroDolyk3ZxUGBTHZI7oWQVV76AUeqWUYICfC1wJ3Um7wr?=
 =?iso-8859-1?Q?mBMJUy0TsobxZhvqhLqtDV6VkuqSy0AJegoIn3ygwI0U5SRkHW+r/wwopL?=
 =?iso-8859-1?Q?8O+QzHsNwv0l1KsA1oPmaS+JBsNxqjWwcDuRUHiHcm5jbsS2EidOnuxKio?=
 =?iso-8859-1?Q?I2D8mgVBv7WkJeTqtR+Ycota1mw0tWYD0UhqN9oVLjQa2ZzgmoNJh5TXG8?=
 =?iso-8859-1?Q?uDk1YYjYknDC32tode/Gt2OkWcEOSyTYsBaGwZJ58zIPdLyz8pavxs6v1h?=
 =?iso-8859-1?Q?KO7T2NtwdRhC5g6LXV/VSDZH01usMq3ct3jJ8qvAYvkAwyzA+rL8P3bqtQ?=
 =?iso-8859-1?Q?wq4YtH1UZOwWkBx/VHyavaF6b9XDsmyTz97F5qCNwH9nHctpZaUqiSHF2Z?=
 =?iso-8859-1?Q?KaRF7tJQ+FM7HUHiYs/Qjn5nUb2QYnvELqtGV+4KR0wvbJNw4/rv4Y+DiO?=
 =?iso-8859-1?Q?SQ57LEqGgUNZu+YU7dfW4QStRwGFqPVBhkVIX3u7bFoLJHVhY5+v1xBFDO?=
 =?iso-8859-1?Q?fTOLhLNPi2KqxijMQFkECJAUF+an/zw0O/CuEuTQO6fN9o5WWLbTRpdQJu?=
 =?iso-8859-1?Q?8K1YkFLAB8kNDC8YmZTclNXA5rhj2EiCCrc13pTHOFyWPx4D6yWGcEySna?=
 =?iso-8859-1?Q?+DhVWubPwvBp7KRWg1aA2qZh79vHFrGw1lrQrkwhMus7lBjLIfg9q2DEyd?=
 =?iso-8859-1?Q?892whIPpbFENF8V16yjzXkku3hNw7ZWfTRVe3dF1N+iadE7K00ByCSXmzh?=
 =?iso-8859-1?Q?8umr/b3IggqOYpLAyEiBDwUAylbN5hkzJlYc04Uva9HQEXOvzQfDZRSVXw?=
 =?iso-8859-1?Q?96RSOVaskFn1ANT756HYt0R1tsviLlHzXyTZSZuq8oG6416Ose4APx1nWB?=
 =?iso-8859-1?Q?40ygkAqO9EtH5h7LQetWTme1jS95qQm6NEqvA+quF0pvl3T6xghfngKG1G?=
 =?iso-8859-1?Q?I5/AoJ5p7S?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5651.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b6eb0b-7419-4371-a8e5-08d913972f8c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2021 09:37:10.7058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: u19OoInQdRgnjo7Gp7g22hDyNuMbnyqLyXrEzaElZmFVC8JFOGhKDoLeruk8znbVZIE4uu8gPTd/1PVKER1PQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: relax 2big checking
 around initial fb
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
Reply-To: "20210507091210.371132-1-matthew.auld@intel.com"
 <20210507091210.371132-1-matthew.auld@intel.com>
Cc: "Vetter,
 Daniel" <daniel.vetter@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Fri, 7 May 2021, Auld, Matthew <matthew.auld@intel.com> wrote:
>
>From: Chris Wilson <chris@chris-wilson.co.uk>
>
>The kernel prefers enabling fbc over the initial fb, since this leads to
>actual runtime power savings, so if the initial fb is deemed too big
>using some heuristic, then we simply skip allocating stolen for it.
>However if the kernel is not configured with fbcon then it should be
>possible to relax this, since unlike with fbcon the display server
>shouldn't preserve it when later replacing it, and so we should be able
>to re-use the stolen memory for fbc and friends. This patch is reported
>to fix some flicker seen during boot splash on some devices.
>
>Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>Cc: Lee Shawn C <shawn.c.lee@intel.com>
>Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>Cc: Daniel Vetter <daniel.vetter@intel.com>

No more flicker issue seen during boot splash with this patch on my DUT. Th=
anks!

>---
> drivers/gpu/drm/i915/display/intel_display.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/dr=
m/i915/display/intel_display.c
>index ec2d3fa60003..0ee1f0213fd9 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -1455,7 +1455,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> 	 * important and we should probably use that space with FBC or other
> 	 * features.
> 	 */
>-	if (size * 2 > i915->stolen_usable_size)
>+	if (IS_ENABLED(FRAMEBUFFER_CONSOLE) && size * 2 > =

>+i915->stolen_usable_size)
> 		return NULL;
> =

> 	obj =3D i915_gem_object_create_stolen_for_preallocated(i915, base, size);
>--
>2.26.3
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
