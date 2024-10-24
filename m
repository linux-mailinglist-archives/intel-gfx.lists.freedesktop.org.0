Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F849AE319
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 12:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BBCE10E906;
	Thu, 24 Oct 2024 10:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eayqeabH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A618510E8FC
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2024 10:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729767182; x=1761303182;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=aU99Y6LJ2K/ZlKwKDya80jlFT5ClLowQyrh6LPEKVqo=;
 b=eayqeabH9eInWpVQXx5vX+ig+pj+CgqkmwcYeki0NcXdK1IAvQE+VMjK
 nnOG5ADyS8PDoT2Am46UrP2xcPH0bskx4KSoszYGhDhGdGzmgS6lotgr+
 QJrY9Q4kcm3cjPvA7SFte1Sa5frBpHYX+tQ5MhDq2thGFxU2GnFlqZS5P
 3/woclt2j0TL5Uc3sA/Z6V7Bq9b9dSpJtHlS/66wcf3ta2jUEMn0f1YHa
 kda6XTDDZ2mTRRWXQ1JhOqWYmKOXEXXWxG5ZPGAwG/0BvZzrfiw7pFNwj
 pxVselO8iYmC5hzM3664bnYBFUs1x6Xi0fNZI2b0MuWIoes1vp2PalOhx Q==;
X-CSE-ConnectionGUID: X2ENToLrSAeM1Z3wIHKJ+Q==
X-CSE-MsgGUID: 0tEY5vwqQu6Ub4hOoGZ76g==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="33296517"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="33296517"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 03:53:00 -0700
X-CSE-ConnectionGUID: /2apJcQLShe+kZ5BMg/Jww==
X-CSE-MsgGUID: bQuDNOZ5TEqiCKWTQ2wlog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85115812"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 03:53:00 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 03:52:59 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 03:52:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O5mFYlNdRsF3VQmxUW3lQ3VZo+x9/uvRqrOkumuAz6a/Ddh5e+Uakl2sv6UsYTU4BQQiGcr6uQHMcJHXFMAq6rpD+0qg14jJ70O+ahhHzyYKq55UdxzTHcFdmPCWafrMgel0Av5+UPV7e2TFH6Hwmx7SEEAXavIwAlMkD7PdzR3XWaM2pLRzgakvO4Nspi6yX0vUTJ0DaYxPnsLxU6HbY9phI9iWMI9QmNf4+JnmzXM8Ciq+6ICeOjozz4bVbOld5M3vHmQ1VjSqhGlq/0lI8XKWxj6cReP9HYznaOfK0+a7E1UwkthNrgsNdz4RYTGE+xXlsu3v3if41Pf499eDPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aU99Y6LJ2K/ZlKwKDya80jlFT5ClLowQyrh6LPEKVqo=;
 b=mx6ZZUGXQbTjOmRKOmi0QRRyQKHSZEqtNOLcp14hAzm7wFdA6T2u32DiiZqzw+STOqQFyCs5ktIS1hOjjzh/oA0+DCPR7hWjYvOrqyZ4JUnVru5mJWqD2iqRprMsmlA/vrEs5KDE3fhhGw6CCO1y11f1VhcOryNIPBXbrPd5yCRn1hjGXEeimAIeyWf3SomLmkVQtT1MZNq/DIWnZPmdWiA/q5hngwtw4Fdio9P5EOn0F2j4wDJzk5x1Z7YAkR0BqWYNRMX9EnJ92fghDcBqnqiY3LWW318z8tj/KdN0Np4vF6ZsGlQ8X17LhjC0XQzZBSKsuekEFrWWuierZ3909A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Thu, 24 Oct
 2024 10:52:57 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Thu, 24 Oct 2024
 10:52:57 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 8/9] drm/i915: Relocate xe AUX hack
