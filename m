Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cNlhIvb4HGplUgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:13:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8EDE61922B
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 05:13:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 403BC112D3B;
	Mon,  1 Jun 2026 03:13:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I/Qp6/WS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77BCA112D3A;
 Mon,  1 Jun 2026 03:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780283635; x=1811819635;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oryQuwM7cSzXRMIg1dF7As9GpEoxNzo8T5HLUXTDyRU=;
 b=I/Qp6/WSJY5zyrajVI55tRdY6wiwW5QZ/FjWsJqDXYf8SULFgapMOAaG
 CkwG+eFw/0lxnJ0/hRwEbKm+nE9xFDaPgYl4fKVkSPf3pmj7V1f6X+Yon
 lquigRTXGen4+Wdo5FJCo11H78oD40gcNpzrXyjlaxHgCqmg3uj9DJ5b6
 cmcTvaqnBFwjsFSFQS7KyOnB/BHjH6+4dv5TBsniqx82JaS251ejoLB9m
 Av7dmUw60wmA+trCIdQEnj5gOtH4rnIFmLLzC+H1XsMZexemHdcKu6vAs
 Kesb1qRqtrXBIBwQi52y+r7bSNOTcrWC5u/asUCiD4d1Zp0Qd9mnpsZXp g==;
X-CSE-ConnectionGUID: +UTlqf/BTte6TdHYxrUMCw==
X-CSE-MsgGUID: Y176e4CySCq6HvcHU82B5g==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="81028998"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="81028998"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:13:55 -0700
X-CSE-ConnectionGUID: 5dE3qmsJQq27ERs2+ROqaA==
X-CSE-MsgGUID: Lt3/K8iKRXSeo0MOGgI/ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="243285980"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 20:13:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:13:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 20:13:54 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.36) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 20:13:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zBGm388yqk19BIy6Ckd4/jgKZfUiFbxWtXFiTJU2tDgMFBEf01CCN2cLgjGhjow6J/Kj6ESpkAoIBG0sKsdP0Z4wRe9jAw0Xkyy3MHvK8YkV/ouXIJjIYshxmUe9jUMLU0c+1ZW4hU1LMvZhp0DKEtOlUJKz/UlFYNMnACXTfZCDE3LWVaSbRFhFOqmViINhJ2HBUMCr9QETgUFKeq3oOOjk8JW5Spq2OTLY7D+yLQ991jAID8ZNzxm+HCJC1cGzQYezNhGkQQXmdDtND4kivlAGGUO5P2sbp+00n7F3uBm+aKYH5vlVmyzk4tewc+5njE/owqxp1zOXvCyB3CyPGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oryQuwM7cSzXRMIg1dF7As9GpEoxNzo8T5HLUXTDyRU=;
 b=NobX6wGEy+4/VLQxhSU1peRwnHxIkv388b9QZg95QoZMfV4rPkFxFRGG6zxHNqKO9mnh/KruP2pj3x8Kn5+8v4BxpvK8z9wBR32o1omK8jeD/jRNesg5V+URVk4YE+qCn850zKrhS9m7S5PgNveHJoeQqRfGK/HX454Z77h0nmLDlGX/LbNqLKMF6GIgxz5+RDS7EYfkM43UDgY/ut1JmKjtqu88lBVS5K1hQmMOvu+d7mvOj7peTPY3XfSYXUwhmdiVXxxuyLltKV3ChtlptuttfZch/fVBTdQst/5xtToly5fQm42LOVSHUUy91qrCDf3Pl95f8Id7RFQeZRU6zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH9PR11MB924967.namprd11.prod.outlook.com
 (2603:10b6:510:3e8::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Mon, 1 Jun 2026
 03:13:52 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 03:13:52 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 10/10] drm/i915/bios: remove VS/PE-O warning
