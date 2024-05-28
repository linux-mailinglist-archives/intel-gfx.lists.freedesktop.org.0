Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E3F58D13EF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 07:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D5E10EB25;
	Tue, 28 May 2024 05:33:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TDWsJjWv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5166710EB25
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 05:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716874421; x=1748410421;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h0tceas6ONm6lN96CFU+merAXO1WXYdTebYxB3RmJjg=;
 b=TDWsJjWvVG2pDXSomn42t+0wpPWNa9pORY5Yeh1foqr8CqseiZscmZ6r
 fQSPPG5l7BTqF3ZDQTmH//zYXiYzcjvjXsZ/0iZioCvTyHFAARyJhWIRU
 kBYHd3sRPWqhl4PyZwraJV5DtR6WAHs1h3GIm9TfzhSvwu1k5NHIc1/GE
 UMWbUlK6J2Mp0awDHfUzAvZYrrms6X0/suqDFtvZgtzutTTBKx7cwIkI5
 o4xBRMV1caOgApwzSajAEUIyqD01YNsdWZsx9m0qBN92nT0W3AUP7OX1/
 HH/v0BkxGt9YTu/DOlOHR57VKRtVrjTcaxB9Ee2POHKWOTlvjPeyk1JWI Q==;
X-CSE-ConnectionGUID: b0f7kT6fR2eluTna1e4XXQ==
X-CSE-MsgGUID: D3Vr9t9dTP+wr4vvBuD+KA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="16987166"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="16987166"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 22:33:41 -0700
X-CSE-ConnectionGUID: D6Z4OvzOQX+3599JYQUDXA==
X-CSE-MsgGUID: 2S7vqGnBRWqU/9WoBJH/3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="35017217"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 May 2024 22:33:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 27 May 2024 22:33:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 27 May 2024 22:33:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 27 May 2024 22:33:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4J3rdWDUgmWIyTDEOQvhcq7iIE6yWcj4D0An2h1Ezobm4XgMBliQo9Z0VxfSewUXIG3atCU6kRZBkzFEaMXl2q6S5F+alqfBPVOYTCrV6d7gb8ei+7mqi07NUEYwpvGFdJIKRCjmVc1Xxii0xF7YkwXCy0s/cK2TOt2phiWWoVOLCSB9uWNLAT8iQABwdUIN0INWhWzgAUcNvChFX9QErk7bnYl1pl2kNON44so+OgWjSw72W/WtyNUZJABN3WXwU8hAo+VWImH4UgDkqRCpsXSm1FNlBSb9QN+5KfYLarYq7+JBQ1+OkNkrdaovYhqCOS43yFpQZp6PR7k7BmTVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0dGV8ZguKfZF52ug1jrsGoUHClkG8EmRkMiglF6LU7M=;
 b=PEom9w9aUJ3WyMBn2EeILIYqdyL6swHvdKbYQglyAkPOAgV4cnB3Mb+wG41XP+gEoyEn1Wr921gaVlARcsXTUXa3BLJOqP64VCrseOryVdvY/rWoCfZ0Ed5loslxxKky1Hi0mTGRDX3t1vI98lEAkyUO0zddzcTEno/FMmLLjzaUWD9CxCRdWwfHfGsfx+esHkov2zrorDfD1Tc1truCE7uS10ydsgaFX64SDQu9cyj44MJBZBF+diPNO0i9CQsn1se3OJonVMItRLKl0VGPC/JmUsunPrK4cCUkYFmataA/hhr0PGS1VEKOLjOc8VVGO2Jr038RLN0AfACyibjiyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 by SA0PR11MB4766.namprd11.prod.outlook.com (2603:10b6:806:92::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 05:33:37 +0000
Received: from PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752]) by PH0PR11MB5128.namprd11.prod.outlook.com
 ([fe80::74e1:a7a3:bae7:9752%4]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 05:33:36 +0000
From: "Yu, Gareth" <gareth.yu@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Max_Weng@compal.com"
 <Max_Weng@compal.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Thread-Topic: [PATCH v2 12/21] drm/i915/dp: Use check link state work in the
 detect handler
Thread-Index: AQHar/NThMmhypVWXUyC83WNbL6OEbGq8p2AgAD76uA=
Date: Tue, 28 May 2024 05:33:36 +0000
Message-ID: <PH0PR11MB512879C1DE7893FBB6F307E7E0F12@PH0PR11MB5128.namprd11.prod.outlook.com>
References: <20240520185822.3725844-13-imre.deak@intel.com>
 <20240527051432.173965-1-gareth.yu@intel.com>
 <ZlRuzWgnwLJ/VOLA@ideak-desk.fi.intel.com>
In-Reply-To: <ZlRuzWgnwLJ/VOLA@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_|SA0PR11MB4766:EE_
x-ms-office365-filtering-correlation-id: 2dc49656-2ad3-46a9-787a-08dc7ed7b8fb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?1QSy1ESKtMpjm3EvzVJ4ii38caSRhaCVlG/+Erc32iJje45/ZRjEa/fsmJ?=
 =?iso-8859-1?Q?KrdfilwIL8PQiJQh+PPtwMyGqXgt/80tAeAmi3t8CywMZhjH9Kv8GWjxcr?=
 =?iso-8859-1?Q?hdmJMV1GXwbsdF2ZhQjuqNKacShE4yC2076sr7J8MeLLts80n55rp8wqu8?=
 =?iso-8859-1?Q?SpQXhybcgAvJe+zLlcXby+V4mDJEd2vDZgo+mXCD3cgvHe5/UfiDJVXq/p?=
 =?iso-8859-1?Q?sly8uRA+eUNr40yWxf0m3dR3IM3DLnNLUDpTebUhEL8bY/im0LY52Hz2J6?=
 =?iso-8859-1?Q?+bsjwrV7OD0/NX/lHhnO8mMcTkGfDQRDvkIDT6zjVQfFQQvTxFnH5GETNF?=
 =?iso-8859-1?Q?YAB9qVe4dkGmt19jjzma2c8Ad45ThbPwAegmyA+TNVmr/Zmg4yLEqjLfXE?=
 =?iso-8859-1?Q?iZXAgpXXqHLWvtAcVn2ev+rygydmrL/Yh9/gcoPyRUF/0K8VzyfGX42LDL?=
 =?iso-8859-1?Q?C3UrQEgEWmSP38j/BUSQ3GGHASmHJEL8XDW3imayurNMGbfPjN6WSJFl3N?=
 =?iso-8859-1?Q?N9CfFbJK69IQ0EYmfwzRtcTQg2BNeJcA1t7Xs53AVNi3ArWDuikRnXPdpJ?=
 =?iso-8859-1?Q?guxa7uR5Kxsj4PggY+QgAANhysXUT3iG/1/794ANUDERnd2RSKoaKZ0N/g?=
 =?iso-8859-1?Q?QjDtLQTagnMaE7DeMEZGA81Wa6lZXvxe5vUtE2Q7J3XPYAksMHts36Oo9l?=
 =?iso-8859-1?Q?GLKVepiOhoQSks3f+e7KutGpZ/mNkZstl+vKZPnXmpAN8cc8Qg7sXpeyb7?=
 =?iso-8859-1?Q?sWwlFjHBxABoOsRuZR88//NjE5LuCdAnesCOx6goHofDc4RQzguezt3DP3?=
 =?iso-8859-1?Q?cNok3msSMmRLVUdiOLhRPEGPFFk/VrXuBASFBQsQT904vPS1Aks/8r6hgV?=
 =?iso-8859-1?Q?cdP81lk5dYx/DkcRqEKqyQpjaprqJWZVRaS7Bm8msZK1+pSLxY7vegulka?=
 =?iso-8859-1?Q?0Zk2rWgDdFk1clnaZIiUaRFpdpYrXmJ3NJ24+qI3ZNKHmrtFENAEW7TiEq?=
 =?iso-8859-1?Q?vJS3qv6XFVJ40vp5c2lFz4HaJ6K9+tpOv2tkLWIZ6hTAN/o7jLAQBXO2YO?=
 =?iso-8859-1?Q?hQr+mlCqCYqMM5+yOSbB6Lh8FNHE7vIedXmeB/xQ9FkKR8Lq046IROXuLw?=
 =?iso-8859-1?Q?x3VQW/g5V4Rt2NEUdI/PqdgqueSgXHsr3O1wy4ZS6uFe9OuRKZQX0OjP+w?=
 =?iso-8859-1?Q?gwYxGeVOjrEOfakJYBg2J9yhdBa6jyVReBiYbnlMgdYL/jYatO1HrsFDt7?=
 =?iso-8859-1?Q?YEzX1Ow+WWbUn+hpLc1HDSxAxo9ww5/zETZiC57yS+HZzYhzbA3Fzaw4I9?=
 =?iso-8859-1?Q?6vFZ2g97vAeVzYCdmtIcVTyjsfcG9niqfAKA8As4O3PZqmg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5128.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?/18eGIeoDIzTmvDigfkg4WhcckzuB3DRwZ7Tf95zEs+BfcpSKBrMY69n0o?=
 =?iso-8859-1?Q?fF5ACOpkRr2qsXiOyYHAHARLMa8p0d8CINVdNV64Xs3w5GbvOKPJd82JmN?=
 =?iso-8859-1?Q?lo5KUVkIIy0wGMj4n7yLJqjtS3eW/MEijMIoPJabS6j07w67rAgXZQSZug?=
 =?iso-8859-1?Q?I/ItoQ6y0Jp5OdrzkzZudcqotrLKoiEl70kHdoun3Njwrb9tqr3JHbH2yw?=
 =?iso-8859-1?Q?0v7Ox3Wd7k5Y9ObyYb1st5M3KMSVDGYiZhcGtMDbNSbAykd8oFkS9Calx0?=
 =?iso-8859-1?Q?YLZ+LlsP6bJaOVGZSAQtWAHV4SwkeRFP8YikRzNysnCoJI3JF4L6HcFQor?=
 =?iso-8859-1?Q?Ob4nJBHgYIz6Yb92+Wk9Yoku5npH9HNWQhelJPGndrX1mmZc7sy1LzaTgS?=
 =?iso-8859-1?Q?sVM+o9XGHYAvocEqnxkjwNaTs1jFIyTfwMOci2aiT7LzwFrrPlpvob5nq4?=
 =?iso-8859-1?Q?Xe6cKXwcKFww1NLmjVgRnj4R17qOeTP3OfKixJBR/EgIRra28/Gu61zcvV?=
 =?iso-8859-1?Q?NHUHg2v7aPoHSgrGbGrsHHsXoFHi8Cc0ylQMDtCq3xXalyOGFEfHz2BTqU?=
 =?iso-8859-1?Q?pkexzdfsm9DLqMMLcVogF0leqb5pzPUOtjQLOkP7k8JgYnzip+FG+DjyRc?=
 =?iso-8859-1?Q?ThUiQaT42GclRA4YO5qkXD+7+L4fTvlYFbZB7vREvE3qPNZVMHmrOnpLic?=
 =?iso-8859-1?Q?HDdam73ekPjhqd71aMVGp9gEkadi93FQeu+GTPiVZCu/X2Yp7Z1p2MrRvU?=
 =?iso-8859-1?Q?9fr2FjziuTVWJqLmHhq1QQqYh2Hia/JmoB3M1nFniernHSYZOUtEtQMvmn?=
 =?iso-8859-1?Q?PBhfu8lJeprE/E3ez07tW6u6CXTPIu/7s3AYjZ+2qxdxzFJi90Y3sC5q/0?=
 =?iso-8859-1?Q?0I5Uv4qSjgoa5s9iLKLYbt5fsu4XIrSVnWv6mOk9wo0n5S0rZCUCzWnz1E?=
 =?iso-8859-1?Q?PczWBJqIUPtCbmO0ewXS/iYnfltB6s0/cSowMjoWzmOyr2rBJrdIsJ7w6T?=
 =?iso-8859-1?Q?LIS4VXQzzmT2JSvi/riZUSd9woIpWm6qaiC+M+a0YKwyCaJSs/aSUYCP3h?=
 =?iso-8859-1?Q?KmT3mqo+ukHSUbzUH4dGh1J/Mduy/ILbC201JM+fjaE8DFvUUb9yijBIYx?=
 =?iso-8859-1?Q?MPnmdkz/62keU6Q6w3rHnCqCbXuHAuZTcPuZYA52J7XZ5wpqwZtOmalKxO?=
 =?iso-8859-1?Q?mHVJS2rnfbpFHtecfVvlnnh/N1mkg5+LRMBimUr06E8wk/6NZI4h5ihf9u?=
 =?iso-8859-1?Q?QTduxOpdvfDiLJO2JopmKoAP93S2qHnkyCyiE6pu2Kk+wt8KR19AspWQcW?=
 =?iso-8859-1?Q?sfBVi7IGXg9rZmcof3h6rDAG85ux9aDl5c9rccI8gWd1HhERyR4zAogpwg?=
 =?iso-8859-1?Q?xepXMazOOSZ7+8x4VWgZKnSpJJQRKqOEWefcSjq4nbF7odfg49xgguonMe?=
 =?iso-8859-1?Q?h8m3SEstBdMvQK/iQcaMDqKKAPjKkAfcEZddDGxvchSffFXTNhr1fqUwne?=
 =?iso-8859-1?Q?kbtgEyMrMVyXVzc6IZ3PZwHzY7wXOBR7NiwVhwStdwqa7ysltuAVfeDRP7?=
 =?iso-8859-1?Q?spFENE40KuZsbyIAk33Mq23AT+bLbpTvSQmoWYHvmU059CIZD0Jo1S40k+?=
 =?iso-8859-1?Q?bSCHtm4/oVZ/wS5Fsq7Qi4nMGOqaq3ZULE?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5128.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dc49656-2ad3-46a9-787a-08dc7ed7b8fb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2024 05:33:36.6020 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Imkveqv59A+2ExLlzoQzDELxk2UXw39Kcfv4lrxTxmvTUztvRK2h3lVfaDBqVS5PmdjJGILmskqo/a/2kH2QAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4766
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

Hi Max,=20

  Please  provide the test results.

Hi Imre,

  Meanwhile, my question here is the link status is not checked in MST mode=
 according to the current flow. The changes below=20
for MST are same as https://patchwork.freedesktop.org/patch/591953/?series=
=3D132685&rev=3D6. Please check it.

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915=
/display/intel_dp.c
index 0923a5adc14b..bf008a70304f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5927,6 +5927,13 @@ intel_dp_detect(struct drm_connector *connector,

        intel_dp_print_rates(intel_dp);

+        /*
+         * Some external monitors do not signal loss of link synchronizati=
on
+         * with an IRQ_HPD, so force a link status check.
+         */
+        if (!intel_dp_is_edp(intel_dp))
+                intel_dp_check_link_state(intel_dp);
+
        if (intel_dp->is_mst) {
                /*
                 * If we are in MST mode then this connector
@@ -5937,13 +5944,6 @@ intel_dp_detect(struct drm_connector *connector,
                goto out;
        }

-       /*
-        * Some external monitors do not signal loss of link synchronizatio=
n
-        * with an IRQ_HPD, so force a link status check.
-        */
-       if (!intel_dp_is_edp(intel_dp))
-               intel_dp_check_link_state(intel_dp);
-
        /*
         * Clearing NACK and defer counts to get their exact values
         * while reading EDID which are required by Compliance tests

Thanks,
Gareth

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Monday, May 27, 2024 7:30 PM
> To: Yu, Gareth <gareth.yu@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Ville Syrj=E4l=E4 <ville.syrjala@lin=
ux.intel.com>
> Subject: Re: [PATCH v2 12/21] drm/i915/dp: Use check link state work in t=
he
> detect handler
>=20
> On Mon, May 27, 2024 at 01:14:32PM +0800, gareth.yu@intel.com wrote:
> Hi,
>=20
> > A bad link in MST is not retrained. Please also consider MST.
> > The issue ticket is https://gitlab.freedesktop.org/drm/i915/kernel/-
> /issues/10902.
> >
> > 	if (intel_dp->is_mst) {
> > 		/*
> > 		 * If we are in MST mode then this connector
> > 		 * won't appear connected or have anything
> > 		 * with EDID on it
> > 		 */
> > 		status =3D connector_status_disconnected;
> > 		goto out;
> > 	}
> >
> > 	/*
> > 	 * Some external monitors do not signal loss of link synchronization
> > 	 * with an IRQ_HPD, so force a link status check.
> > 	 */
> > 	if (!intel_dp_is_edp(intel_dp)) {
> > 		ret =3D intel_dp_retrain_link(encoder, ctx);
> > 		if (ret)
> > 			return ret;
> > 	}
>=20
> this is not the proper place to retrain the link, the plan is to remove t=
he above.
> Could you give a try to the patchset and follow up with a dmesg log on th=
e
> ticket?
>=20
> Thanks,
> Imre
