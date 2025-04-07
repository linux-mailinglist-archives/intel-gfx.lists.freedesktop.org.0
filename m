Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75843A7EF69
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 22:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42C8410E573;
	Mon,  7 Apr 2025 20:42:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMsX8YDA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B16910E573
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Apr 2025 20:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744058544; x=1775594544;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ru9cTwYxliHV75NnjTRUmwJ+TJkHNJthHmEh9c04szs=;
 b=GMsX8YDABlGHeaHH2YFjpzIOLtmAayLA0HdALMBSDWZ4P2Vnq7ifRAgO
 jzCPlddKCDU9PTcoBMMu9tcOC7dsQF4vGSQQAi+OJWhUnbD9R3eh7viez
 clPLcdBacVJt6ObD8ctikvuhCAO0LCVTry6SJyDlsqNQQNq1c6soEavrp
 TZIjMY+Eh8Qob8Sq8MczoNdHUtOLiIrYZ9FSQTkGXmksT/0nfawM8NZWy
 nZeg9eFe1bBjYI24lt46PnEeWs1vgnE1YA+NIjpN4C7qmvDiqNWtN24/r
 Qh9F/UrOcYNI4FflbZBhIj2wHr15dC/zM514r3lLb3UlmuW87FSH0J3fG w==;
X-CSE-ConnectionGUID: q8/TD60bTwSuH+deaM51xQ==
X-CSE-MsgGUID: 5HGQh5JYStenM/fYJkxGdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="63012426"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="63012426"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 13:42:23 -0700
X-CSE-ConnectionGUID: xkztSQjbRNiwC3MQHLSgdw==
X-CSE-MsgGUID: tkrYJMt/QzGYg96eC2bQhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="133043771"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 13:42:24 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 7 Apr 2025 13:42:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 7 Apr 2025 13:42:23 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 7 Apr 2025 13:42:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bAK1frTUJtUxsi85SS9B93rdojZ9FIB4y7jXeUUV1kgWph0cBANO5l3zKRLuMy5/xVmHYY6N73DstdS9vtIurlJc6drYrCEaonESAJYXBpvOO3Qz2g5ysU4mmtWQEcszVnmDmSveoFo3l5qTyFj8HscVFg5OEFe6Q3QFlxrqbZUF/6VDbeM/rwYJ45pgfeySsQ8/uBYUHzUC/5CmvTDHpoqV/WDg7skx/DA/K9QdUW56GSlYzxxkdvU/iU02z+gIcMKTtHnXfh24naGl3GjQ8Ud5UFZ0dq8qvg/Go0J7WL9cSnTAjATkYnJ4ouHXDyD13FHgmT2z0AsJsmidGoYxSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ru9cTwYxliHV75NnjTRUmwJ+TJkHNJthHmEh9c04szs=;
 b=L0tJM5rtuaRA+UMGDCkedunUFjVgtCNBCadTZyZ1Jm09oFbfKRDPZpxt05Blie5PB43AVjVcdwukM4WTJYLMkrKEzAvEZy4zJBcBSn+egVdBJ9hREznlMsA06XGXTPSyEdsNsNlsIogvfz1N0KtD93p/31RAWjNgft/hzaIv+XwLGwaS193UGdfzqPf41rb2X1N+ul9RAVrh3x5uG2O6qTicj3HW4+foNUUEXV+QlSZ4fyz00luBzvO/fGjLnjvpYpXGtKmHSu3FLp7w0L1yxQKS5MfIMhLkcAtrhZWL/Q7nUdBN5sWwGXEzTbe9Yvl8W8+5amUEeiNPYfOQrsStmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by PH0PR11MB5047.namprd11.prod.outlook.com (2603:10b6:510:3c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.33; Mon, 7 Apr
 2025 20:41:38 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::5b47:1b5a:71b2:4f20%7]) with mapi id 15.20.8606.033; Mon, 7 Apr 2025
 20:41:38 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Lin, Charlton" <charlton.lin@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/dp: Enable SST LT fallback between UHBR
 and non-UHBR link rates
Thread-Topic: [PATCH v2 1/2] drm/i915/dp: Enable SST LT fallback between UHBR
 and non-UHBR link rates
Thread-Index: AQHbpcKGK70SNar5/kSxPGTm8VwoI7OXyxoAgADkSQA=
Date: Mon, 7 Apr 2025 20:41:38 +0000
Message-ID: <f78113b6684041df9515a420f791ed680561c43a.camel@intel.com>
References: <20250405003434.641638-1-khaled.almahallawy@intel.com>
 <Z_N5AAOf9uVeXPUV@ideak-desk.fi.intel.com>
