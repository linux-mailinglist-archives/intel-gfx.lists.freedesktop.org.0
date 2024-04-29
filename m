Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C03468B564D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 13:16:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FDF6112B9F;
	Mon, 29 Apr 2024 11:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxL5X1cD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8658112B9F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 11:16:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714389406; x=1745925406;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8UcYjx4siIDZQtIE73F3YeCdRgFt2IYoV9FNl2wGlD4=;
 b=jxL5X1cDr1rxjIOuBmSJkA4S7NKScH4sraO/LEgjYx3wz4p3J3mZwXyQ
 411753Qnai5V/knR6zx7+F8Di8h1TlGmIITgN/wAwNn/WD2VO5wAlBGLf
 G/kxMCKTIfqjC6Rh5Zau0d2lcUrZHHMnfYpVG9rDQHkDGMNYfE/LouhAY
 eeXhblLdmNkR68sIxonNyo3Gc8aeAxaTJHloD60ZPKgucXx5GViWuphhq
 I61bv02UQggpfNQ17kq/MrCzNfAFtXrlrPubvAGZ7Debqp9CEdMWd+026
 81z/6ca7Q3JsyDTD4AKyyKyrtztPUHSozBzr6hE2wEMMiYWWXVe0eYh+n w==;
X-CSE-ConnectionGUID: RCcx5OWwRWuTyMaL5fvqiA==
X-CSE-MsgGUID: JiQMaPLNTzG5Hya7N3/lHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11057"; a="20731941"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="20731941"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 04:16:45 -0700
X-CSE-ConnectionGUID: La0B1/WES1ysmF3JvcKWxg==
X-CSE-MsgGUID: ZvJnnl/8RDWk2lByqj16xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="26071212"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 04:16:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 04:16:45 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 04:16:45 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 04:16:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V3E82ANcw6oZ5dK7WG8i5U40RXBAabBuRva592Gw5g4yTk8jAAjyaom1eqOU/JUfAPjn+ceyYoXIowTvbEe1d1vIceB3v1cpF3uQT7N4OTScYIVQNyYe0Y1SJN5ANuLiQ+poAZhPbJ8TRFsAmTpmFR2AyNBuqpzKe/NKGf2mvifkNYD7eOsK6r/CiTTrRuJOmWQZlL8aKjeGZMLkFD9Tg4ruokdrcwTsijotaMpEt5GYaUiqjpzuoQoO7ce0lT+VK9YtfIUvKDKaW186TAC3qXKQ2dSKlOugFayjBOPFJvFHlkXQfVu6Y6XPL/pLYyWdL8wKcadxTjLb2El7WFzcJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8UcYjx4siIDZQtIE73F3YeCdRgFt2IYoV9FNl2wGlD4=;
 b=ITaAIYxRwJfXzuop2mrrwcxZs2r/kSFyV4rmRnIWyaUiJAr0aSx0RlQWR07PyhlxYejx5U/RjyOkUnH1Om0ahuhzyhNssfNB2UWgcaCKUKgUZW1Qe0YJN1z/JHhatcY+oZwy5T1yfJfnQeD4CJkY6OE0cdXtX6/0GDYMnlzutBBoDg6aFHndiIcdIdCFSaDiS2J8GySNGeRZ6RT57Dgck2RC7CwWF9QTVUFkhO7i9nlzdqqmYPteZ+aeTqIZ+KcFEMs3ATH2HpKbbVmCaxyg+9wa2AhN5slo7F0S4a9KTHduwn0mj/iIJRj9ZFh3sY6Lghw48O7f5sKFDi6lKXhKKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 11:16:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 11:16:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v7 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v7 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHaklLS+bDwN6kamU6jMaUbCrPcp7F/JO+AgAADwYA=
Date: Mon, 29 Apr 2024 11:16:25 +0000
Message-ID: <7a26db3d48f6410e5b554c4417e397e18635f295.camel@intel.com>
References: <20240419121141.2665945-1-jouni.hogander@intel.com>
 <20240419121141.2665945-7-jouni.hogander@intel.com>
 <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59810085CCECB6DB47C1E2C9F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4777:EE_
