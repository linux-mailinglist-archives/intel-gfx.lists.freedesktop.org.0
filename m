Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ED889686D9
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 13:57:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33B7410E2C6;
	Mon,  2 Sep 2024 11:57:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IyVfxAyS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C632510E2C3;
 Mon,  2 Sep 2024 11:57:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725278275; x=1756814275;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MuQWVvhHw6/Zo059GDgrPpD7AqpcjNnwXaU2Y/LNL34=;
 b=IyVfxAySQcbbIvAE0QMJk58btjJRZY1QqcFUzG1w4R0sHvw0/DgJKal2
 HTXTuf8g0SyfwdYZhDX/ZjNBOCOKA0sCfOgl3LQRoNN9H/Lmcuhu9PDeK
 XxihAH19sWuWNe5cpQYSr/+rIhlgi4Zwng2Wfy2f+Cc/fVJY4p2vc0ZU6
 2OPJOUSCOBJvl3/jCiioEb95vEHDTZ/OpeiIi5/Pr/Go+WuKv2ECKu2BZ
 GmomlSCCusGwWwue0llr70cqC29HZIx9XMBWXYxRN7iRxXm6OSWTMLxKB
 bwXFMUi620aA5HCsJjik2JCYJMzMF4bLvXL5xGBsKuUlHepcha65G75+q A==;