Thread-Topic: [PATCH 8/9] drm/i915: Relocate xe AUX hack
Thread-Index: AQHbGnhJfB7x5noPkUip947d0ZC3yrKV0NMA
Date: Thu, 24 Oct 2024 10:52:57 +0000
Message-ID: <879f3e8bb51150a7cdb65b3d8cc247f3f1f9b6b2.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20241009182207.22900-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA1PR11MB6193:EE_
x-ms-office365-filtering-correlation-id: 197b9d3c-235d-487a-f90d-08dcf41a0516
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?cnp5Wk5HQ3dKNWorWG4xZUZITHFORlNFa2JwMFh1UE9pazFRMEdRVGtaY2cx?=
 =?utf-8?B?TENSN0ZsQnpyU2RTdFJkVmlrZXdoRmppZ3MybFBvMDYwYUlWSldjLzBKS25y?=
 =?utf-8?B?Tm40SEhFTFZsdnJvZUs3MWFMVEh2WWhMdlI4dXVIWjdnbzRNZmw4cnlPL1Zh?=
 =?utf-8?B?TnpUd3JhTDJza2orR3RhdGE5RUNhWjI4bVV4RGJOM0NkTGFuRmF2dEl0M24x?=
 =?utf-8?B?eDNTMVU1TGJDTnRNQzdrOTNrWVhVMVplU1JqaDBXcDA5c2hVYjZnQ1MrVmpF?=
 =?utf-8?B?aC9XK3NWSDJyZDNGaWczUGdkeHNmcGFMQWZvVDl4TzRSbFd1SmZNc3ArOVZK?=
 =?utf-8?B?OG4veTRUSmQ1TWlBY2VYSG5qQVRMelBrTzlXOVlWZmNoVHpucmQxRWRqckgw?=
 =?utf-8?B?Y3BtWHNTb3pla1UxZmFlSytzQzF3L1Q0eWFEbnlEUStNWHptQ1VZYkZON0x2?=
 =?utf-8?B?KzFza0krUlFMZEhqbDhwQ2VPQVRSZDdBOWlKcmFMRFA3eHJpM3MxYWUyV2tZ?=
 =?utf-8?B?b0lZQVplRmdLMCtndUEyN3lUNmp2TndiTEs2NE0rMkM4M2hDN2NwQ2NvSmhw?=
 =?utf-8?B?c1QyN2QrbEd1d3NiaHU4L3JpVm5BbTZBS1NRaTlSU2NERXl3RjlBaCtDTm55?=
 =?utf-8?B?WG1PdUk5a0o5c0hpaHlRRldOMURRMXdYVTNvMUptSDNhTkVOeFdvd3MrbS9D?=
 =?utf-8?B?U2hGSWlOZFhxK2VsQ3JUQk1CUnJBTm5GNFp5WWNmWW11UGJpaEhpOU4xVzZw?=
 =?utf-8?B?R2JHRmVzQ3BIOFo3T0Q4R2V0Q3VoZ25EUlN2MjRZRlkydm5iUnBJMGRiYyta?=
 =?utf-8?B?TVBkaWdyclZZR20xcW1jMlFyYmFZb0VrQTlKQkxQY0Z4ZHpMMlRONlRxNXVw?=
 =?utf-8?B?dnhXWVlIN296WlZDTjAzUmhMcnJkc0VZbTB4U21WOWtFcVM2c21kRWJxY1hU?=
 =?utf-8?B?cVBlemNlNEFVOWhvMUhzaGlMRjVjcGxyWnlkR0ZkcllZMm5XMWM2eEJnNG9V?=
 =?utf-8?B?MXNCay93K3gzWEtob0twTXRpYjFENXQrbFJYOStHd2phZk1sNlUxd0o4S0NL?=
 =?utf-8?B?d0dDS0ZoRGErL3JrbHB1Tkt2a1duaWJQeElnVER2T3VSeGpnVDlPdWZreTEw?=
 =?utf-8?B?K0pxYzR6RWZrZG5GWEg3VHF5OXdhL1pzMS9BQy9ZaGJYaE9uM0hnMzFrd1B4?=
 =?utf-8?B?OGlNeEdJRkNKZUdKRFpyem9qTkx4QVVVNE9wdUN0cE1VVUFMUml3ZEVQWjE0?=
 =?utf-8?B?cytBU1pWaWVzdXpvNGpQYUgxOGVYNDZRK1hNeDhIUkNBSFJkNDFiTzV6K2R4?=
 =?utf-8?B?YlVpcmFNd2wxSmR3S01vam9rZmIxdWhvUE0vZjl5b0Q0MkFOMnhhQzB4M0tv?=
 =?utf-8?B?R0VNdHJWb3R5dWlzSTBKVHBYU1RUMG1KU21rc09aSkwwUFVDVWNOa2tzenVH?=
 =?utf-8?B?UmRjQ2FLVVAvWk9pSHc5ZzVTQVVmL2J5QnBFVkNPcU04T2RtMXM4dkNVRUJD?=
 =?utf-8?B?Y05TZ0NEYXhFSGN6YVEyWlB0VVZvdFlkWlBTdXJHWVJOa2pYajM0NU82c2Jk?=
 =?utf-8?B?dmZwTExPS2d1Sm1paEQ0OWVnV2RzWUtxOEtRcmN1RjhDRzd0RzJOSWFESzE3?=
 =?utf-8?B?bWdrVjhMSmpqb2RnQ0tSek1yWHNEL3hIekRabkRhNHE2eVoyeXR1YWNVMEE1?=
 =?utf-8?B?YUIzaEt6VnRlb1JkdGd1aytCUGJydG55Q1F4dlhTNHROSlJ3SWRSbHpmbXhZ?=
 =?utf-8?B?SFYveDlrU1NmTWFZY2loMWIzUWFWbk1GS2cxdHdpRUV4UytmL2xvZVVFcDcw?=
 =?utf-8?Q?FyKl+9QmFc20PeH6pubCBYLTE85aPsTDIt8xU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q3E4VVQxZ1ZibUdpZWZaaWoyR3RTT2hnd2g0bnZTRkdlWVlUSlpLanFEYmVZ?=
 =?utf-8?B?VnkvMnFpWm9rVUhFYTlnMDR6RDNWbGVQcytqNnVodkQ0ZXh2K2RYWS9JelBR?=
 =?utf-8?B?bFZVZ3JyWHNycTVNb0pWdmI5L01oMTE3RGFnc0NDNmNoWGdnZC9xZGFRR21Z?=
 =?utf-8?B?M21zMVpvYVVtaCtXZlVhMHhGM0Q4QU9RYVpodU5TOFgvbFV4enR0VnpzYUVN?=
 =?utf-8?B?eXpQeTNVdHZ0UDZnMGVUWHdYdmFobmQvZWlld1M2RHdrZzRQM1NZalE1QmlH?=
 =?utf-8?B?U3FKWEVYNUVPTWZNMnRwSGF0UFltSnUxMEFTUVdaSTlwbERtVFFzWERkb3Fk?=
 =?utf-8?B?ejFvUUZsdjFFVFB2MW5xcjFrY2NBeEFQdXBmUE9DUFdWdG90SGpDMVlabU5J?=
 =?utf-8?B?MG93OU80SllsTk02NkQ3dnc2NG9KV0Y3QmdENnNaN3FWSHJzeitoaHYzalli?=
 =?utf-8?B?ckJadXRCb21NbngyZWtTK3JzaDM4YTNraW80d01Udis2NEp4dGNYR1NsQkZ5?=
 =?utf-8?B?N1dHelBQdU5lZGJJTG1TNFIySXVpMTJyaSsvOFNUZFU0ejV5YUtLZGFrMG5L?=
 =?utf-8?B?NzgwREJwcnU0ZDFNamVMeXN3MnBWZitKUFdldUpQQTNGaUU0YjAyMEZ5RGNI?=
 =?utf-8?B?UlhsaGh6aHI0VzltMWRuVkdadHp6M1llbHRxQTVvaUZtNG4wZWdLL2Y4Nmpy?=
 =?utf-8?B?enhEdDdOOVhkQVhLK1RvY29yY1JWa2lvYTArY3lZM2pROVVtdTlWcWQ0Wlp2?=
 =?utf-8?B?UkNMY0x1Vm1iMHIzUkNuSHU0VkxmS3N2VU5tcFFOOEZodTRMaGR1V2Vxd0JS?=
 =?utf-8?B?V2I2emZvK0RUaUZaRTNqMWF1cit1WVFlWU9EL2JzZWY3enJ1Y2VJUjNQT21a?=
 =?utf-8?B?b3pub0ovTmw0WmpSVjZYWkI5RVZpT21BcGd0UDdDRkRoTUh3dXVXNW9JMWkr?=
 =?utf-8?B?bmRJdTNqdFNNYWdqaXZYZVU1blJYNlJLYzJuWGdlQUExRHhQVWgrUUpUM2pS?=
 =?utf-8?B?dlNTYkZiUC9ESlBqMmpVVlpaTVJET2RkRG5hNlY4V3piMVJiM05yQlJ2RW9m?=
 =?utf-8?B?Rmd1dC81WjZlNnRpUUUzVVBFcUhNd0pYZWtSL0lqbytpUWRWVE9VMEppR0sz?=
 =?utf-8?B?Z24wTUtwTGdKdUcrYm12RDV5QkJESEJkMXZjeDB4YS85L2xudDFJUVViL2xo?=
 =?utf-8?B?TXN5N0gyalhTS0FrRytrdm9aNDJURnVoakJwcUxhT3ZNNndWTGpXblpkdXFn?=
 =?utf-8?B?eEt3anVIbWdCeFJjSVJiS1hGM3FsSE1udGpFMDhYVUFMbTg2YW1YbzB0cHNp?=
 =?utf-8?B?WkNHU3dFazRMcUhxVzRqN1VLaXVIQmlSbkFVeW14dSs1dFRIa3VQTWlFaFcw?=
 =?utf-8?B?Z3hoYkpXYlY3Sm94TGJlWCtMMURPUmpZMjRYK1o1RmQvbjRSS0tJWXBqQmFV?=
 =?utf-8?B?NUlRVE81akZvbW5zK2s0bVJLc3NQQlVOUUtoR2QwcGVFY1U3T1dpMlk4KzVR?=
 =?utf-8?B?eVhlTEhVVWYzbmV1VW5DbjNsR0ZJZVZSZENYZ05wZG0xS2xDajZwcXdxMHor?=
 =?utf-8?B?QTY2S3UzSDB4cGdMWkZ0SW8va3dtdlM4YjRsMWRxdVZvNUhZNkw1T1hTVzBo?=
 =?utf-8?B?Q2FoanJoSXVKTnp3Z1pRWnNBLzl5VnlkWVBJMTgzMmZFeEZxTFhUMWtTaE1L?=
 =?utf-8?B?RjhEVkFsVDBETFJKbEN3ckY0OUg2NVhGdCs2eGNTdS8xL1JqSk1taVp4YmFl?=
 =?utf-8?B?QURUNjlaRDl3dHM5ajNCS0RxZFVPelJCOGQ0dU9zR1dNZHk0ZUgzMkZKVXpW?=
 =?utf-8?B?RHh3RFNMNWprZE43R2h2dGZIcG4zTG14MUNVOEZHS0k2VFYzUmVnRW1NWmxC?=
 =?utf-8?B?Mmt3SUpxbVUvdlZBcGJIMGplb1FNNGRIcFZnV0pDclZCNGxLczFSVkk0NVNS?=
 =?utf-8?B?OXJLZG9ram84Z3N4dFhNOVlsYTlxTWRUd3djRmVLTVlJSWFnTmRYbjVValVh?=
 =?utf-8?B?OE5BL0p1TzJtUU5ReTd2b3BUamIxbjduREErUVpic0VCQU1WdEdjbkZmUmF0?=
 =?utf-8?B?N2FGSFBxbURKWlNORURBbVZCQXpTZUlpSGNUZEEwN3pRLzVYSm9hUVVNZXZj?=
 =?utf-8?B?WGpDZks3RTZXZk9oOHZBTVY5Y1NiaWRhYUlLYk81WlVPUHEzV2VOWmx0QUY0?=
 =?utf-8?B?aUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C7C8FA171AE2B4D91B961BD29ADB55D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 197b9d3c-235d-487a-f90d-08dcf41a0516
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2024 10:52:57.1260 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oxto+vuZ5j1WHMIdBOCmhV5QB1odeRhdvFjeQ3Rf1K2WXQbYaA2tBRTo0rEmRvb6BrQhSCEcnKL0yfLaJdojPjJJhxys1nktssIU4U/6GcY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
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

