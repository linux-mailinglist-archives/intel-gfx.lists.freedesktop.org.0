Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65B60BE8B76
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 15:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF4D910EBD6;
	Fri, 17 Oct 2025 13:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YAo7tyZc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054FD10EBD6;
 Fri, 17 Oct 2025 13:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760706225; x=1792242225;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ho7/cFHqLTYc0CcRXA8LVE1s2Rp340k9C/rqD3T8JqU=;
 b=YAo7tyZcC03vgKWSYtTAnznjWPr5GQWaHgxrrbT3qiXU2xiEP0oxQIUp
 ip+RwAWZJJ7j8Uc0kDbrwywCC4PEPdlceeh7I1ayK+u8MneKJam0Q2i3L
 hLDqDx2nrgVzBFzsfzfM1Wuuk1xM355J0U1hMEjdoDsvIMTqZtjr9S+Pv
 uKwq2zfHpV8UgznD+yQpbLSnAqFsR95Kvfq4uJk/vYHBUF0qz70KRV0mi
 PeSvrcE06IQF4RS2opJHaCQ7SzrddoLrkWHwOElh0ABzvKEuS+PeHKcUM
 3plDIMyIKQif8iiSG2T0oCmUwE9eMi/6VzsxeOPrnyCo333U+b3nvzPJI g==;
X-CSE-ConnectionGUID: jjIHcn1rTFCNoTwTjiJ6hQ==
X-CSE-MsgGUID: +sRTgrxORfeQrKbxesJJmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="85533013"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="85533013"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:03:44 -0700
X-CSE-ConnectionGUID: NGOlK1RQQbaouIz4ey3VKg==
X-CSE-MsgGUID: tqTk67RURSi3snZaolaQsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="213326842"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 06:03:45 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 06:03:44 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 06:03:44 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.71) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 06:03:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WIyGBmh+/B+nSP9q2K7486A9c7CgTRt+plW4ueoM1Mscx21QuzFsrcykvO9fr58hV1vtPiH4GIQ9bpcKuU6GsTJqgnO3bsnHR9DBb+F9m9y8WwjYpQA5OTPrug8AWzDcGov/hO4jm1FuS154ZJy/Lhai4XXffSXQo1a04yAs/ycWxgvIFL53kSdWbcxW+MaYammejoYa1cdOehgxmqKUiphIB9A0hKA1HFmoUTDaS2h1xRdrWQRIFy51uQ4pBDmILxRtIpjtST+anhYI3Dbm70gGtpXMI7HtHTIIajpW6eTclW+MJ2JgXzQmW+DoOWdYgATfNm+PldYz2pdbrRbV/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ho7/cFHqLTYc0CcRXA8LVE1s2Rp340k9C/rqD3T8JqU=;
 b=adu6e8z5HlpXUhh7SUDeswxULDZYYdyTgP1Goci7Hg8dpe1r2ofB4LtcZ5/T2NGQ83EwLlyyV1a7bBuk/UlA8PVUouD1VQaMPq7Bi+TmG7ggoYM7rM7PeTeDQ5UPZXLrJglm1UI9qVRuf/ChhKDfpcX0FDhq1Vbm+x7KGParo5TEM1j7oBi3LWzMqfDTCkgYoqUrGHGsE7nKMbSZGO3I6prGQiCEVibipUqtPqhqAMj8F31jYiuDIogaSnoY/SkHbEuotZl1pfPWDYzulIsRrAaUW5dd1//V3rLX9ZgemJQe1sgU6KPNageXReTAmrPC4y98TGcyb+6S2G/Yuaj+Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH3PPF5AF05F6D9.namprd11.prod.outlook.com (2603:10b6:518:1::d24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 13:03:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 13:03:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Thread-Topic: [PATCH 2/5] drm/i915/dp: Add helper to get min sdp guardband