X-CSE-ConnectionGUID: at/9KgoUTGyWxQ9Pp/Wa0w==
X-CSE-MsgGUID: eA37100hQl+YkfN4iiDOKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="46370779"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="46370779"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 04:51:34 -0700
X-CSE-ConnectionGUID: ywXuL69zRJSUL95QhcDQ4w==
X-CSE-MsgGUID: zOFMR9DlT2WdqwGtTs1j0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64593482"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Sep 2024 04:49:47 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Sep 2024 04:49:45 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Sep 2024 04:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MNy27L4tYyc9Avo2MBJrHq4T+YnxUigTg3LlqXYW7LJsZd/0epbEyFgJLiuSjlAq/g+mXNJIn9rJzlYQVCwl4YhZrJ4yutX8GkNgKUYrEXQSbBlvKRleqEeXr/ZUO0RIeAseJOH5hZE0LDDMpS1bdBzfHcaQiJoQEMpQbrzjxPPzib9Pdj+z/BaX7M/agr3WLE4jdWaPOHThQRpZS1BXroLBNNhfQ3MgdQ2G5WV2FxwuQWI7hDcxNx6kg/iiWC8paE0ATHYGi0Efb0EsT1ZCmyIWC+9xe89UozNuMGS6mjhB+9Lnx2XVQwiVDF7KenA6D1A5gczE6J/D9Y3MbNEKGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gxtJJk+sq9aoq/S4FTPXNIJP84J+PVboynChlyrZRB0=;
 b=oFCL8tnZNegIHQDRWu+D24to8R1racqP1wzQrXsg3APK8ge6g0C0DXl8EOCwrnQF2Yt1Xxf5/N/X1Zv96MPep+8ZmZGcSDNBrLP5lIMSP1W7AUAe7VmmnEq+zEYL85oYHwLetT7CxyX059m+ua6XzZvzDcGhw0ZtyRJG+KY5wo0eRkRI/ezaWgIcVEJecfkIsR1vsj8j0srh6Qsd7Ly2pzoZLoJbTDLkD8Ft052zau+f/b/X3fRlS6SqphAfF72ULaRPdm83uznWrFO2MtocFq6LRP5OQWH0gpZ09+5x4jpT2RJWh7E/QwGmHQUQxuyG+RplXdKd4oOaB0jdJkTZbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4784.namprd11.prod.outlook.com (2603:10b6:a03:2da::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Mon, 2 Sep
 2024 08:52:04 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.7918.024; Mon, 2 Sep 2024
 08:52:03 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Sousa, Gustavo" <gustavo.sousa@intel.com>
Subject: RE: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() in
 GSC messaging
Thread-Topic: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915()
 in GSC messaging
Thread-Index: AQHa+iK5vg3zBkrPjk2i9Quc3CFehrJEMhsw
Date: Mon, 2 Sep 2024 08:52:03 +0000
Message-ID: <IA0PR11MB7307DAA63B63457957DE72B4BA922@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <cover.1724942754.git.jani.nikula@intel.com>
 <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
In-Reply-To: <efd5c4c164c01b7ee50ad43f202b074b373fb810.1724942754.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4784:EE_
x-ms-office365-filtering-correlation-id: baad517f-c61c-4c2e-644b-08dccb2c843b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?r2l5O9m8m1B8QCcsKsQbaOCRX7WIxFLNg0LRZR18GssZlS9RQ5jYoZ9T6x5W?=
 =?us-ascii?Q?kGODgd9QTxujL0PmMaOvLGZUXCBduyEZHEgZ8kR71WHTsF1w+Smf5LQDPcBC?=
 =?us-ascii?Q?3/8UxatGfFOoEnEcOw+/jBFSKylLas6icACjAgledBxbNRbx/cNUDP+9VUIX?=
 =?us-ascii?Q?RvW6ZYf5mf4ITvzxpAU7VnM5+twv4+t5xxX2CSNvC9QeMLGcZ2Gh87jvZBtj?=
 =?us-ascii?Q?cBCIntsqa4pjCpjMo4FcYB4EJHW6vnkTSmYeLnG2YnyfTqZ+6KgQptYPjjlT?=
 =?us-ascii?Q?TZ0/l6cMryX83FjLYuPSEQAOSReShd4YKTLTh2zNNSxgjy0k+otma/SQN8ct?=
 =?us-ascii?Q?ORGFUVgkfhbxJ69wCAiw6uOnsleZRU2XSbkiv+nx9vktCLVZTprQV3YotRls?=
 =?us-ascii?Q?LvJiiFu9X6ENJMAHcYcdbrqIR+DhaxgCBiV0KI7ncGIBL95Ilt62wsH86tWq?=
 =?us-ascii?Q?iOSnXSyty4XANSR1RXcxrxDg4vbPqFHixfwp0plLi86YzO2ERxNfoS/Pbz8r?=
 =?us-ascii?Q?KxYIy+FmwXGW7bwOTgq3YEfCScHPsZGgPfNKwkwrgdcJ5Io7mO/m2o1+R45t?=
 =?us-ascii?Q?IqJtzS48+NZph0AufqNjqV+5WjWbYYDvxX7M20Z1/GFuZgFW4E27KhVC663/?=
 =?us-ascii?Q?RwbRqSHQP4NarTAJvty9sobuFGd3W9ljKbg7+spPwkAreYjELqVufg3YFOYj?=
 =?us-ascii?Q?2ySVVLiFAYHfHpvDyML7aOpC2vFYBIZU2jRf/eUU9byx7dwZLLiQm+FzEP/i?=
 =?us-ascii?Q?JdijOVJaam/Byqri+O2fQ4owXG4hGvcoxtCpatmTRFAMoFpKpV8ZlTNyxp3q?=
 =?us-ascii?Q?c9QCNnziG/Xcxhbg8f+rE8Wzr8G7pBxlwpR78KslIYF09xuUkjMgQcq0HK4E?=
 =?us-ascii?Q?ukY3s9/EsnH7W79lj88fcrHOxRWoyiT5etrID2Oam21rm+c4Pp9cTSKJDNxP?=
 =?us-ascii?Q?BHSM2J+1VQjDCaacdhrHR5jZkDQRcZDZy86+6JsuYtva3hb4ZXxQhVENoY/c?=
 =?us-ascii?Q?vAN9MCYln9K/gwkm0USeLh1CtHHveH3tgKsZXh4eTuNh9cNy8KIeRHzD1lMw?=
 =?us-ascii?Q?XxNMzAQW8bZCZk1lsChza+MuBfrE3fjMulThRTYyD7Kv0Rywv9JO/M+3BB4C?=
 =?us-ascii?Q?c8xEAYz/rOg42TXS4woCS37bnwjL+LkSH8RDw3OU2IoYldJlZmHVBdO1xLv0?=
 =?us-ascii?Q?1PTwhUqZOdgcqjJ6k+A0YlG1+ybe9YGxvHSWuLG6z/GiCPdNrwd8YniBfrV5?=
 =?us-ascii?Q?2MraNGlNKXFd62Pto8ECmddeo/E8ra1H5l6SGsIhW1Z9dFUDsePgZEIpyweV?=
 =?us-ascii?Q?IH6X1bVvqKwAua9d1qgHKSoHgbNdHpPohU71gIFSKMYfjrzx5v6EmdRsEv+5?=
 =?us-ascii?Q?5c9oEMcFaP2EJKFQmq2k1+pI84CQ7T/iBWtk857GY+S3lUaODA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6EqvdMmdO1I9l91zS5dmGh29+zzINXkn5fn26Fs8u0QPQxenIkjbtt478BTw?=
 =?us-ascii?Q?Y1IgWAdGlgFImnxlvxN2pu3BfC/tWUQV1UbaROLl2ZOjxG1pSrUEKf2f/9Aa?=
 =?us-ascii?Q?XcT3lvKbxLKOczlZosQhGiP+OQupSEnXCgX53MtL4B0goGHvxudTr9x1MTB0?=
 =?us-ascii?Q?IAEGU+Jy/pOObL2Zy9Zl5j0TpUhluScsfNB3r7iYq96/lSIDhoj+OgVVz6U1?=
 =?us-ascii?Q?zksdB5hglCDYWXYNxfAzT41V8pcS97M8CPRr39ERjxzlV9mVFXZ/nCLssx8S?=
 =?us-ascii?Q?Viji4RUCkYwb8DCfYDJb5WUMuodY7TT17Clo+tQ/ecsNFreY2qvJKomkMOIx?=
 =?us-ascii?Q?XjdwyVMWnP/iqLUkam36UBeZcHZF6jcoJT2grbz4CWd3hI0FMXcEfWU+qjgD?=
 =?us-ascii?Q?SJJ1cmzGjNu15FWAqoQd7kZ8UyYB5msIsHGcnPs5V+SAth5NjRgVBmgI8w+S?=
 =?us-ascii?Q?0yA1lAWB7Akm5NyWVGpZwIW7EaGuJMmiA7SzwHBNrEDGBcHbc3cWRV3xtR/i?=
 =?us-ascii?Q?54XvG3mwfYZnCyx7AMxOaANDC3AfsDePIcqFjC1xjwvFgZMzKAz2Aae2CFtO?=
 =?us-ascii?Q?y/K9WD8zTkNPhX0o8uMbwuJDFmOo45zC78QVP0sSlrJEqWQKGJM+QZ4UnOYR?=
 =?us-ascii?Q?OW5ibsSYGNiBNIo812bDQvkyYUUWU3XWyhDDOzI2Wpgrtvy63cPKMSMcQMeZ?=
 =?us-ascii?Q?TYJf6THeNS1Fa2/5Ues1niS76QAngkmemIX6gVbKlFf8EJWqlUwUlNatun3f?=
 =?us-ascii?Q?dNQzbvGQTKa4lfRz5ArriK7rypGSRzVSJFx447Q8B5w7yeY7Aqyk/VGW0+Ed?=
 =?us-ascii?Q?AJOmX1G5AgPSDZUKqxa54kiItITHDQuh1xqXx4fOnCQRxNv1+RlBClBsAEYN?=
 =?us-ascii?Q?03Li/TE1iCHZ9lVXuYP/dqTxMlVv6/aD3Na+Gk0IaBECZ+QWR0FerB/6PfPq?=
 =?us-ascii?Q?WG/gFyuoHXuzFBlfgLgUwgRPn4Ws757cNqxwRmp7e/NZkq9wdQ9tAjTSwRr6?=
 =?us-ascii?Q?kDEtuqaPAo8f3Lrwc4FKwQMbr2cGCbJoUirArbQ6Drmr95dtsz/0MP7t8ovg?=
 =?us-ascii?Q?y39TeF5qTX5RVK439SRHXyI2rbGbPB85P32245kpCS8MO4zPUcmaX7tCBXAW?=
 =?us-ascii?Q?vmr3jbJ8CJNFPKMKIZWtsPHgaHCh75Ybavc0EzDYDHi991WxWQD+BndNjXEw?=
 =?us-ascii?Q?tgDPanNmhf+xKTSdfU9pb8LPPr6TQmHhVyt/XkI6tkfYIrRZ4U0oZB+UBNbC?=
 =?us-ascii?Q?ZuTwi4Ab1LZjCqR+7ZBbioa71D8y44CSd6WDgRfURoh1PTDoskV608VSTm8C?=
 =?us-ascii?Q?P3vDOYEoM+/Rn3LlI5+2pmGX+ioo0D8jbejE1jhXmLuYZbZGKEawohgRIODW?=
 =?us-ascii?Q?qt+LFf6vQvOFuIEHG338hnp3n2s07TjMqo2JTa4tI7bpTFdrYc9pRaVJlq85?=
 =?us-ascii?Q?eKqKaSULNVRwTZ5KP/Ibnw7kDx6Hq1tPW+k2co3etXVSUkkNbr6+GB76YdzP?=
 =?us-ascii?Q?ytmDTnHmQ+ReNW+pd7ZEM/zUwsd9/BbGdmYeXrFaF3At/iTJoV2OKcgElkKh?=
 =?us-ascii?Q?nWUKilTGV4xgjryHcaGC6w9NF9y+bybEa19UJRimjL36ghV7Ews7uEm1LuDs?=
 =?us-ascii?Q?dMh6BtkGeS7EyydzW+mk50ZmhB3bWpqeX9FH4H3dc2kK?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: baad517f-c61c-4c2e-644b-08dccb2c843b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2024 08:52:03.5575 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iz4SCZJ7z0tyysREwbM4GAdNY38m0fqP5TPY5zQt0tSb3ZwhhV8rE8TZQTfZ3MPBkea9HS13x1c7DlCYUwjTeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4784
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

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 29, 2024 8:18 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Vivi, Rodrigo <rodrigo.vivi@int=
el.com>;
> De Marchi, Lucas <lucas.demarchi@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>
> Subject: [PATCH v2 5/6] drm/i915/hdcp: migrate away from kdev_to_i915() i=
n
> GSC messaging
>=20
> Use to_intel_display() instead of kdev_to_i915() in the HDCP component AP=
I
> hooks. Avoid further drive-by changes at this point, and just convert the=
 display
> pointer to i915, and leave the struct intel_display conversion for later.
>=20
> The NULL error checking in the hooks make this a bit cumbersome. I'm not
> actually sure they're really required, but don't go down that rabbit hole=
 just
> now.
>=20
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
> ---
>  .../drm/i915/display/intel_hdcp_gsc_message.c | 67 +++++++++++++------
>  1 file changed, 45 insertions(+), 22 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index 6548e71b4c49..35bdb532bbb3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -7,6 +7,7 @@
>  #include <drm/intel/i915_hdcp_interface.h>
>=20
>  #include "i915_drv.h"
> +#include "intel_display_types.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
>  int
> @@ -15,17 +16,19 @@ intel_hdcp_gsc_initiate_session(struct device *dev,
> struct hdcp_port_data *data,  {
>  	struct wired_cmd_initiate_hdcp2_session_in session_init_in =3D {};
>  	struct wired_cmd_initiate_hdcp2_session_out session_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ake_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_init_in.header.api_version =3D HDCP_API_VERSION;
>  	session_init_in.header.command_id =3D
> WIRED_INITIATE_HDCP2_SESSION; @@ -72,17 +75,19 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,  {
>  	struct wired_cmd_verify_receiver_cert_in verify_rxcert_in =3D {};
>  	struct wired_cmd_verify_receiver_cert_out verify_rxcert_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_cert || !km_stored || !ek_pub_km || !msg_sz)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_rxcert_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_rxcert_in.header.command_id =3D WIRED_VERIFY_RECEIVER_CERT;
> @@ -135,17 +140,19 @@ intel_hdcp_gsc_verify_hprime(struct device *dev,
> struct hdcp_port_data *data,  {
>  	struct wired_cmd_ake_send_hprime_in send_hprime_in =3D {};
>  	struct wired_cmd_ake_send_hprime_out send_hprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_hprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	send_hprime_in.header.api_version =3D HDCP_API_VERSION;
>  	send_hprime_in.header.command_id =3D WIRED_AKE_SEND_HPRIME;
> @@ -183,17 +190,19 @@ intel_hdcp_gsc_store_pairing_info(struct device
> *dev, struct hdcp_port_data *dat  {
>  	struct wired_cmd_ake_send_pairing_info_in pairing_info_in =3D {};
>  	struct wired_cmd_ake_send_pairing_info_out pairing_info_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !pairing_info)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	pairing_info_in.header.api_version =3D HDCP_API_VERSION;
>  	pairing_info_in.header.command_id =3D
> WIRED_AKE_SEND_PAIRING_INFO; @@ -234,17 +243,19 @@
> intel_hdcp_gsc_initiate_locality_check(struct device *dev,  {
>  	struct wired_cmd_init_locality_check_in lc_init_in =3D {};
>  	struct wired_cmd_init_locality_check_out lc_init_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !lc_init_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	lc_init_in.header.api_version =3D HDCP_API_VERSION;
>  	lc_init_in.header.command_id =3D WIRED_INIT_LOCALITY_CHECK; @@ -
> 280,17 +291,19 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,  {
>  	struct wired_cmd_validate_locality_in verify_lprime_in =3D {};
>  	struct wired_cmd_validate_locality_out verify_lprime_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !rx_lprime)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_lprime_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_lprime_in.header.command_id =3D WIRED_VALIDATE_LOCALITY;
> @@ -330,17 +343,19 @@ int intel_hdcp_gsc_get_session_key(struct device
> *dev,  {
>  	struct wired_cmd_get_session_key_in get_skey_in =3D {};
>  	struct wired_cmd_get_session_key_out get_skey_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data || !ske_data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	get_skey_in.header.api_version =3D HDCP_API_VERSION;
>  	get_skey_in.header.command_id =3D WIRED_GET_SESSION_KEY; @@ -
> 382,17 +397,19 @@ intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct
> device *dev,  {
>  	struct wired_cmd_verify_repeater_in verify_repeater_in =3D {};
>  	struct wired_cmd_verify_repeater_out verify_repeater_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !rep_topology || !rep_send_ack || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	verify_repeater_in.header.api_version =3D HDCP_API_VERSION;
>  	verify_repeater_in.header.command_id =3D WIRED_VERIFY_REPEATER;
> @@ -442,6 +459,7 @@ int intel_hdcp_gsc_verify_mprime(struct device *dev, =
 {
>  	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>  	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out
> =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>  	size_t cmd_size;
> @@ -449,11 +467,12 @@ int intel_hdcp_gsc_verify_mprime(struct device
> *dev,
>  	if (!dev || !stream_ready || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	cmd_size =3D struct_size(verify_mprime_in, streams, data->k);
>  	if (cmd_size =3D=3D SIZE_MAX)
> @@ -504,17 +523,19 @@ int intel_hdcp_gsc_enable_authentication(struct
> device *dev,  {
>  	struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>  	struct wired_cmd_enable_auth_out enable_auth_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	enable_auth_in.header.api_version =3D HDCP_API_VERSION;
>  	enable_auth_in.header.command_id =3D WIRED_ENABLE_AUTH; @@ -
> 549,17 +570,19 @@ intel_hdcp_gsc_close_session(struct device *dev, struct
> hdcp_port_data *data)  {
>  	struct wired_cmd_close_session_in session_close_in =3D {};
>  	struct wired_cmd_close_session_out session_close_out =3D {};
> +	struct intel_display *display;
>  	struct drm_i915_private *i915;
>  	ssize_t byte;
>=20
>  	if (!dev || !data)
>  		return -EINVAL;
>=20
> -	i915 =3D kdev_to_i915(dev);
> -	if (!i915) {
> +	display =3D to_intel_display(dev);
> +	if (!display) {
>  		dev_err(dev, "DRM not initialized, aborting HDCP.\n");
>  		return -ENODEV;
>  	}
> +	i915 =3D to_i915(display->drm);
>=20
>  	session_close_in.header.api_version =3D HDCP_API_VERSION;
>  	session_close_in.header.command_id =3D WIRED_CLOSE_SESSION;
> --
> 2.39.2