In-Reply-To: <Z_N5AAOf9uVeXPUV@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW3PR11MB4620:EE_|PH0PR11MB5047:EE_
x-ms-office365-filtering-correlation-id: 4450d851-cf91-4c52-414f-08dd76149878
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ZkVScXYvcjZQbEN6czhlcVVadUVnTC85WjJFRWtrMFR2OElZdGJyd1kwenhH?=
 =?utf-8?B?QlJocWYvclM2MmhTS2M3cCtCWGZyQVFpdS9Qbk0vVFErSlhpV2FvMGpJN3Fw?=
 =?utf-8?B?Z29Qckl1QWp1THUwVDFGTE9ZSzZPZTJ4ZXhIRlAxdVFmUmZWa3BGcUJoRG1W?=
 =?utf-8?B?cnFzeEJhc2o3dC9uS0QzNDJVbnEwUWpsUmltQzhmV1hWbDJnQU5ETEg0bHQv?=
 =?utf-8?B?TTZ0eGtoVVZaWTd4aXdYMG1tYUpXUjgwb08weWxGeWJoZjk3Sy96MUpOUnVP?=
 =?utf-8?B?RkRpdkhqQ2JyVDhlZ2VGWElURDh5eEdEdTNXRmRxZVdRWGkzZWlVcVZNVHk1?=
 =?utf-8?B?RUxLNlVyWWsrSTFZT0ttdisrUVdBNDBDaHJERzhYaUtVZVF4TUlrTndaZjhJ?=
 =?utf-8?B?R3NYOEpFcUpEYnNMcVE1U0FTR3NTVHNPcGpTUW9YdW5NWTRxcFZqVmxDUGNk?=
 =?utf-8?B?RTAxOFEwTXVYVnpsSzUzMWFieWZ5STBRWnJTU1hJN2JnRkN2VzNSMHROR3Z5?=
 =?utf-8?B?STdSZWJVT3FRVERISmovTTJDME8zUTVTanI5RE9lcWFSSzU2blEwY0RqcHl6?=
 =?utf-8?B?WnFGaGZMNWQrZ3dLZUV1NEZjNEtCZ3pXcGo2cUxNYmEzNGFBaWVpWHJxcmZq?=
 =?utf-8?B?TEp2TmtpMTBWVStKc3J5OE1kamxJaWpSNThOZHRad0Nhekt0dGZFeHM1Nmcv?=
 =?utf-8?B?TmJTaUNKYlVlODR1Tk4zVUFGTmxMMXBkM3VOYlhqNnVMQ2o2OThtaFJpWGVV?=
 =?utf-8?B?ZE5zQlI3aG9TS0pDdzRWWHltajM5Z3o2dFhBRXRrN3pKdklDUFN2WkpvenJv?=
 =?utf-8?B?VFVKQzhGYmlSTURkeFRBVjRLVzlXT0M0R0kycWFVem5PTkFrSGRpWTR4Q3p0?=
 =?utf-8?B?dmhIaUhWV21XTU9ObGVpS0QzQmRCNXA1d241c3V1cmF1czI4RTRlYW9kVms5?=
 =?utf-8?B?TkQrcS9uM3hKZ3ZmeXFOWndDTUJvZ25BemFRYnJ3dHl0bjJHK3VDMURiSlYr?=
 =?utf-8?B?QjVnZzVTbjc2V2NwbjdPODZROUlpRVJTQ3J2enhoQ1FOaFYyaDVvS3ZBRG0r?=
 =?utf-8?B?VXRpVEIwRjcyaHlKZzdMaUo3OU1JR1oxVHE3dmZKMm5NLytPWWJmc1RqZCs4?=
 =?utf-8?B?anB1NXc0VmdKRUdqWXdCeUNFdHV4RGthT2p3Vnc3TUxsMGVtaXV0Vkt3aWtw?=
 =?utf-8?B?ZnBObGVMT2htZzlJd3p2QWh1MmFPcDFFRGt5cGJtN25KQWxCdEdUSU52bVZr?=
 =?utf-8?B?T1NwS1R5VW9WaEgyRjRYZkhkNVNkRHNsWXpIVmhaUzBkaGNVaGFlTlIzc1Zu?=
 =?utf-8?B?WVNHYnB3OEFiWUQxV3B4VU9udnl0bkhEYzBTWUxxK0FCVG9ja3hQS0lneXdE?=
 =?utf-8?B?RXpzV2xYeElZNG1TaEtKbTJtQW52OTBjZFJrU3kyRHBta1FzZnl4SFdJeWZE?=
 =?utf-8?B?MlozNzdaUkp0TW1aU1hlcG55REowTHE3elNCcjNKcm5jcnZtcW5kZWlWQmFR?=
 =?utf-8?B?S3BPZS9zN1R6RnNmU1dtOTRRcXg3akFRY2MvaXlQT3dWTWpzZ21BWGpubExQ?=
 =?utf-8?B?NzZqc1RkalR0WmZHRTllLzhYNkRPc0hyblhmZWd4UjliR3F5b0JqbFBoWUY3?=
 =?utf-8?B?c0c1QVRwLzVpWGI2V0VXeUxEaGtBSElTdlRyckNHQ2FpSVphVW9kUDdVM0tZ?=
 =?utf-8?B?S3JRN0M1VGMvVWdsOHdwOVBENW9CRzlEcnNZZ25Cb0lsSzRFRlA3cEJ1UlFE?=
 =?utf-8?B?aVFSenJBWnFJblRKVW4zRVhXSnVLMFhJU0ZxbE5TdkJKQUppYTFabksrN3ho?=
 =?utf-8?B?eDFkek90ejh0NDhEN0doZC9tbDd1dWxkQjUweUtsQWNCbVRHZjRoNzgvSTI0?=
 =?utf-8?B?N3J4aFlXcEhITUQ2R01oQnFmWHJ0RGRtTkZrYlRhZ3RhbzFzem11YlpjYUdq?=
 =?utf-8?Q?Qv91NDb5fOo/JiGYxN6oZU3PjNlFGBYN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0pZbGFOMUF5OUZSeGkvWmJVempvTnQ3MkVqTFpRSFNWN3JRSmxYQnIzclIr?=
 =?utf-8?B?eUxsalRQYWRHanR3TlFoVHQwb2tPNE9uZ2krTjZkWWdNNkRDR0I5VksvMEl4?=
 =?utf-8?B?dyt6ekpJNGJ0ajVLb2UxeVBIMFBQRkcvNjFFWEJJRzRySmZLR3VrSnB1eC9K?=
 =?utf-8?B?T3RReHFpa2lGT3FMb3dqQ0gxMllaL3gxYWowakI2dXBJQUVJVGltcm05Y0tk?=
 =?utf-8?B?TnlBeUxvS2xUMjRlallNb0RYNlp4RjhleWJZRGc2ZFQ1aG1DT3lTTkFkK2Zt?=
 =?utf-8?B?SE5Benllb3F5bjhFVXYyREc0S0g3RE8rdEN6elNOa2kyUVlpaENiQSt2ZmZw?=
 =?utf-8?B?UW9VdmIrR2dpYzVkdDhSdmNYT1E5WEVzT1JmWjdyTi9HN2NPSnN1YlRxOHhn?=
 =?utf-8?B?Wm1BYW5BVXlrS0MzWkJmQ2REVGhTSldtRGxFQ3gxNUpNVlZQR0h2bi9lRzdK?=
 =?utf-8?B?eWlMcHo1NjVwVkhjVjJTTmx5N2dBMTZvMjFlQkcralIyOGFLWTZlWWY0R28r?=
 =?utf-8?B?cTFlTXhMajhuMjdWSFkwbWRJYld3cW1yeXlkSW5oNHdnUTY1TjExSkc4dndB?=
 =?utf-8?B?L3BNN0xuVisweGc4dzh1VVBwVGM1OXN1dWs3dkRtcWJHYXBjZDFWUkhBV1lr?=
 =?utf-8?B?VVUxMDZ1MElhTGpYeHZ5RURDK2R1bWhJWnJnWmt6eG9KZ0MzazEwaG5OR3RF?=
 =?utf-8?B?dmdpSi80STdHUzZ2bVRuMFF0QjMwVHZoa2tLSzJrU09HWlhhVnE2WkRoU0xQ?=
 =?utf-8?B?UFVEVmFwdG12QzNYU2JpRVB6RUF5ZmdDVkk3ZTZNY0d1R1RyVWVzZitNaXFT?=
 =?utf-8?B?d290MlJhUzVob1JtN1M5cDQvNEd2bzd4ZS9JaFE0Q3RSTVJrd2ZrdnJvcUJh?=
 =?utf-8?B?ckFCWHZvdTRxYnBvSENXc0JOQzJ0YkcwU2JnZEovWWxHS0J3a3FkZHFYR2tp?=
 =?utf-8?B?OFM3cUVTRWQybXdKRFpOWVZoR1lYVUsrblN3Nk1nSi9IL29vTzJRRXFaaUFV?=
 =?utf-8?B?YUQxanhRMmZHS3c4QkM4UWhiSTNtR1RRckV1M1VIcVc2Y01qUTQ5ZmMzbHhQ?=
 =?utf-8?B?UnVmcUR4V1dXRUd2bDJrZVlVRmtjc3NWMTd3UFJPMlNrOU10bDc0ZkREUXBJ?=
 =?utf-8?B?ZCtHaHpCaDRTaHBRWlVzYUEzVkw0Tk5KcWJ2bHlwVUxKS2I4MzdJd2VudFF3?=
 =?utf-8?B?RmdYbjNURW5kN2FWMXNRMWR1NEtsR0Q5SmpxTGEvWUtaSEY3STN4Q2lkVEht?=
 =?utf-8?B?OWRGQU95cENXaWNMZE03M01uZW1ZMjRGUU5HSVZMdXdGSFRhK0RkVU9meVRL?=
 =?utf-8?B?dk1kcXNnM2pTMkJtUUFjMW5WWWJTRHdsdVlEbHIvN1hHb3ZPQTU2aXJtRjAy?=
 =?utf-8?B?VDY2Q0dUNmwzNENxU1RYaWkxY2dMNWJUU3VMMkQ1WFJDdFNyUU55VFJqOS9T?=
 =?utf-8?B?b2E1UTFtY0pVNXkwNFk0cy9TTVJkdllyRVVZeUJJeGljYXJVQ0E1ZHJybXVx?=
 =?utf-8?B?dDZGY1BSUzNRSnpWMkE5WlJaWDNrZGpJd2ljeVo0TUVETzlqS2tNM1k1N0Fu?=
 =?utf-8?B?UUVqZFlQM0dCRkd2ZGF4RVk3KzAwVkZkQ29yMG9BRFBDMWFUWGNVWGZ1ejBM?=
 =?utf-8?B?K014K1BIWVcyaGNuVXh5WStJL3hnMEsvaXlYckkzME0vV25UaG9QVjQyT1F3?=
 =?utf-8?B?MjNXYWw5YjQ1YmFOTzFDMkZZUU4zNUFVY0ltNkYrWnp2WGJrNEZZV2hlejNk?=
 =?utf-8?B?VURCY2s4K1J1Y3VlUmZLMm5uOWdvQzdZbXdPWnJWd0JsTXgzUExqbGx4dTF3?=
 =?utf-8?B?MjFwZThEMnp6V2hWYlh3QUcxMkg5SnR5eWxvZnc2bkl6SzlmcG94MHNBSHN5?=
 =?utf-8?B?MXZIZHo5dWRXcjNBY3M4bjExMHE2bUNwYXlIbERMb2UrazhjQzEvZUlnaDRI?=
 =?utf-8?B?bTNDWjBodVp3dEdNdm1oM1NJdjFCbE95a3dyVlh1VHNEZDQyazJXU090Kzlp?=
 =?utf-8?B?ZEpBL1N5M1R4L1k0TFBzYmU5NXJJeGl2aVB0QXo4UFVxeTdyTTgxM01UcWth?=
 =?utf-8?B?R3BZL29ZbGU1OUs4cURxT0Nud3JkZVd4NVNXa1E1alFhWEVCMGRiVlB5OElt?=
 =?utf-8?B?eDFMYkdSdjF6VHJBOVo2ejZuc2dlQXAwM2cybXZzRkVWcFRZaldXSG1KL0lh?=
 =?utf-8?Q?wVPN/Ah1rDTwvX40w9Ojd9Y=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2EA5C2DF6FB1E64A8B9C1E3E8A4C34DE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4450d851-cf91-4c52-414f-08dd76149878
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2025 20:41:38.5650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jf+lBZj+sySTVKWUjskU/TVKmlcnyD3Fc2pHVGZlndpLcTApaZDnaPwphZSApgYqCOa7t1Lgx9688K9gJpD4+9o/EJ366NQVlDxRf6E5V1A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5047
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