Thread-Index: AQHcP2RX55pslngIf0uOptCURURG9LTGTiCA
Date: Fri, 17 Oct 2025 13:03:40 +0000
Message-ID: <f1dd5a8642614e0ed412f4ec1fe3fe460299161b.camel@intel.com>
References: <20251017123504.2247954-1-ankit.k.nautiyal@intel.com>
 <20251017123504.2247954-3-ankit.k.nautiyal@intel.com>
In-Reply-To: <20251017123504.2247954-3-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH3PPF5AF05F6D9:EE_
x-ms-office365-filtering-correlation-id: 24f25082-8299-452f-70f2-08de0d7d97d7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|10070799003|376014|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?eTNRNFVMQTJXVDhjTzlkUzRDZERkd2xBWmJIYVhzblQ3VlgxbGN3MWFpWWpk?=
 =?utf-8?B?emprWTBESCtKaVFvUXgrb21maHJGYkRvS1FZbThyZ1psYXBGZndZd2xwTnhv?=
 =?utf-8?B?aHBFRHY5L0dUMnZ5eEtETGVzWDEzblNCTmYxVEJzQUF5cjB2MjkzdktzSEtp?=
 =?utf-8?B?NmRrSWdEM2Qrbzc2YXAyY09neElYWXlFQTErWmk1aTFiQ0FFUTJHcDBKTmFI?=
 =?utf-8?B?V0FFVGJMMG9WY1FlK0FWcTlvUlRFM0dtbjNoMFBFL0xEODVtVVF2MXlWUUYr?=
 =?utf-8?B?K0hFZWVMZUFOUkR0Q3BrcXc4dytyckJoZ0ZCY00wMjI0V0xWbmM3ZGVYKzQ0?=
 =?utf-8?B?VkllSTFWOTlnSGYwV1FGbXBMMnlCdGxMTTBFeUJWL0lXTGNoTDBqdnNPK0x5?=
 =?utf-8?B?LzRvNW9wOVRxNG9LMExmcU1DcHY0b3J0NldFeEpoWWNnZFc5OUcxRkFkWnlu?=
 =?utf-8?B?VGRmMFN2T0JrcXJQMytKbG5FditwU2tQMzN0enE2RWNCTkZCYXcvUTZnV29o?=
 =?utf-8?B?MHhwOGpnR3NOYi94YU5laE1OTUNJMUNmOFBXN3FQb0NTb29QdTJEYVJ6dWdT?=
 =?utf-8?B?cHhMb042bDdtMkZpWkVKQkEvVlo3Y3dMcEZLU1B4NmduSEN6dFkrUlViODlC?=
 =?utf-8?B?cmV6SnVQT2pEc2tjWlZMQmw5amJ5eEEvWElCaTFHYmluS2FtajR1SHQwd2hj?=
 =?utf-8?B?YnUzMkJ2cXpJR0pzUCtqU1dSSmJZeHdUOFZRdnB4M1ZHK3hpTVFiOUpBQmto?=
 =?utf-8?B?TUdsQzh6VWpRdzlZcnpOckpERTdHVUhRUTFmaS95eUFaZVdqN0lxOHNQS1Bn?=
 =?utf-8?B?SnlDRjY3QitpNGRNeDBzMTMyWWFEK0ZZQVRhZDZXNzN6Uzhvc25IUkxuU0Er?=
 =?utf-8?B?MHZMcklOSDFTbVZ4dnZsOHlBek5mUFU2TGFmRVI2c05lekUwQnVYR0piNXVE?=
 =?utf-8?B?ZDBkWk00LzVWZjQyakIrTm1ybHpLQjVYY3ptaVR2VWdvc01HYWtBUDhIT2h5?=
 =?utf-8?B?aldKR0p0SDVEd1p3V1BmUGNRRGZLSUtnUTE0dFdTREFYa09jRys1YVJNOXRa?=
 =?utf-8?B?dk5jRHQyOGJlRTNvbE4xVndNZllORUQwZ3plUWdBaGFyeGUyYVd5cTEvNnc5?=
 =?utf-8?B?ZTlDNlY1amVsMWNZNWk0d0UyeGRFdFIxK0pKU1VjM0tnQnNkTmdHUXY0SWJi?=
 =?utf-8?B?bUswWGc4WGVFL3h3RjVhS01VaUJsUlNHbEJpSUFrazJ3anU5ZmF0aVA5ZThE?=
 =?utf-8?B?ZC9rMDRGU21nRGZPbHozOGpvci9DZjQ3aXkxMUhsUWlEdDIrQ002b1UyZjcr?=
 =?utf-8?B?MHRlQnJGc1U4dXV4MmpFN21zMDIyQkhISUlLMTM2VFJ0Tkt4Qjl5UmdWbWZF?=
 =?utf-8?B?MG1hakZtKzR4ZlpycEVHajZkREo5Z0xtK2FQUGFER2VzSlZFNkpOc3VKcDF6?=
 =?utf-8?B?VlMxQS96NFdMd2tiQmVBazJCWTdFcnhJQTlrdGc0ZXg0Tlc4d0crS0ovVEFw?=
 =?utf-8?B?Rk1HUC9KeW9yUTh6S296bklJTmlWZWtZZUV3WGZjTkkyMTNYQmFkS0NDQWhL?=
 =?utf-8?B?eDh6TklmRHZtK0Z1NVNwRE5vWXc2T2MvYXBOVTBEN0FndnA3NzJZUC90NjhV?=
 =?utf-8?B?MUVuNXlXUTliTE5uaEhDcGMya0FkclMxUE5MVU5wWEIxMkdSZ0o1Y2cyMXRz?=
 =?utf-8?B?bG0rNlIyY3ZPcnhVbHpUWS9pSlBVWTV4ZTJraDJQaXN1REtaMUIrYnF4dTh1?=
 =?utf-8?B?WElVdXg0Q2srSEJBcWZGMEZYMDF0NFg5QW1TZ1BFSFFETUYvMjV5VnZzSnpX?=
 =?utf-8?B?WUhGSjVDZlczbjZLZmFValB6Zy9Od1dvWUcrTkd3KzFKa1MzKzVMTTh0RStu?=
 =?utf-8?B?cmRQMU9xd0dDR29qTEdLaTBoeHdZQXNoRkkvRzVGT09ZaE1TT1ZMNXJxMlA0?=
 =?utf-8?B?dDNwN2NkRmtDc2xGRHFTVDFocmltUFBPdXhsdlhZbVg2UDJXdFFaVWFvWGJi?=
 =?utf-8?B?NEticC84TkQ2TkY3V2EwRTBhR0l6Zm12eHJNQ2hnVGttRVJXK3Y4NmJJS1Q3?=
 =?utf-8?Q?35szeD?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(10070799003)(376014)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RDdDWlJzNTVkdkNhWFpKNVZGczRNSEQzcU4rdmVwQ1p3QVNLaEtwUi92YUw0?=
 =?utf-8?B?S1BCM1JGcEk4bktiWjI2MEwxS2pmT0FKaG1sYXcwVGE0WmFhNkJ1bnUrTGhE?=
 =?utf-8?B?L2lXeTQ1WDAxdEFSVHZoVElrN3NTeGNQN25qbUVtdEwxeVpLSU5qSHpmMlFE?=
 =?utf-8?B?WFJUemU2Qnd2NkdEQk1lWnlxejkvWDNuNDlTc2NCOXlvSEdIYkh3eGdJd2ov?=
 =?utf-8?B?SDFwVjVIZytvZWZLVWNWN05HblVuOVUxSTU1bkJzRFdWNXY3NUhPREhVeXgr?=
 =?utf-8?B?cE4velptK3VyazNTNnlyekx3ZGxNRHg2UXp6MHhTRHpiWEtFbC8zR1RtbUlO?=
 =?utf-8?B?YTQ2R2xIMmFxWUNWeHBQRDhZaXFSWjJaMFM3SS9OZkZ5d1pDUXVwMzc1NnN0?=
 =?utf-8?B?L08wYWlkVGtmQ3l6VmwwVGNzMjZ6d3ZtalEyUmVNWHdzVVhXM2E0YU1POWZL?=
 =?utf-8?B?OEl2dEt3QW5FUi9nZnk2NHBKaHRXSzVvWFd4V0tsQkdiL0xwU3AyU2JITTRI?=
 =?utf-8?B?bmpJVHNJcGZ1Vk1icENNS3hpaDV3ekE1dWdqRmZnVDU3R0JvdkowYjRWeSs1?=
 =?utf-8?B?MVppc3RkNUJ3c1Z5VXlWa1NRTXhjWWxURnF5SmRPQXV5OXE3WnJlYXNxSVgv?=
 =?utf-8?B?THBxZFlnR2N3RW5NaTRZNmh5N0xkQUk2VTlSVEljMEpoV3JpTEUwZ3c1cTNF?=
 =?utf-8?B?WmtkbHgxTzNBLytsaytSWjZlSjV5dVc1OWhqWkFBalg1SzZ1T0M2QnI5SnJ6?=
 =?utf-8?B?allFWkpyaVBBSElRN25seFRrckl3Q2xtUlBrd1Z5ZnNlS2JxZG0wbzMrdVJx?=
 =?utf-8?B?cThBdzQrWnd2MFNiZi9OT3EycnNqaXdFTmwxdzFpb2R5RnZOS2NFWlMrb29w?=
 =?utf-8?B?WnVVMlF6MFRIQkVzS1RJS3ZLY3pPZkFpWHhTbVF3cVZseTZUYUR0enR0VWdr?=
 =?utf-8?B?ek1jVXZzbjQ3VWx2MzRtaE9RdWltUTlHRVFCSjVWMTlGOW10Qnpjc3JQUE9r?=
 =?utf-8?B?MWMzSFJhTndrUnlBbVJMUkZSYjJIdzJ5YXBpMms4U0dwOGQrY3lJdVZuVEo1?=
 =?utf-8?B?b0tpcDZpZHlDRjBCVzNKKy9RcTNTQUFBeDBLRzhuMDJ1RW5peVRWbDkvZkJk?=
 =?utf-8?B?WmE5VVlNTXZsSWFtc25xLzdVSDRaVllMU0E0T0YxT0RhN2IyRDkxN1l4a2NN?=
 =?utf-8?B?OVdDVC93OTliOE1jcjlEU0lrUldHdmFzS3hrUTZYZ09WSkFOV2JVRmJwOGZW?=
 =?utf-8?B?Q2JjaytMQzRHVG9SM0RMMVdFRksvdDRtOGRjQ3ROWlg0S080d0VhODBacURj?=
 =?utf-8?B?NENnb2tCNWk4eTVTUElUejBPaUVUTEh5SGFFR2RYVWM5NUlFUFJ1QmhDaUQz?=
 =?utf-8?B?SFFwakVTaWhXZFFuK3JSeWtUbmo1Ly94RkZ1RUZrMmJyMmhsUDdEZHZJTnVu?=
 =?utf-8?B?UlZab281T1h6Z2xuMi9NWmQySGZxY3ZPczhoVk1zRkdVTFpwYlpucEI0anlO?=
 =?utf-8?B?Q3JDQUQvS3B3aGJMU0E5RVdIZTdXUnZPdXJ1QXR6QXl3NHVudHJQdUtkYkww?=
 =?utf-8?B?N2pYWUVrUkVMTlBFeFpWUmlLN3o2MCtiUXdKQThkdEY0dURTOE14R01Rd1RI?=
 =?utf-8?B?WmNxVmZXKzdVeW9HYXJmZkZNSkVwWWtnaVZiaW05d0kyNnJFMkV0ZmdJVGQ1?=
 =?utf-8?B?cWtHVFpNZDVMbEZaNUdMWmt0YUk5akFFL1pEOWFzYWJ4SGhkb0hHbmFSOTk4?=
 =?utf-8?B?cVJibXJ4WDlxYzBzclRkZ2NKUndzZUZjeldTRGM4cWJ0Z0hkNVQ0Sm5qOSsx?=
 =?utf-8?B?c3pHaUFWTjZXVnZLdzVjWE0ya2VqZms0Z0NRM3JQZmZPSE9nYzBFZ3R4MkNv?=
 =?utf-8?B?YVo2blQxK2NFV05RUTkxcFl1czlSeFA1ZjV3M1c0MHg3TURIQ3I0OHh5N28z?=
 =?utf-8?B?WGlMR3VZSThNeXFXM3BFUG5HOHRvb3dzZVFST0Z6aDNjS0VUT0NoZ2RQcE5T?=
 =?utf-8?B?YXhZZUFFaWIyQmFhYVU2VHFBTERQV2J5SmVLS3pGY1gxcmt3Nit2M0UySGlZ?=
 =?utf-8?B?WTBvS01tNElIb3pxN09QZ3FBWmdtUitLNS90bWlpWlZ2Z2U4bUNTbHI0RnRN?=
 =?utf-8?B?KzdaZXlKY0pZdTRjYVVHb2d6bUtrdGJpWDhzYW81ZjF3b1E3TWpnTjJEaDBy?=
 =?utf-8?B?SFFpazVXZ1kvRXl6QW5BQTl6YmMwMUhwVSt3SEZjOWdDeUcrK0RXRldTUlVH?=
 =?utf-8?B?VFRlbG1Ebm9raDJaeGJUTEFsUGZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DE3F6D510EC1344CAD992E0117DF9AF0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24f25082-8299-452f-70f2-08de0d7d97d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 13:03:40.2422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i0FSSdRbcIANChokLTcC6QtDXS2j8rTNoYYstoPw98GdNoy/fMk/Df0YJOApHHoEo/CYgcreNKiPqLWifuQ4DxI4OlkJ4nFM8wJ1LW7fV/Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF5AF05F6D9
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