T24gV2VkLCAyMDI0LTEwLTA5IGF0IDIxOjIyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOgo+
IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4g
Cj4gTW92ZSB0aGUgeGUgQVVYIG5ldXRlcmluZyBvdXQgZnJvbSBza2xfZ2V0X3BsYW5lX2NhcHMo
KSBpbnRvIHRoZQo+IGNhbGxlciBzbyB0aGF0IGl0J2xsIGJlIGVhc2llciB0byByZWZhY3RvciBz
a2xfZ2V0X3BsYW5lX2NhcHMoKQo+IGludG8gYSBtb3JlIHJlYWRhYmxlIHNoYXBlLiBUaGlzIGlz
bid0IHJlYWxseSBoYXJkd2FyZSBzcGVjaWZpYwo+IGFueXdheSwgYW5kIGp1c3Qgc29tZSBraW5k
IG9mIGJ1Zy9taXNmZWF0dXJlIG9mIHhlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gLS0tCj4gwqAuLi4vZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDCoMKgIHwgMTUgKysrKysrKysr
Ky0tLQo+IC0tCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlv
bnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jCj4gaW5kZXggYzg1YmIxZmVhOTJmLi5iY2I0OGQ4OTMyZDIgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5l
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxh
bmUuYwo+IEBAIC0yNTk4LDkgKzI1OTgsNiBAQCBzdGF0aWMgdTggc2tsX2dldF9wbGFuZV9jYXBz
KHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChI
QVNfNFRJTEUoaTkxNSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBzIHw9
IElOVEVMX1BMQU5FX0NBUF9USUxJTkdfNDsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmICghSVNf
RU5BQkxFRChJOTE1KSAmJiAhSEFTX0ZMQVRfQ0NTKGk5MTUpKQo+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqByZXR1cm4gY2FwczsKPiAtCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChza2xf
cGxhbmVfaGFzX3JjX2NjcyhpOTE1LCBwaXBlLCBwbGFuZV9pZCkpIHsKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGNhcHMgfD0gSU5URUxfUExBTkVfQ0FQX0NDU19SQzsKPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMikK
PiBAQCAtMjYyOSw2ICsyNjI2LDcgQEAgc2tsX3VuaXZlcnNhbF9wbGFuZV9jcmVhdGUoc3RydWN0
Cj4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHUz
MiAqZm9ybWF0czsKPiDCoMKgwqDCoMKgwqDCoMKgaW50IG51bV9mb3JtYXRzOwo+IMKgwqDCoMKg
wqDCoMKgwqBpbnQgcmV0Owo+ICvCoMKgwqDCoMKgwqDCoHU4IGNhcHM7Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgcGxhbmUgPSBpbnRlbF9wbGFuZV9hbGxvYygpOwo+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoSVNfRVJSKHBsYW5lKSkKPiBAQCAtMjcxNiw4ICsyNzE0LDE1IEBAIHNrbF91bml2ZXJzYWxf
cGxhbmVfY3JlYXRlKHN0cnVjdAo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+IMKgwqDC
oMKgwqDCoMKgwqBlbHNlCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbGFuZV90
eXBlID0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoG1vZGlm
aWVycyA9IGludGVsX2ZiX3BsYW5lX2dldF9tb2RpZmllcnMoZGV2X3ByaXYsCj4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiBza2xfZ2V0X3BsYW5lX2NhcHMoZGV2X3By
aXYsIHBpcGUsIHBsYW5lX2lkKSk7Cj4gK8KgwqDCoMKgwqDCoMKgY2FwcyA9IHNrbF9nZXRfcGxh
bmVfY2FwcyhkZXZfcHJpdiwgcGlwZSwgcGxhbmVfaWQpOwo+ICsKPiArwqDCoMKgwqDCoMKgwqAv
KiBGSVhNRTogeGUgaGFzIHByb2JsZW1zIHdpdGggQVVYICovCj4gK8KgwqDCoMKgwqDCoMKgaWYg
KCFJU19FTkFCTEVEKEk5MTUpICYmICFIQVNfRkxBVF9DQ1MoZGV2X3ByaXYpKQo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBjYXBzICY9IH4oSU5URUxfUExBTkVfQ0FQX0NDU19SQyB8
Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJTlRF
TF9QTEFORV9DQVBfQ0NTX1JDX0NDIHwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIElOVEVMX1BMQU5FX0NBUF9DQ1NfTUMpOwo+ICsKPiArwqDCoMKg
wqDCoMKgwqBtb2RpZmllcnMgPSBpbnRlbF9mYl9wbGFuZV9nZXRfbW9kaWZpZXJzKGRldl9wcml2
LCBjYXBzKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqByZXQgPSBkcm1fdW5pdmVyc2FsX3BsYW5l
X2luaXQoJmRldl9wcml2LT5kcm0sICZwbGFuZS0+YmFzZSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IDAsIHBsYW5lX2Z1bmNzLAoK