x-ms-office365-filtering-correlation-id: 9741d345-90ec-4a7d-fab7-08dc683dceca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?SWR3YlBub29Nc0xJTEdNZ2ZaZnFGTW5KcW5oY1RsemJjaVMwYjluQjV5S2p3?=
 =?utf-8?B?UEdxNlpYZ1hyUzZaQmFYb2NlMHRiWE44bmlYUFE0bkRKckp4ZFVuZmZoRlZx?=
 =?utf-8?B?T0VkanNkTmJQbnBteGpGYkZFNU1vcitHMGRRdVpQd29iSUltekZqSFd1UWxI?=
 =?utf-8?B?QWlWVWk4VllLTnpxT0ZxandiaWFKU1N4OUYzUkFWSFYwUThMWVJDUmlyclVC?=
 =?utf-8?B?OCsxcHdEMFpxNFR2a01zajZscnUzV3R3eUhad2pyVmErMklpV2E1Qko1Y2VS?=
 =?utf-8?B?b3RYcUhzUnNtc2xDWE50TlRkUUhJSTVsemtZOEZ0RllyODZBOUxneUtrdG8x?=
 =?utf-8?B?clZWVm5BMDdWZGJtaU1pU0UwOFZ2dm5jaHdLWTB5d1NnWUxseUF6Sy92NGJI?=
 =?utf-8?B?K29xZ0xHUC9tVWN0aFo5dUVyK0h0V2h4OTJ3M1dDQWsvcWtBN0JXS0xIWDdK?=
 =?utf-8?B?Nm9Yd2swd3RDc1RRNUE1R3hKeFJ0NUIzSEFoRVVqTExxSkJzTVlPODVXUTJ3?=
 =?utf-8?B?Z0lXNWlwNXh3alNXSWdZS29xSlF0ZWdBOGVRdXFueFMzRGlEMkV4TUpmR0l4?=
 =?utf-8?B?a2xSTXFCd1lNZDUxY1Nkb0xGRGRMaDduRS85elBZeEsxT1RDZnlEbGRUdHdq?=
 =?utf-8?B?aWJwUEJ6STRVSGJMcTMyb0pxcmNBWThlcis5K1ZLR2VEYWNSU0oybDQ3cUVj?=
 =?utf-8?B?Z0xiSFBWYmlWUlBvRGlTelBPZlVUU2VsTUpwci9HUURXU0VqNEVFVGtOL0dF?=
 =?utf-8?B?Ui9oUnFpNWxSTGFWSW8yaXlxa1NNYUY2T01wMnNJbzUvbjA5K2ROS3FnbVBO?=
 =?utf-8?B?VDFUeDZiUTVka2pjWk80WTFncW00elhULzBvS0x4cjFUYlpkaFlNK1pORzAz?=
 =?utf-8?B?d1c0bXlzOFdaRnZNZXo1WXBLdkM3MHh1RG1BK0VlZDduWGtkR1lUQzBVYWtL?=
 =?utf-8?B?K0xMUTkybTJUSEV3SUp3L2ROVWx0NlZIVEFFeEtPV2VZbENMN1lWbHo4TzVz?=
 =?utf-8?B?RGd5UWcyaE0rUzYxb2VYZmFDSWFrWU1vK2ExSU5tMDNJVUN6TEZFVXh2TW0z?=
 =?utf-8?B?a01yeU1PL3FjR3RSdGk5UEg2QjVuY1owTGJtdXpjbGUwTWo0THZKQm55MVRm?=
 =?utf-8?B?UTBUUzIzM0NQNC9sNHhuWUZpbkQ4cDdmYlh0UGR1cnVCTCt6Vmp0ZkRCWURD?=
 =?utf-8?B?YktYcUFSMGI5eGF6OVJENER4bjBUajBIdWM4TzlueHJEYk96MXdVanlna2pm?=
 =?utf-8?B?RVorRmpwRUk4bVppdVo2YnlnakVhOWZ2Zk9CS2VUKzBsNlZCTXkwb24yTVF2?=
 =?utf-8?B?Rk1sYk9rOFVPQU11M1VOekNvZDlsUnNhWU5CTlNsa1QvNU1xNkRIQ3hRM3ZK?=
 =?utf-8?B?R2xvN3ZsWDBvelRVY29jMms4YjRsMHc1TC9IeWR3L05BSEFOZzJ5WUhxQUVt?=
 =?utf-8?B?amdGZ3V5eDVMV3RqZTZ1WFBYaTRvVGtuZFpqbXlWTSt4M3JwMHBPY2d0Tnh0?=
 =?utf-8?B?VFZvbHdFd2ltc0xnR1BrYjc0ZUVRSWxUcEoxMXNpVGtMNHRHUHRCYUIxNm1i?=
 =?utf-8?B?UEY1d0MrWXJxOWZMUmdQU3ZkRGEyWUtna0FkK1FkRFZrRlJYakJNdllkelN5?=
 =?utf-8?B?NGIrR2hLV3hrT1dDVzd4M0tyRFlma08wQXNRbkpnTmdGa2dFSmEzRkYzN1Fi?=
 =?utf-8?B?WDF0OTk4VkFYQnRFcktMNWpSYjE1b1FsZjdLZjBqUFl3cG5TR1pDQ1ppT2Z2?=
 =?utf-8?B?dEZaNTRnL1c1Zm1jWmRIU0ppYVpYdHFZaytua0lQRGxHWWFiMjNsNjQzMDZK?=
 =?utf-8?B?dHJVNEdxSEtaQVh1YVJNQT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SjJWb1ZlZ1djeHRiVGE0bE01ZllRSDlvd3RwZXovWGxQRWR4cUFTaEpjazAx?=
 =?utf-8?B?bStqcHJNbU1aZFJhMGhpSXRXL1BScEJCc3FEUmlhZTg1VGU3ME1BTnVnUFpK?=
 =?utf-8?B?OS90U3MweWx2c1JvZ3ZlYUcvNmZxZEhqeVc1czRiN0R6UUl2UnpXbVdmc3dZ?=
 =?utf-8?B?c09kVml6ZEU1RWlUVG5PWlUzM1NkSGRXclpyWGFzVHVvUlJvcDBKVEZlVzRF?=
 =?utf-8?B?Mlo2WGhOMzVkeHRQK1B2OEtPdTRqMTdaWktqL3BUOENlUzYxSGlldW5pVDA3?=
 =?utf-8?B?MVRtanV5ZWE3cjBSVVZneWlmbnNHc3RCZVk5OCtiV3B6Z0oxSmRnb3plcDBQ?=
 =?utf-8?B?N25lSjdURVpNVE1yREJJeStIRmE3cWJaQUI1djdUWjN1dk15K3VHY21ONlp2?=
 =?utf-8?B?MUlVbjMwVEVibGxtQWdKcmswdzJZUjBrNEFOUHRMQ1ZDeGppOG9XRVA1R0g1?=
 =?utf-8?B?RDVoQnNzQnNkb1BiL09ySU96Rm14ZStodjhtSXVyempJUWpYaldXREhnZjlK?=
 =?utf-8?B?UTZUNERjT1U1S1hmak9UbFIwdTQ5clJabHlKamppQkNxQ2xTaG5tSDVySDdh?=
 =?utf-8?B?a2xhWnlycStScTZXSTFoNDVYZDBuZjJnTHBURXFyQjdmemFuNTFOK01Fd3Ny?=
 =?utf-8?B?R2lhNmIwanFPVFFPNmRSSTJ3QkIrOGNuUko4VDhaejdYelVVVXB3anFROFJz?=
 =?utf-8?B?bUh6dzhjT2pNYVZlbjlJVHFzTlkzWEk0SHJwQjRxZlpFS0hta2YweFNQb3Jj?=
 =?utf-8?B?VkxMbzkyRWxJaGlUcDlET09GRzJiQXl0SXBGMGJxMFhaSXduL25lM28rS25w?=
 =?utf-8?B?UmpOREQ2Uk5KaS9HZlpLWWdiM3BtTDRKcFFFcjA3MDZBZFRTcnRDN3p2SVBB?=
 =?utf-8?B?N3JXRnRuNk9haDU3d1ZQR1VIcTFoMFRSZyswa2N0TzJHaXZTZjZTZGMyVTZT?=
 =?utf-8?B?d2FwRlM0K2pNMng1MUtqSjl3YlBOMEVxOHNqSGFiZnhhSG5XZzFuczk5bEht?=
 =?utf-8?B?WjRIZDVRamhnR05BYUY4ZC9hckUxbjduVVJKWGpKTXhLdnRabHVXVElyWjFR?=
 =?utf-8?B?NDNsRnluZU51cEgzVlZQMUlrbjVWMTVjUGkrbVczNTNVdGxpVWhrRVJUUU1s?=
 =?utf-8?B?Y3pIL1JuV3BYaWh0QVgrNVgyZ090QXUwUkRENkZ2NVJSZmtKMlpuZ0xrTk5w?=
 =?utf-8?B?VjR3Z3hMR0o3bUxSZXBHcDBmdUpwS0I0bkhub3piRjJsTGZpc1hvdDBHVTV3?=
 =?utf-8?B?NENCRVVtY3VXWEk3UnpWdTVPNGhEbkV3TWszcld6a0JNTTZ6QlZFeHZTSmYv?=
 =?utf-8?B?cVJkZzRsY1hvLzIwSUh0L3VBNGFVTWdJckNZbEk3NGtmbDJwek4rRUJySC9M?=
 =?utf-8?B?cHVDdnh5NkIxZ05zdk5BUjFoOXdpenlTajJiVVJ1M1ZmUTBYZVZKZk9JSlpV?=
 =?utf-8?B?S2ZtUFZSSzZhRUltNWlEWVVPQ0g0bWFscnM4c0F2YXZLZFR3eTJlcmxIYmYz?=
 =?utf-8?B?S25aZzhVQlRrc1VCT2FtMmo3aW1xY2J1akNuVkZqeDRrR3NkRGR5MlpWaDBB?=
 =?utf-8?B?cEJGNmVsbXcrbk5UWGFRTnRFQjFPYjVMQWNuSWxtMDVSR2ExYjVZRDZpS0M5?=
 =?utf-8?B?akFJZk1kUGsrelpqdklCNkE3eFg3WUZ6Y0FvTzIzYmM2VkNQOEJNbnc3eitK?=
 =?utf-8?B?WGVhWFhxeDB5YlRheEpTK05XOVZCLzRvbjU1Z1RPL2FMYytwTmtJaGtOdzlp?=
 =?utf-8?B?a09HVXptZkNOdjQ2TjEvcEd6NzNtVTJHdkpBalpiNmNtdFBaN3VSUnJaWWtD?=
 =?utf-8?B?dzdYbFZzRjJSYXhpTDFwODcyN3YxMTl2OVZxdzRPRE5IOVVTZk00b1lJdVp1?=
 =?utf-8?B?MG5uZnduV1hJWDZCSEZLTC9wTWR6SHZZQzRaallVRXVhRXR1MnYxWW5IT3o0?=
 =?utf-8?B?YUR3U014SUJuait5MzdIRXVNNXg1YnRSS0YzSlY2YU1aam9EMlVRL3FIMVJm?=
 =?utf-8?B?Ni9yeVlnYXE2N0NIcFBGRUFBU3daMzc3L3ppQzdDQ1RSdVgyVERWMkdiRGhi?=
 =?utf-8?B?dTNMdjU2NFcreEp5Z29LaUdOR3hvcGYxdENHeC8wQXdVaHBkR0FXc2EzSDFR?=
 =?utf-8?B?N3hYbWVWMldhVVdDYkVCZGIyeVRtYWZnN3A4SmExOENQWGJDR3BoZE9MYjRu?=
 =?utf-8?B?cGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <091D6B6001E4E44B865F6AC790E5C664@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9741d345-90ec-4a7d-fab7-08dc683dceca
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 11:16:25.1070 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: srK76AuiDYVf+bkIFCwYi9jaE9PKuI98Ve2l+MaIc8TcxxA448/az5UTLLt8Rq4awBlnfw1u/74TTNp6ydKBAxRNB57N/xOuImGxAqj7044=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
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