T24gRnJpLCAyMDI1LTEwLTE3IGF0IDE4OjA1ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gQWRkIGEgaGVscGVyIHRvIGNvbXB1dGUgdmJsYW5rIHRpbWUgbmVlZGVkIGZvciB0cmFuc21p
dHRpbmcgc3BlY2lmaWMNCj4gRGlzcGxheVBvcnQgU0RQcyBsaWtlIFBQUywgR0FNVVRfTUVUQURB
VEEsIGFuZCBWU0NfRVhULiBMYXRlbmN5IGlzDQo+IGJhc2VkIG9uIGxpbmUgY291bnQgcGVyIHBh
Y2tldCB0eXBlLg0KPiANCj4gVGhpcyB3aWxsIGJlIHVzZWQgdG8gZW5zdXJlIGFkZXF1YXRlIGd1
YXJkYmFuZCB3aGVuIGZlYXR1cmVzIGxpa2UNCj4gRFNDL0hEUg0KPiBhcmUgZW5hYmxlZC4NCj4g
DQo+IHYyOiBDb3JyZWN0IHRoZSBsaW5lcyByZXF1aXJlZCBmb3IgUFBTIFNEUC4gKEpvdW5pKQ0K
PiANCj4gQnNwZWM6IDcwMTUxDQo+IFNpZ25lZC1vZmYtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCAzNg0KPiArKysrKysrKysrKysrKysrKysrKysrKysrDQo+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oIHzCoCAyICsrDQo+IMKg
MiBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDcwNTlkNTU2ODdjZi4uYWNiYjRkNDc2
NTQzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBA
IC02OTkwLDMgKzY5OTAsMzkgQEAgaW50IGludGVsX2RwX2NvbXB1dGVfY29uZmlnX2xhdGUoc3Ry
dWN0DQo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+IMKgDQo+IMKgCXJldHVybiAwOw0KPiDC
oH0NCj4gKw0KPiArc3RhdGljDQo+ICtpbnQgaW50ZWxfZHBfZ2V0X2xpbmVzX2Zvcl9zZHAodTMy
IHR5cGUpDQo+ICt7DQo+ICsJc3dpdGNoICh0eXBlKSB7DQo+ICsJY2FzZSBEUF9TRFBfVlNDX0VY
VF9WRVNBOg0KPiArCWNhc2UgRFBfU0RQX1ZTQ19FWFRfQ0VBOg0KPiArCQlyZXR1cm4gMTA7DQo+
ICsJY2FzZSBIRE1JX1BBQ0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBOg0KPiArCQlyZXR1cm4gODsN
Cj4gKwljYXNlIERQX1NEUF9QUFM6DQo+ICsJCXJldHVybiA3Ow0KPiArCWRlZmF1bHQ6DQo+ICsJ
CWJyZWFrOw0KPiArCX0NCj4gKw0KPiArCXJldHVybiAwOw0KPiArfQ0KPiArDQo+ICtpbnQgaW50
ZWxfZHBfc2RwX21pbl9ndWFyZGJhbmQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
KmNydGNfc3RhdGUsDQo+ICsJCQnCoMKgwqDCoMKgwqAgYm9vbCBhc3N1bWVfYWxsX2VuYWJsZWQp
DQo+ICt7DQo+ICsJaW50IHNkcF9ndWFyZGJhbmQgPSAwOw0KPiArDQo+ICsJaWYgKGFzc3VtZV9h
bGxfZW5hYmxlZCB8fA0KPiArCcKgwqDCoCBjcnRjX3N0YXRlLT5pbmZvZnJhbWVzLmVuYWJsZSAm
DQo+ICsJwqDCoMKgDQo+IGludGVsX2hkbWlfaW5mb2ZyYW1lX2VuYWJsZShIRE1JX1BBQ0tFVF9U
WVBFX0dBTVVUX01FVEFEQVRBKSkNCj4gKwkJc2RwX2d1YXJkYmFuZCA9IG1heChzZHBfZ3VhcmRi
YW5kLA0KPiArCQkJCcKgwqDCoA0KPiBpbnRlbF9kcF9nZXRfbGluZXNfZm9yX3NkcChIRE1JX1BB
Q0tFVF9UWVBFX0dBTVVUX01FVEFEQVRBKSk7DQo+ICsNCj4gKwlpZiAoYXNzdW1lX2FsbF9lbmFi
bGVkIHx8DQo+ICsJwqDCoMKgIGNydGNfc3RhdGUtPmRzYy5jb21wcmVzc2lvbl9lbmFibGUpDQo+
ICsJCXNkcF9ndWFyZGJhbmQgPSBtYXgoc2RwX2d1YXJkYmFuZCwNCj4gaW50ZWxfZHBfZ2V0X2xp
bmVzX2Zvcl9zZHAoRFBfU0RQX1BQUykpOw0KPiArDQo+ICsJcmV0dXJuIHNkcF9ndWFyZGJhbmQ7
DQo+ICt9DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5k
ZXggMjgxY2VkM2EzYjM5Li43ZWU1YWViMjhmZTIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gQEAgLTIyMSw1ICsyMjEsNyBAQCBib29sIGludGVsX2Rw
X2luX2hkcl9tb2RlKGNvbnN0IHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0
YXRlKTsNCj4gwqBpbnQgaW50ZWxfZHBfY29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCj4gwqAJCQkJIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpj
cnRjX3N0YXRlLA0KPiDCoAkJCQkgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUNCj4gKmNvbm5f
c3RhdGUpOw0KPiAraW50IGludGVsX2RwX3NkcF9taW5fZ3VhcmRiYW5kKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlLA0KPiArCQkJwqDCoMKgwqDCoMKgIGJvb2wg
YXNzdW1lX2FsbF9lbmFibGVkKTsNCj4gwqANCj4gwqAjZW5kaWYgLyogX19JTlRFTF9EUF9IX18g
Ki8NCg0K