Thread-Topic: [PATCH v4 10/10] drm/i915/bios: remove VS/PE-O warning
Thread-Index: AQHc76GAerbe1nsCqkW6his/VtnWHLYpCetw
Date: Mon, 1 Jun 2026 03:13:52 +0000
Message-ID: <DM3PPF208195D8D8063CA54E31D3B7F2357E3152@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-11-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-11-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH9PR11MB924967:EE_
x-ms-office365-filtering-correlation-id: 59033b18-7ad8-47e9-a550-08debf8bcea2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|11063799006|4143699003|56012099006|6133799003|22082099003|18002099003|3023799007|38070700021;
x-microsoft-antispam-message-info: W573O9BKOEDnFCXRPlko6nuQQTJ5ZT8zzHdpnzYvlF/y5Fv3LZDWPHlHIRzzPzXYRx+6fYG9O19YLHQ+zxXkOZe+6GGXt1L4rTXhlkzwwS1+ypi6BN1bDrjlEyvD/8nQbhBUzYXlsvnC1F9M0ZLTNIntoOR+Tovodz+5puuvk6CKuWDtevXanz3WvbWdWIUY++4XcJo03DK71Qhcu5DOozhX/z10N9Drf2JwOueXTB8cGYh4jd+cnII7bjsN0RuP5wiWOq2mPLg4qf3ARZOCR6zccNtaFi1gzEpyoEwpEt3he+NB+TF1ttxjWswAmjpbEn2zOmr3KwZKlYpJk1YBQM65X6HB/WvDT6rjow1w0UslSiNPlJqtqE1KGZy4O8wUITSKFxdxjIPpY92w83KgeFZiIeuLzqkC0Xxfurubr1aNfQlxlHW+2Uws1JWgKPmkIFzhN/qQhDOyk8fPOSFCNB0wJ2NVsppLUZtm7sGxfHU9ei1LYo4WpDsda+9nULS7rewv343uwYNKV8OrZlNT8ovvcVm9Q/gt1sNIxRsz3nhahSUKG4F7xCw3NTpPma14qeYLnKbqtCPp6gYOXZNzkBQdh8fBsTilN+zQQy9MYTcq36jzU8NncretnYRze9zf53GHeJc2R/3TkJcDRXdA353vI/rBXhThYVT30nl5TjVAyk9UEAD5F1LIXGj1JT5I5OECjU2pP8unNXPTs4rC/DjPNwAf6AXy0TlKDEEo3Brj2SDbH0Y5Zw1OnaRqHIiF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(11063799006)(4143699003)(56012099006)(6133799003)(22082099003)(18002099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S3NTNFI5K0owYkFmSk5PY0cvVmhUMXZwTTVQOVI5YU5lU1ZGTGorbm1WeE5H?=
 =?utf-8?B?UnlFNUd1NGs2c296eldBczdQZWpjRjgvN2ZTeVUyYmFWM0JwL0xSbG9Fdjdo?=
 =?utf-8?B?ZXZYRWFubkdjYU56LzFpZ3Y3T1ZrSDhydlNzZzdCQ2tpczNPY3FzMFF6N28w?=
 =?utf-8?B?VDYrM0lLSXZ5ZVdkcHpVaEhWemN2L1hpWHNGRXJhY0MzUHlNM0xVNHhycjFU?=
 =?utf-8?B?VHh2eVZEWUZpNzRpMVN6NklZUHh5eFhpZGRrSlJxendoL1N3VUFEL09WdTMy?=
 =?utf-8?B?WlhNREhDQlR5V3k3dHlXQXB1V3lIMHY2bFBldWk3S1VDRk5wb0tkVnZqMEs4?=
 =?utf-8?B?Nk1TOVJTeEpxTmNUQjRUTUc2NkJveGpsY1BqMldHcGRuQjVTdHkrOFgzQXFM?=
 =?utf-8?B?N3ZKdjU0WFdsSElLRCt1dDg3MFVqemZzYytHcXBJWjk4MlNLeElqRWIwWVFp?=
 =?utf-8?B?WWNBc1hJVUg0Tk0zQjZxUGxxUDA5ZVMyejUvOVVtcmRFb1pycm5WelU5d0pQ?=
 =?utf-8?B?alJjMWgrZGVDQlM4RkVpSjk0VjRmTlpRb0F6T0RKMURMd0NReGJ0N3pCOTRy?=
 =?utf-8?B?TGpUYk9naUdDWWxxbjJmZUxpTDE2OU9GTWxWbUo5Z3ZZVW5xNmlyRDZxSm90?=
 =?utf-8?B?bU5PdDROcnZ2OXYxSlkxVGhUZnJ0YUcwamtRcTZWZ3htRU5lb2J5dVlrVjgv?=
 =?utf-8?B?dnVwMTV2RjFTanJEUFZQamZ3aHJnV0d5Z1NFVXAyaTJVMDJWVzhuanR5a21R?=
 =?utf-8?B?eVBVQk9FZ3FoTkNsaHN5THdoeWRyU2UvdGF6b0tSdEhoQ3FvbGxaUzNwa0Uw?=
 =?utf-8?B?cWN1eXdwT0pTTC9qQ3grSWpkUThqb0JJMVVrSUNBNTNmUFM2VDFmeUpkT00v?=
 =?utf-8?B?YlNMbDZ0KzFhNjFnMDBESTI2QUtOc0t4cmtuVTFoN3I2N3FBekJpVWVEU2Nv?=
 =?utf-8?B?VC8wY3RYajF2NmVoR1psOTlZRlFkdWxqcXRyYklWNFZ0eTlvYjI5bUE5UzZk?=
 =?utf-8?B?MVBmOExRUENjMmROY25lVXYwSWE5bDFwdnhLQ2U5b2tzdzRMaWJDWmttZURN?=
 =?utf-8?B?Ry9mUXVTdHNsQ1ROTE1LY1ZPYytDUDQ1SUNadzFHeEZsY0xtQ2pranIwU1Np?=
 =?utf-8?B?eEExMmlDWTZja3NlTERBeFlaNGVpZlhaYlFrbzZ4Q2ZMMVZxTXVCSThRd201?=
 =?utf-8?B?OXQ2Nk95TU11N2xWRURjOUdIUFFMbC9vYllZRi9ld3czWEtTN0w1enpIdmtB?=
 =?utf-8?B?RWZVbkp2Y3R5ZTBJV3lQQTd4UC9BSWFwT3QwNi9GNUFYWnVoTDhRdjh1ZDk5?=
 =?utf-8?B?UXc3Tmo3NExCZGdYOFp0bGxRSnJnZElrRXI3MHB4NWRaK1ZUcEdtL05UVFMy?=
 =?utf-8?B?bk96dWYrdW1GM3BXS3FvZk96UWl4T25UYjB0bkMzdVl3SDIyOERyYlFkQ2lW?=
 =?utf-8?B?OENzT2IwN2EvVFR5MnJadnM2RENZbFNOTzhkenVHeDFlMEdzdG9YQ1F1Tm5S?=
 =?utf-8?B?TU5sSENzT1g0UzY1U1ZwOFBHbE1GamgzVHN0VU5PUXU4THVlTDlLampsMDBo?=
 =?utf-8?B?YzVUcjJRcVdPT0prc2tiYVlCQStQTkduQmJocmp1aVFJa0FsazM5VG0yNThi?=
 =?utf-8?B?YnBUZTVxVzM1LzE1UmhTdk9VakR3R3FYZTFiYlZvNlJlZ09ObWV5SmdrY1JZ?=
 =?utf-8?B?Y0k1dTNoOW1TYmlwSWxJSFB4TE1zYkxESnBLN3dBTVpaS2pCYjV0WVRLT0hT?=
 =?utf-8?B?a0hXOUljdXNYWkwvTXl5enVRbnY0dzBkcmR4eVZMZHdPS3V0TGhTTS8rcUc1?=
 =?utf-8?B?dGduVEVwNWxIYVdKWHVrS0xDeGVHclpab0E4ajlWcnNHVEQ4K3VyTU90Tk9V?=
 =?utf-8?B?OGIyZDNMZG05N0ExNml6OTNaUjBqMkh1MTc0L1hoR3kvWmZ1TmlzNlFXZzMv?=
 =?utf-8?B?eVMxRTVYWDZzRW5iK2lwR1l5U0N6UWVMUVhqLzNYTlBwQ2lkVFRibEMxTlNt?=
 =?utf-8?B?aTloSzZ1NHJOUmE3WUhabDIxV2wwU3hrMHhBckV2elB1cjVvZGtvclp4ZjJt?=
 =?utf-8?B?cFM2d3Axb1o5eGYrbmZNNERBWDJQanYxeElob0hTUm5aNmpuRG1wTG9uVDJ1?=
 =?utf-8?B?QlZOL2t2WU1Tc2w5cnN4M0NzVTZJc0MxZHE1L1RLbVRETGI1U2RUeTdYbHg1?=
 =?utf-8?B?QjIzK29YUUZOQmloWWpJZ0VXWStPNTBVODB3blJqS1A4dlNzYWh6cStmbk5j?=
 =?utf-8?B?S0x3dEVvSUI3WVFOUkF0bzh4SHNYM0tnaHJWeGhBeUU4RlFjWHhzYzRBOEIy?=
 =?utf-8?B?TVYwNTdEdTBTNS9PQTlDRHVGZmJxdzlhYmhvVmVFK09keWw5OVB4dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: bqB1wT0If7CMcCECIsSHxvslalF7ojM3zCYZiNx97A+dtVKcWGdDRB7de/nCM+NmwJJjfgLO3oYWBqISxZltAFibRs2SKdQABZrmikpqYeCUjSRZjPvy1x1eHJjYiVMeh5sHdSF42EEgB/RHUw2Yi4nJNdQ0pj2MZSnYBR24XBh4OAwbeLaLBErQuE74IdaK3StVg04nEzMmoVYGqn6ZimQaL/i/JDTjUiIzUCoTW6iVUDiac2iAxDMfvk2OZeUrDBY2mU/UGmgDyuzuQl06o/By/bO+QDkcyqp3I76JixBKiNJCV+gXMA5BKt3hifzow5MUH6FKSAfOvccPsf9Nvw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59033b18-7ad8-47e9-a550-08debf8bcea2
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 03:13:52.1291 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ATIyOOqpBnJkxKbOSLodU9jJDGZ1VtfyfwSkR+UKdshL9F3uL6f5SMoZJXNZHtOQJGhnryUc+S2ueHtdV4RKfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH9PR11MB924967
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C8EDE61922B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMTAvMTBdIGRybS9pOTE1L2Jpb3M6IHJlbW92ZSBWUy9QRS1P
IHdhcm5pbmcNCj4gDQo+IFRoZXJlIGlzIG5vdCBtdWNoIHVzZSBvZiB3YXJuaW5nIHdoZW4gcG9y
dCBhc2tzIHRvIG92ZXJyaWRlIGRlZmF1bHQgVlMvUEUNCj4gc2luY2UgaXQgaXMgYWxyZWFkeSBs
b2dnZWQuIFJlbW92ZSBkcm1fV0FSTigpIGFuZCBjaGlsZF9kZXZpY2UgZnJvbQ0KPiBwcmludF9k
ZGlfcG9ydCgpIHNpbmNlIGRybV9XQVJOKCkgd2FzIHRoZSBvbmx5IHVzZXIgb2YgaXQuDQo+IA0K
DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBNaWNoYcWCIEdyemVsYWsgPG1pY2hhbC5ncnplbGFrQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuYyB8IDkgLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgOSBkZWxldGlvbnMoLSkNCj4g
DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+IGluZGV4
IDZhZGVjNmU2MGRmMy4uMWViNTg4NzEyZWQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBAQCAtMjc2OSw3ICsyNzY5LDYgQEAgc3RhdGljIGJv
b2wgaXNfcG9ydF92YWxpZChzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSwgZW51bSBw
b3J0IHBvcnQpICBzdGF0aWMgdm9pZCBwcmludF9kZGlfcG9ydChjb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfYmlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpICB7DQo+ICAJc3RydWN0IGludGVsX2Rpc3Bs
YXkgKmRpc3BsYXkgPSBkZXZkYXRhLT5kaXNwbGF5Ow0KPiAtCWNvbnN0IHN0cnVjdCBjaGlsZF9k
ZXZpY2VfY29uZmlnICpjaGlsZCA9ICZkZXZkYXRhLT5jaGlsZDsNCj4gIAlib29sIGlzX2R2aSwg
aXNfaGRtaSwgaXNfZHAsIGlzX2VkcCwgaXNfZHNpLCBpc19jcnQsIHN1cHBvcnRzX3R5cGVjX3Vz
YiwNCj4gc3VwcG9ydHNfdGJ0Ow0KPiAgCWludCBkcF9ib29zdF9sZXZlbCwgZHBfbWF4X2xpbmtf
cmF0ZSwgaGRtaV9ib29zdF9sZXZlbCwNCj4gaGRtaV9sZXZlbF9zaGlmdCwgbWF4X3RtZHNfY2xv
Y2s7DQo+ICAJZW51bSBwb3J0IHBvcnQ7DQo+IEBAIC0yODQyLDE0ICsyODQxLDYgQEAgc3RhdGlj
IHZvaWQgcHJpbnRfZGRpX3BvcnQoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhICpkZXZkYXRhKQ0KPiAgCQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sDQo+ICAJCQkgICAg
IlBvcnQgJWMgVkJUIERQIG1heCBsaW5rIHJhdGU6ICVkXG4iLA0KPiAgCQkJICAgIHBvcnRfbmFt
ZShwb3J0KSwgZHBfbWF4X2xpbmtfcmF0ZSk7DQo+IC0NCj4gLQkvKg0KPiAtCSAqIEZJWE1FIG5l
ZWQgdG8gaW1wbGVtZW50IHN1cHBvcnQgZm9yIFZCVA0KPiAtCSAqIHZzd2luZy9wcmVlbXBoIHRh
YmxlcyBzaG91bGQgdGhpcyBldmVyIHRyaWdnZXIuDQo+IC0JICovDQo+IC0JZHJtX1dBUk4oZGlz
cGxheS0+ZHJtLCBjaGlsZC0+dXNlX3ZidF92c3dpbmcsDQo+IC0JCSAiUG9ydCAlYyBhc2tzIHRv
IHVzZSBWQlQgdnN3aW5nL3ByZWVtcGggdGFibGVzXG4iLA0KPiAtCQkgcG9ydF9uYW1lKHBvcnQp
KTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydChzdHJ1Y3QgaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGEgKmRldmRhdGEpDQo+IC0tDQo+IDIuNDUuMg0KDQo=
