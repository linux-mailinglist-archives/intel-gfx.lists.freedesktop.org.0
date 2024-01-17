Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D238306D1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 14:17:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04C2A10E067;
	Wed, 17 Jan 2024 13:16:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E84810E067
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 13:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705497406; x=1737033406;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
 b=csojktztf936HfnJbhcnSh4kISoM0lF3E0FaJk8gdTMa7AggH9wdGJ04
 J2GOXouc8Hpg9vDItNkpZqEYsWoAHwif5bicLFd+F+vKkhUfXySXf68O6
 nMJDiiPgV9sjxd1ltwx3Y7um36zFrm51hYXM0UgIMzhQzKAIXTWYwXANV
 WTWQcMb+YV1mFAReTS/5nFNkl7zQfkirKfONvCCZYfCdf4ECLvUncZCaM
 skhwY4A6ineZwEsYKoAfVyRfMQ+DJyS1ifNv6QLrLU8pcTxnuSU6LVKNw
 /r+6aAQXcqgxBlY3tT9njQ+whYpYC6ADxKfenMQITmOpq9UAXtPCiJoIc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="486316212"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="486316212"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 05:16:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="1031347510"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="1031347510"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 05:16:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 05:16:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 05:16:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 05:16:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 05:16:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KBGEoAFQb70FJhM7eHFxjIsAUnqO74HAwkdwc7WjmWtaLjFNG1IFNwbjOvv7M/u9xP+I3ixdbbmUD37+mUUScuTRPJv0lFKLaXv2NZFnz81Rli9ADqev72BrLNKHNkAs7oGiFCGhE3H0ZNux/92V7mwJK5XSewZB/BD7JMVOuGurhWD/ryIl/HaX5uNyJfyTFQTmE/dDCtyXkFxFMM2E3WqMf/cXBYUsWQuB9np+mELEgla49OSMxhbN4sz/AK2VzuLBdSXyKMtIquoR1PiPF+kfsOmaZp/T5FmZy2mQ1SKno5nPOcUkdH09DLPMLFDMGVTGqSjyW0NGZMZSZzlLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
 b=Cpu+6S4tB5ZGYcjF9V0eRinlqYYqU7WOwvBEF2uGiIT9YLPEY3j6Sfu+O2K38YA5foQGdZ/cBZBMnhSJLCymR7Ia5eqgvw6rWgjkhegBZon4TeXYUe32qsKnjvUsNBKPVC2Rev3Df+bjrsDWohaA7z4VFPqb4oPypMMb8N2wQ2Z3BKY22vDpK0LZjc6BSkljN5/oKpSCkvyHun69Hotzq/f9Uth3sI3so6/+KZC9PhHTsKAVODStpE9ONdCh9wD3TwTtZP6uvVn3dk14GwpWe9rY0LtGua+9T4HeiEN7dYAjT9U8mglFuE1SsOwSVDtWP7uGyIkuF5JLjwCWDqwbsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4940.namprd11.prod.outlook.com (2603:10b6:806:fa::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7202.23; Wed, 17 Jan 2024 13:16:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7181.026; Wed, 17 Jan 2024
 13:16:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Topic: [PATCH v2 8/9] drm/i915: Perform vblank evasion around legacy
 cursor updates
Thread-Index: AQHaSL2Pc3RIISX5AUqgjPI1Loy2/LDd/VUA
Date: Wed, 17 Jan 2024 13:16:41 +0000
Message-ID: <a41dec6c7989d3437d88ff45dc7dd9550dba2510.camel@intel.com>
References: <20231213102519.13500-9-ville.syrjala@linux.intel.com>
 <20240116204927.23499-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240116204927.23499-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4940:EE_
x-ms-office365-filtering-correlation-id: 0cc61af1-191a-44b0-b80d-08dc175e8b6f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2OHMlNm6eBdflBAZ/H3PILble+URtgkBBmbD8urR/2PgskobjkZJXwYTelBmf7bMTIwA2kiqCuwGaw6hnxT6bwo6O4Pm4X/0R3+8OlOMl9e/mPB5X2Q+XD3vsvMjk+19DsjBHUue2t50C6+7xj+xnbFeTJqzSGEKCD1VTkYq026XLhBN7xkUMWdBfJCzSvgoXpCEfD7KkJlgaTNoxcEYYTXCMllS0vV0ZumQcWFjrJqeossdN3Fo2u3VF8Kan9Xdn85p+wIygx8NIQBO48v+4e93X/VDvyrZgJI24boOogAEFzIxgSyCMVvEnMl74ASvh7vABdHO7nxsC8Tk05Y04baqeIsvu2FNgk/iZn5zWJ4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(39860400002)(396003)(366004)(376002)(230922051799003)(64100799003)(1800799012)(451199024)(186009)(82960400001)(38100700002)(41300700001)(73894004)(621065003)(38070700009)(36756003)(86362001)(122000001)(8676002)(316002)(66556008)(8936002)(66946007)(76116006)(66476007)(64756008)(66446008)(26005)(91956017)(110136005)(6486002)(478600001)(2616005)(4270600006)(6506007)(6512007)(2906002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?phHwIOdz+qDcD2Rx4CZj2/D4treeD9O5KO6NLbcokxQRwleoLmU2t28HPt?=
 =?iso-8859-1?Q?ayURm6jrBtrmOcSd8O/5xXQaqfztoXpP9TpqWuIm+sV8xsm8Vr+fkrFQuk?=
 =?iso-8859-1?Q?1/6hNdVJ7J6e6GaBbxoLVkQ6obDVaxKPPeyusfy8PNelJ8V9gfIw9etIFZ?=
 =?iso-8859-1?Q?SR5DQriLOrsSqQBmXD6uaulBWbOibZWPXWJ0OM6097ECZFfeXlngIaojtp?=
 =?iso-8859-1?Q?JklS35ISpCVu7cunCro3EQMgB0mHU6yPwk5z+g2+nDk2ee4+NoMayy+Qod?=
 =?iso-8859-1?Q?Leb3crPcLfJHN/BYp2Vz6CxCenUfzmgE6SKWZ7afx3Ji9QzDpAoJDeLRjs?=
 =?iso-8859-1?Q?MTMnQ4pDPXJKRYv/kDzlUHNbqK9y2oGunMVAm5SyzkZD3x41S1X9Qkctud?=
 =?iso-8859-1?Q?0iYtlkx9liCNs1IMnQMqnefgJEz7QbhF4+zvcZrindZhQSHXpgB0PyQb2X?=
 =?iso-8859-1?Q?s1NlpkMqoaADwOwdbXj3Zzdo4HTpdN5ymcTyny+mpH12vdQTScfmqHVCfz?=
 =?iso-8859-1?Q?lEnKRfmV5gixkwjsG2DJKLa5JCH8tkAkw9bXvMUT4mBd0NeQc+tV74AIgs?=
 =?iso-8859-1?Q?IFulBa55Qhk062ZGKD/h1qWQ2xmZ92p7ur3ZHtdZ9dhPoXZmWCadKdee40?=
 =?iso-8859-1?Q?e9fGLYc5la8VCCa8iA0v2GQgJftvS3oBh4k0nKIu9VJBqoeSm7H//jyBRL?=
 =?iso-8859-1?Q?N8NlVLALSIrGeHcQ08L+b+ASw21kmazGO6g8vGAbdboqgU0cV+qs167Qjx?=
 =?iso-8859-1?Q?htHi7BnQ9v1ZC2w+h+tWgev5P4hcLjoknE0VkXF7wyWwXCtS+0iuw2JChF?=
 =?iso-8859-1?Q?x+04W6VpilG/rE4j1ISRDntg1ZLMEl/q7vL+Bh4bpIPVak3JjrE6ZXODW5?=
 =?iso-8859-1?Q?NemwwTooNRFZv6OgQjM1TU4/dT4DX6NuHjcsU5wjlvtqT6opOHy4niZtOF?=
 =?iso-8859-1?Q?a/Zjs7dxxVoetP77iHuXx1DiDERL68EfXtxLOuUzpZEjpsktwBB88EHoPR?=
 =?iso-8859-1?Q?JAbul4dbQHKjfkC0ldwvTF6pi7zu2UldMg/PPjyPVSycWTgvxLIg1PXONA?=
 =?iso-8859-1?Q?8QdFXfuiApJ9/Wz1JHgivfHTLZyFBj2PyOBbX0FR/E7DvAuzP+2woBXn4v?=
 =?iso-8859-1?Q?odqu+EM3S98Wm1hNkcOMxfMTbW4NiruHt8NxIKyb4SEWwCrFvrw9u7V0k2?=
 =?iso-8859-1?Q?obc1CowfnUPhcQquWgUaGNOHVDkUnhc4Dhi8FetDc/o5epILLs+w125xi7?=
 =?iso-8859-1?Q?aOcDsBhgsDDtlFiG2bz+pjdNgTgAF7ql/4hna6w9mLCH4XgCdacgKiqNo/?=
 =?iso-8859-1?Q?egVXYypgjfExBBmZnY73ypP9aH0JSvOR5/LG3ZzixNfhChjOseDkcR7m5S?=
 =?iso-8859-1?Q?Efk3I9Bp3gIY9clYDXfyRK2fEvStHC2bJfBpxlTB0kQRcYp4OxJRS8xcAU?=
 =?iso-8859-1?Q?2QN+XuyRuNjIuHDf0GP2YTxvL7oKQUR0z1RKhpDSB7sLIq38ulpISnUA1m?=
 =?iso-8859-1?Q?NVJT76PmsPhLEoAJsJD6SYShQrNQeqTMlZBvI64KrrVHpNfwT2N5PJHWbV?=
 =?iso-8859-1?Q?DISBNk+5Z5xXqP7vkV7va21EO+rXaYx2XBwh41emKwfoHQ0m0ltynXMCMP?=
 =?iso-8859-1?Q?S00HvaJUsQ3lTOHzPvqfIfhqbhCAfslMgYEZACYU4pjI4/hn2Pz10Zhg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cc61af1-191a-44b0-b80d-08dc175e8b6f
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 13:16:41.3322 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZmqqdIOfSkYxoWhowT9epLrK4/erBto0j1p3BIrz5An2GyJrqFS0CxLX+YXk4XpWleVIpI4LRahLdSHe0aVl6fYUcpkkQtgbrmRYD72QHck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4940
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