T24gTW9uLCAyMDI0LTA0LTI5IGF0IDExOjAyICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+IFNlbnQ6IEZyaWRheSwgQXByaWwg
MTksIDIwMjQgNTo0MiBQTQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
PiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRl
ciwgSm91bmkKPiA+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiBTdWJqZWN0OiBbUEFU
Q0ggdjcgMDYvMTFdIGRybS9pOTE1L3BzcjogTW9kaWZ5Cj4gPiBpbnRlbF9kcF9nZXRfc3VfZ3Jh
bnVsYXJpdHkKPiA+IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5Cj4gPiAKPiA+IEN1cnJlbnRseSBp
bnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkgZG9lc24ndCBzdXBwb3J0IHBhbmVsIHJlcGxheS4K
PiA+IFRoaXMgZml4IG1vZGlmaWVzIGl0IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5IGFzIHdlbGwu
Cj4gPiAKPiA+IHYyOiByZWx5IG9uIFBTUiBkZWZpbml0aW9ucyBvbiBjb21tb24gYml0cwo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4KPiA+IFJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT4KPiA+IC0tLQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgNjIKPiA+ICsrKysrKysrKysrKysrKysrKysrKy0tLQo+ID4gwqAxIGZpbGUgY2hhbmdl
ZCwgNTUgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggYjk0ZjhlMzNlZDFmLi4y
OTQwMGZhYzEzYzIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jCj4gPiBAQCAtNDY2LDYgKzQ2Niw0MCBAQCBzdGF0aWMgdTgKPiA+IGludGVsX2RwX2dl
dF9zaW5rX3N5bmNfbGF0ZW5jeShzdHJ1Y3QKPiA+IGludGVsX2RwICppbnRlbF9kcCkKPiA+IMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gdmFsOwo+ID4gwqB9Cj4gPiAKPiA+ICtzdGF0aWMgdTggaW50
ZWxfZHBfZ2V0X3N1X2NhcGFiaWxpdHkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgewo+ID4g
K8KgwqDCoMKgwqDCoMKgdTggc3VfY2FwYWJpbGl0eTsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDC
oGlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpCj4gCj4gV2hp
bGUgcmVsb29raW5nIGZvdW5kIHRoYXQgZ29vZCB0byBhZGQgYSBjaGVjayBmb3IKPiBEUF9QQU5F
TF9QQU5FTF9SRVBMQVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQgKDZ0aCBiaXQgb2YgZHBjZCAw
eGIxKS4KPiBXaGF0IGlmIGl0IGlzIHplcm8gbWVhbnMgZ3JhbnVsYXJpdHkgbm90IG5lZWRlZCBi
dXQgd2lsbCBjb250aW51ZSB0bwo+IHVzZSB4LWdyYW51bGFyaXR5IGFuZCB5LWdyYW51bGFyaXR5
LgoKUGxlYXNlIG5vdGUgaXQgaXMgNXRoIGJpdCBpbiAweGIxLiBTZWUgbXkgZnVydGhlciBjb21t
ZW50IGJlbG93Li4uCgo+IFJlZ2FyZHMsCj4gQW5pbWVzaAo+IAo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAKPiA+IERQX1BBTkVMX1BBTkVMX1JFUExBWV9YX0dSQU5VTEFSSVRZLAo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZz
dV9jYXBhYmlsaXR5LCAxKTsKPiA+ICvCoMKgwqDCoMKgwqDCoGVsc2UKPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBzdV9jYXBhYmlsaXR5ID0gaW50ZWxfZHAtPnBzcl9kcGNkWzFd
Owo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIHN1X2NhcGFiaWxpdHk7Cj4gPiArfQo+
ID4gKwo+ID4gK3N0YXRpYyB1bnNpZ25lZCBpbnQKPiA+ICtpbnRlbF9kcF9nZXRfc3VfeF9ncmFu
dWxhcml0eV9vZmZzZXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgewo+ID4gK8KgwqDCoMKg
wqDCoMKgcmV0dXJuIGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCA/
Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRFBfUEFORUxfUEFORUxfUkVQTEFZ
X1hfR1JBTlVMQVJJVFkgOgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoERQX1BT
UjJfU1VfWF9HUkFOVUxBUklUWTsKPiA+ICt9Cj4gPiArCj4gPiArc3RhdGljIHVuc2lnbmVkIGlu
dAo+ID4gK2ludGVsX2RwX2dldF9zdV95X2dyYW51bGFyaXR5X29mZnNldChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKSB7Cj4gPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gaW50ZWxfZHAtPnBzci5z
aW5rX3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0ID8KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWV9HUkFOVUxBUklUWSA6Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZOwo+ID4gK30K
PiA+ICsKPiA+ICsvKgo+ID4gKyAqIE5vdGU6IEJpdHMgcmVsYXRlZCB0byBncmFudWxhcml0eSBh
cmUgc2FtZSBpbiBwYW5lbCByZXBsYXkgYW5kCj4gPiBwc3IKPiA+ICsgKiByZWdpc3RlcnMuIFJl
bHkgb24gUFNSIGRlZmluaXRpb25zIG9uIHRoZXNlICJjb21tb24iIGJpdHMuCj4gPiArICovCgpD
aGVjayB0aGlzIGNvbW1lbnQuIFNlZSBteSBmdXJ0aGVyIGNvbW1lbnQgYmVsb3cuLi4KIAo+ID4g
wqBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3RydWN0IGludGVsX2Rw
Cj4gPiAqaW50ZWxfZHApwqAgewo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7IEBAIC0KPiA+IDQ3MywxOAo+ID4g
KzUwNywyOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3RydWN0
IGludGVsX2RwCj4gPiAqaW50ZWxfZHApCj4gPiDCoMKgwqDCoMKgwqDCoMKgdTE2IHc7Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgdTggeTsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgLyogSWYgc2luayBk
b24ndCBoYXZlIHNwZWNpZmljIGdyYW51bGFyaXR5IHJlcXVpcmVtZW50cyBzZXQKPiA+IGxlZ2Fj
eSBvbmVzCj4gPiAqLwo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCEoaW50ZWxfZHAtPnBzcl9kcGNk
WzFdICYKPiA+IERQX1BTUjJfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQpKSB7Cj4gPiArwqDCoMKg
wqDCoMKgwqAvKgo+ID4gK8KgwqDCoMKgwqDCoMKgICogVE9ETzogRG8gd2UgbmVlZCB0byB0YWtl
IGludG8gYWNjb3VudCBwYW5lbCBzdXBwb3J0aW5nCj4gPiBib3RoIFBTUgo+ID4gYW5kCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBQYW5lbCByZXBsYXk/Cj4gPiArwqDCoMKgwqDCoMKgwqAgKi8KPiA+
ICsKPiA+ICvCoMKgwqDCoMKgwqDCoC8qCj4gPiArwqDCoMKgwqDCoMKgwqAgKiBJZiBzaW5rIGRv
bid0IGhhdmUgc3BlY2lmaWMgZ3JhbnVsYXJpdHkgcmVxdWlyZW1lbnRzIHNldAo+ID4gbGVnYWN5
Cj4gPiArwqDCoMKgwqDCoMKgwqAgKiBvbmVzLgo+ID4gK8KgwqDCoMKgwqDCoMKgICovCj4gPiAr
wqDCoMKgwqDCoMKgwqBpZiAoIShpbnRlbF9kcF9nZXRfc3VfY2FwYWJpbGl0eShpbnRlbF9kcCkg
Jgo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9QU1IyX1NVX0dSQU5VTEFSSVRZX1JF
UVVJUkVEKSkgewo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBBcyBQU1Iy
IEhXIHNlbmRzIGZ1bGwgbGluZXMsIHdlIGRvIG5vdCBjYXJlCj4gPiBhYm91dCB4Cj4gPiBncmFu
dWxhcml0eSAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB3ID0gNDsKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGdvdG8gZXhpdDsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9CgpUaGlz
IGJsb2NrIGlzIHRha2luZyBjYXJlIG9mIGNoZWNraW5nIGJpdCA1IGluIDB4YjEgYW5kIHVzaW5n
IGxlZ2FjeQpvbmVzIGlmIG5vIHJlcXVpcmVtZW50cy4KCkJSLAoKSm91bmkgSMO2Z2FuZGVyCgo+
ID4gCj4gPiAtwqDCoMKgwqDCoMKgwqByID0gZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1
eCwKPiA+IERQX1BTUjJfU1VfWF9HUkFOVUxBUklUWSwgJncsIDIpOwo+ID4gK8KgwqDCoMKgwqDC
oMKgciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgCj4gPiBpbnRlbF9kcF9n
ZXRfc3VfeF9ncmFudWxhcml0eV9vZmZzZXQoaW50ZWxfZHApLAo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAmdywgMik7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgaWYgKHIgIT0gMikKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbmFibGUgdG8gcmVhZAo+ID4gRFBfUFNSMl9T
VV9YX0dSQU5VTEFSSVRZXG4iKTsKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbmFibGUgdG8gcmVhZCBzZWxlY3RpdmUgdXBkYXRlIHgK
PiA+IGdyYW51bGFyaXR5XG4iKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gwqDCoMKgwqDC
oMKgwqDCoCAqIFNwZWMgc2F5cyB0aGF0IGlmIHRoZSB2YWx1ZSByZWFkIGlzIDAgdGhlIGRlZmF1
bHQKPiA+IGdyYW51bGFyaXR5IHNob3VsZAo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGJlIHVzZWQg
aW5zdGVhZC4KPiA+IEBAIC00OTIsMTAgKzUzNywxMiBAQCBzdGF0aWMgdm9pZAo+ID4gaW50ZWxf
ZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQo+ID4g
wqDCoMKgwqDCoMKgwqDCoGlmIChyICE9IDIgfHwgdyA9PSAwKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqB3ID0gNDsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgciA9IGRybV9k
cF9kcGNkX3JlYWQoJmludGVsX2RwLT5hdXgsCj4gPiBEUF9QU1IyX1NVX1lfR1JBTlVMQVJJVFks
ICZ5LCAxKTsKPiA+ICvCoMKgwqDCoMKgwqDCoHIgPSBkcm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9k
cC0+YXV4LAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoAo+ID4gaW50ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zmc2V0KGludGVs
X2RwKSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgJnksIDEpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyICE9IDEpIHsKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwKPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJV
bmFibGUgdG8gcmVhZAo+ID4gRFBfUFNSMl9TVV9ZX0dSQU5VTEFSSVRZXG4iKTsKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJVbmFibGUg
dG8gcmVhZCBzZWxlY3RpdmUgdXBkYXRlIHkKPiA+IGdyYW51bGFyaXR5XG4iKTsKPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgeSA9IDQ7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+
ID4gwqDCoMKgwqDCoMKgwqDCoGlmICh5ID09IDApCj4gPiBAQCAtNTg4LDcgKzYzNSw4IEBAIHZv
aWQgaW50ZWxfcHNyX2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAKPiA+ICppbnRlbF9kcCkKPiA+
IMKgwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfZHAtPnBzcl9kcGNkWzBdKQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBfcHNyX2luaXRfZHBjZChpbnRlbF9kcCk7Cj4gPiAKPiA+
IC3CoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcHNyMl9zdXBwb3J0KQo+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKGludGVsX2RwLT5wc3Iuc2lua19wc3IyX3N1cHBvcnQgfHwKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1
X3N1cHBvcnQpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwX2dl
dF9zdV9ncmFudWxhcml0eShpbnRlbF9kcCk7Cj4gPiDCoH0KPiA+IAo+ID4gLS0KPiA+IDIuMzQu
MQo+IAoK