T24gTW9uLCAyMDI1LTA0LTA3IGF0IDEwOjA0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IEZyaSwgQXByIDA0LCAyMDI1IGF0IDA1OjM0OjMzUE0gLTA3MDAsIEtoYWxlZCBBbG1haGFsbGF3
eSB3cm90ZToNCj4gPiBXaXRoIGFsbCB0aGUgcGllY2VzIGZvciBVSEJSIFNTVCBMVCBpbXBsZW1l
bnRlZCwgd2UgY2FuIG5vdyBlbmFibGUNCj4gPiBMVA0KPiA+IGZhbGxiYWNrIHN3aXRjaGluZyBi
ZXR3ZWVuIFNTVCBVSEJSIGFuZCBub24tVUhCUiBsaW5rIHJhdGVzLg0KPiA+IA0KPiA+IFsuLi5d
DQo+ID4gDQo+ID4gQEAgLTEzMDMsNyArMTIzMyw3IEBAIHN0YXRpYyBpbnQNCj4gPiBpbnRlbF9k
cF9nZXRfbGlua190cmFpbl9mYWxsYmFja192YWx1ZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCwNCj4gPiDCoAkJcmV0dXJuIDA7DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gLQlpZiAoIXJlZHVj
ZV9saW5rX3BhcmFtcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSwNCj4gPiAmbmV3X2xpbmtfcmF0ZSwg
Jm5ld19sYW5lX2NvdW50KSkNCj4gPiArCWlmICghcmVkdWNlX2xpbmtfcGFyYW1zX2luX2J3X29y
ZGVyKGludGVsX2RwLCBjcnRjX3N0YXRlLA0KPiA+ICZuZXdfbGlua19yYXRlLCAmbmV3X2xhbmVf
Y291bnQpKQ0KPiANCj4gT24gU1NUIC0gZHVyaW5nIHN0YXRlIGNvbXB1dGF0aW9uIC0gYSBtaW5p
bXVtIGxpbmsgY29uZmlndXJhdGlvbg0KPiByZXF1aXJlZCBmb3IgdGhlIG1vZGUgd2FzIHNlbGVj
dGVkIHRvIGJlZ2luZyB3aXRoLiBTaW1wbHkgcmVkdWNpbmcNCj4gdGhhdA0KPiBsaW5rIGNvbmZp
ZyBmdXJ0aGVyIGluIEJXIG9yZGVyIGFzIGZvciBNU1QgKHdoaWNoIHNlbGVjdGVkIHRoZQ0KPiBt
YXhpbXVtDQo+IGxpbmsgY29uZmlnIHRvIGJlZ2luIHdpdGgpIGRvZXNuJ3Qgd29yay4NCj4gDQoN
ClRoYW5rIHlvdSBmb3IgdGhlIHJldmlldy4NCg0KSnVzdCB0byBjbGFyaWZ5IHdoYXQgd2UncmUg
c2VlaW5nLCB3ZSB1c2VkIHRoZSBmb2xsb3dpbmcgaGFjayB0bw0Kc2ltdWxhdGUgYSBmYXVsdHkg
Y2FibGUgdGhhdCBjYW4gb25seSBjYXJyeSAxIGxhbmUgUkJSOg0KDQoNCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KQEAg
LTEwMjYsNyArMTAyNiwxMSBAQA0KaW50ZWxfZHBfbGlua190cmFpbmluZ19jaGFubmVsX2VxdWFs
aXphdGlvbihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KLSAgICAgICB0cmFpbmluZ19wYXR0
ZXJuID0gaW50ZWxfZHBfdHJhaW5pbmdfcGF0dGVybihpbnRlbF9kcCwNCmNydGNfc3RhdGUsIGRw
X3BoeSk7DQorICAgICAgIGlmKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgfHwgKGNydGNfc3Rh
dGUtPmxhbmVfY291bnQgPT0gMSAmJg0KY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9PSAxNjIwMDAp
KQ0KKyAgICAgICAgICAgICAgIHRyYWluaW5nX3BhdHRlcm4gPSBpbnRlbF9kcF90cmFpbmluZ19w
YXR0ZXJuKGludGVsX2RwLA0KY3J0Y19zdGF0ZSwgZHBfcGh5KTsNCisgICAgICAgZWxzZQ0KKyAg
ICAgICAgICAgICAgIHRyYWluaW5nX3BhdHRlcm4gPSBEUF9UUkFJTklOR19QQVRURVJOXzE7DQor
DQpAQCAtMTQxOSw3ICsxNDIzLDcgQEAgaW50ZWxfZHBfMTI4YjEzMmJfbGFuZV9lcShzdHJ1Y3Qg
aW50ZWxfZHANCippbnRlbF9kcCwNCiAgICAgICAgLyogU3RhcnQgdHJhbnNtaXR0aW5nIDEyOGIv
MTMyYiBUUFMyLiAqLw0KICAgICAgICBpZiAoIWludGVsX2RwX3NldF9saW5rX3RyYWluKGludGVs
X2RwLCBjcnRjX3N0YXRlLCBEUF9QSFlfRFBSWCwNCi0gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBEUF9UUkFJTklOR19QQVRURVJOXzIpKSB7DQorICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgRFBfVFJBSU5JTkdfUEFUVEVSTl8xKSkgew0KICAgICAgICB9DQoN
Cg0KQmVsb3cgaXMgdGhlIGRlZmF1bHQgYmVoYXZpb3Igd2l0aG91dCB0aGVzZSBjaGFuZ2VzOg0K
DQphZGp1c3RlZCBtb2RlOiAiMzg0MHgyMTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAzOTIwIDQw
MDAgMjE2MCAyMTYzDQoyMTY4IDIyMjIgMHg0OCAweDkNCkxpbmsgVHJhaW5pbmcgZmFpbGVkIGF0
IGxpbmsgcmF0ZSA9IDU0MDAwMCwgbGFuZSBjb3VudCA9IDQNCmFkanVzdGVkIG1vZGU6ICIzODQw
eDIxNjAiOiA2MCA1MzMyNTAgMzg0MCAzODg4IDM5MjAgNDAwMCAyMTYwIDIxNjMNCjIxNjggMjIy
MiAweDQ4IDB4OQ0KTGluayBUcmFpbmluZyBmYWlsZWQgYXQgbGluayByYXRlID0gNTQwMDAwLCBs
YW5lIGNvdW50ID0gNA0KZ2VuZXJhdGluZyBjb25uZWN0b3IgaG90cGx1ZyBldmVudA0KYWRqdXN0
ZWQgbW9kZTogIjM4NDB4MjE2MCI6IDYwIDUzMzI1MCAzODQwIDM4ODggMzkyMCA0MDAwIDIxNjAg
MjE2Mw0KMjE2OCAyMjIyIDB4NDggMHg5DQpMaW5rIFRyYWluaW5nIGZhaWxlZCBhdCBsaW5rIHJh
dGUgPSAyNzAwMDAsIGxhbmUgY291bnQgPSA0DQpnZW5lcmF0aW5nIGNvbm5lY3RvciBob3RwbHVn
IGV2ZW50DQphZGp1c3RlZCBtb2RlOiAiMzg0MHgyMTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAz
OTIwIDQwMDAgMjE2MCAyMTYzDQoyMTY4IDIyMjIgMHg0OCAweDkNCkxpbmsgVHJhaW5pbmcgZmFp
bGVkIGF0IGxpbmsgcmF0ZSA9IDE2MjAwMCwgbGFuZSBjb3VudCA9IDQNCmdlbmVyYXRpbmcgY29u
bmVjdG9yIGhvdHBsdWcgZXZlbnQNCmFkanVzdGVkIG1vZGU6ICIzODQweDIxNjAiOiA2MCA1MzMy
NTAgMzg0MCAzODg4IDM5MjAgNDAwMCAyMTYwIDIxNjMNCjIxNjggMjIyMiAweDQ4IDB4OQ0KMTI4
Yi8xMzJiIExpbmsgVHJhaW5pbmcgZmFpbGVkIGF0IGxpbmsgcmF0ZSA9IDEwMDAwMDAsIGxhbmUg
Y291bnQgPSAyDQpnZW5lcmF0aW5nIGNvbm5lY3RvciBob3RwbHVnIGV2ZW50DQphZGp1c3RlZCBt
b2RlOiAiMzg0MHgyMTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAzOTIwIDQwMDAgMjE2MCAyMTYz
DQoyMTY4IDIyMjIgMHg0OCAweDkNCnBpY2EgaG90cGx1ZyBldmVudCByZWNlaXZlZCwgc3RhdCAw
eDAwMDIwMDAwLCBwaW5zIDB4MDAwMDA0MDAsIGxvbmcNCjB4MDAwMDAwMDANCjEyOGIvMTMyYiBM
aW5rIFRyYWluaW5nIGZhaWxlZCBhdCBsaW5rIHJhdGUgPSAxMDAwMDAwLCBsYW5lIGNvdW50ID0g
MQ0KQ2FuJ3QgcmVkdWNlIGxpbmsgdHJhaW5pbmcgcGFyYW1ldGVycyBhZnRlciBmYWlsdXJlDQoN
Ckl0IHVzZXMgdGhlIGZhbGxiYWNrIGNvZGUgd2UgcHJvcG9zZSB0byBkZWxldGUuIEl0IGlzIGhv
bGRpbmcgdGhlIGxhbmUNCmNvdW50IGFuZCBkcm9wcGluZyB0aGUgbGluayByYXRlIHN0YXJ0aW5n
IGZyb20gNHhIQlIyLCB3aGljaCB3YXMNCmNvbXB1dGVkIHRvIHRoZSBtaW5pbXVtIHJlcXVpcmVk
IGZvciA0a0A2MC4gSW4gdGhlIG5leHQgbG9vcCwgZm9yIDINCmxhbmVzLCBpdCB3ZW50IHVwIHRv
IHRoZSBtYXhpbXVtIGNvbW1vbiByYXRlLCBVSEJSMTAuIEJlY2F1c2Ugb2YgdGhlDQpjb25kaXRp
b24gaW4gcmVkdWNlX2xpbmtfcmF0ZSwgaXQgcmVmdXNlcyB0byBkcm9wIHRvIG5vbi1VSEJSIHJh
dGVzIGFuZA0KZmFpbHMgdG8gdHJhaW4gdGhlIG1vbml0b3IuDQoNCkhvd2V2ZXIsIHdpdGggdGhl
IHByb3Bvc2VkIGNoYW5nZXMsIHdlIGdldCB0aGUgZm9sbG93aW5nOg0KDQphZGp1c3RlZCBtb2Rl
OiAiMzg0MHgyMTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAzOTIwIDQwMDAgMjE2MCAyMTYzDQoy
MTY4IDIyMjIgMHg0OCAweDkNCkxpbmsgVHJhaW5pbmcgcGFzc2VkIGF0IGxpbmsgcmF0ZSA9IDgx
MDAwMCwgbGFuZSBjb3VudCA9IDQNCkxpbmsgVHJhaW5pbmcgZmFpbGVkIGF0IGxpbmsgcmF0ZSA9
IDU0MDAwMCwgbGFuZSBjb3VudCA9IDQNCmFkanVzdGVkIG1vZGU6ICIzODQweDIxNjAiOiA2MCA1
MzMyNTAgMzg0MCAzODg4IDM5MjAgNDAwMCAyMTYwIDIxNjMNCjIxNjggMjIyMiAweDQ4IDB4OQ0K
TGluayBUcmFpbmluZyBmYWlsZWQgYXQgbGluayByYXRlID0gNTQwMDAwLCBsYW5lIGNvdW50ID0g
NA0KZ2VuZXJhdGluZyBjb25uZWN0b3IgaG90cGx1ZyBldmVudA0KYWRqdXN0ZWQgbW9kZTogIjM4
NDB4MjE2MCI6IDYwIDUzMzI1MCAzODQwIDM4ODggMzkyMCA0MDAwIDIxNjAgMjE2Mw0KMjE2OCAy
MjIyIDB4NDggMHg5DQpMaW5rIFRyYWluaW5nIGZhaWxlZCBhdCBsaW5rIHJhdGUgPSA4MTAwMDAs
IGxhbmUgY291bnQgPSAyDQpnZW5lcmF0aW5nIGNvbm5lY3RvciBob3RwbHVnIGV2ZW50DQphZGp1
c3RlZCBtb2RlOiAiMzg0MHgyMTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAzOTIwIDQwMDAgMjE2
MCAyMTYzDQoyMTY4IDIyMjIgMHg0OCAweDkNCjEyOGIvMTMyYiBMaW5rIFRyYWluaW5nIGZhaWxl
ZCBhdCBsaW5rIHJhdGUgPSAxMDAwMDAwLCBsYW5lIGNvdW50ID0gMQ0KZ2VuZXJhdGluZyBjb25u
ZWN0b3IgaG90cGx1ZyBldmVudA0KYWRqdXN0ZWQgbW9kZTogIjM4NDB4MjE2MCI6IDYwIDUzMzI1
MCAzODQwIDM4ODggMzkyMCA0MDAwIDIxNjAgMjE2Mw0KMjE2OCAyMjIyIDB4NDggMHg5DQpMaW5r
IFRyYWluaW5nIGZhaWxlZCBhdCBsaW5rIHJhdGUgPSA1NDAwMDAsIGxhbmUgY291bnQgPSAyDQpn
ZW5lcmF0aW5nIGNvbm5lY3RvciBob3RwbHVnIGV2ZW50DQphZGp1c3RlZCBtb2RlOiAiMzg0MHgy
MTYwIjogNjAgNTMzMjUwIDM4NDAgMzg4OCAzOTIwIDQwMDAgMjE2MCAyMTYzDQoyMTY4IDIyMjIg
MHg0OCAweDkNCkxpbmsgVHJhaW5pbmcgZmFpbGVkIGF0IGxpbmsgcmF0ZSA9IDI3MDAwMCwgbGFu
ZSBjb3VudCA9IDQNCmdlbmVyYXRpbmcgY29ubmVjdG9yIGhvdHBsdWcgZXZlbnQNCmFkanVzdGVk
IG1vZGU6ICIzODQweDIxNjAiOiA2MCA1MzMyNTAgMzg0MCAzODg4IDM5MjAgNDAwMCAyMTYwIDIx
NjMNCjIxNjggMjIyMiAweDQ4IDB4OQ0KTGluayBUcmFpbmluZyBmYWlsZWQgYXQgbGluayByYXRl
ID0gODEwMDAwLCBsYW5lIGNvdW50ID0gMQ0KZ2VuZXJhdGluZyBjb25uZWN0b3IgaG90cGx1ZyBl
dmVudA0KYWRqdXN0ZWQgbW9kZTogIjM4NDB4MjE2MCI6IDYwIDUzMzI1MCAzODQwIDM4ODggMzky
MCA0MDAwIDIxNjAgMjE2Mw0KMjE2OCAyMjIyIDB4NDggMHg5DQpMaW5rIFRyYWluaW5nIGZhaWxl
ZCBhdCBsaW5rIHJhdGUgPSAxNjIwMDAsIGxhbmUgY291bnQgPSA0DQpnZW5lcmF0aW5nIGNvbm5l
Y3RvciBob3RwbHVnIGV2ZW50DQphZGp1c3RlZCBtb2RlOiAiMzg0MHgyMTYwIjogMzAgMjk3MDAw
IDM4NDAgNDAxNiA0MTA0IDQ0MDAgMjE2MCAyMTY4DQoyMTc4IDIyNTAgMHg0MCAweDUNCkxpbmsg
VHJhaW5pbmcgZmFpbGVkIGF0IGxpbmsgcmF0ZSA9IDU0MDAwMCwgbGFuZSBjb3VudCA9IDENCmdl
bmVyYXRpbmcgY29ubmVjdG9yIGhvdHBsdWcgZXZlbnQNCmFkanVzdGVkIG1vZGU6ICIzODQweDIx
NjAiOiAzMCAyOTcwMDAgMzg0MCA0MDE2IDQxMDQgNDQwMCAyMTYwIDIxNjgNCjIxNzggMjI1MCAw
eDQwIDB4NQ0KTGluayBUcmFpbmluZyBmYWlsZWQgYXQgbGluayByYXRlID0gMjcwMDAwLCBsYW5l
IGNvdW50ID0gMg0KZ2VuZXJhdGluZyBjb25uZWN0b3IgaG90cGx1ZyBldmVudA0KYWRqdXN0ZWQg
bW9kZTogIjM4NDB4MjE2MCI6IDMwIDI5NzAwMCAzODQwIDQwMTYgNDEwNCA0NDAwIDIxNjAgMjE2
OA0KMjE3OCAyMjUwIDB4NDAgMHg1DQpMaW5rIFRyYWluaW5nIGZhaWxlZCBhdCBsaW5rIHJhdGUg
PSAxNjIwMDAsIGxhbmUgY291bnQgPSAyDQpnZW5lcmF0aW5nIGNvbm5lY3RvciBob3RwbHVnIGV2
ZW50DQphZGp1c3RlZCBtb2RlOiAiMjU2MHgxNDQwIjogNjAgMjQxNTAwIDI1NjAgMjYwOCAyNjQw
IDI3MjAgMTQ0MCAxNDQzDQoxNDQ4IDE0ODEgMHg0MCAweDkNCkxpbmsgVHJhaW5pbmcgZmFpbGVk
IGF0IGxpbmsgcmF0ZSA9IDI3MDAwMCwgbGFuZSBjb3VudCA9IDENCmdlbmVyYXRpbmcgY29ubmVj
dG9yIGhvdHBsdWcgZXZlbnQNCmFkanVzdGVkIG1vZGU6ICIxOTIweDEwODAiOiA2MCAxNDg1MDAg
MTkyMCAyMDA4IDIwNTIgMjIwMCAxMDgwIDEwODQNCjEwODkgMTEyNSAweDQwIDB4YQ0KTGluayBU
cmFpbmluZyBwYXNzZWQgYXQgbGluayByYXRlID0gMTYyMDAwLCBsYW5lIGNvdW50ID0gMQ0KDQoN
CldlIGNhbiBzZWUgdGhhdCBpdCBmb2xsb3dzIHRoZSBEUDIuMSBzcGVjcywgcGFnZSA5NzM6DQoN
CiAgIDEgSWYgMTI4YjEzMmJfRFBfU3VwcG9ydGVkPw0KICAgICBhIElmIHN1cHBvcnQgNCBsYW5l
cz8NCiAgICAgICA0IFdpdGggc3VwcG9ydGVkIGJpdCByYXRlIGNvbmZpZ3VyYXRpb24gVUhCUjEw
LCBmYWxsYmFjayBhcw0KZm9sbG93czoNCiAgICAgICAJIDRMIFVIQlIxMCAtPiA0TCBIQlIzIC0+
IDJMIFVIQlIxMCAtPiA0TCBIQlIyIC0+IDJMIEhCUjMgLT4NCgkgMUwgVUhCUjEwIC0+IDJMIEhC
UjIgLT4gNEwgSEJSIC0+IDFMIEhCUjMgLT4gNEwgUkJSIC0+IDFMDQpIQlIyIC0+DQoJIDJMIEhC
UiAtPiAyTCBSQlIgLT4gMUwgSEJSIC0+IDFMIFJCUg0KDQoNClNvLCBhcmUgd2UgbWlzc2luZyBz
b21ldGhpbmc/DQoNClRoYW5rIFlvdQ0KS2hhbGVkDQoNCg0KDQo+ID4gwqAJCXJldHVybiAtMTsN
Cj4gPiDCoA0KPiA+IMKgCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApICYmDQo+ID4gLS0g
DQo+ID4gMi40My4wDQo+ID4gDQoNCg==
