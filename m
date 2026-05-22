Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gJBpCKThD2pERAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:55:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0C35AED01
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:54:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 148E010E240;
	Fri, 22 May 2026 04:54:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EMySHifW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDC910E05F;
 Fri, 22 May 2026 04:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779425696; x=1810961696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nY7gApfSdhwtK2KpF9lLglAuttGwwRLBIJzY1//Nhbw=;
 b=EMySHifW0t/sxBCo6f5stJDFp3OSrxP/6Ej3TAP5DaIXpYAS7BrQYGhh
 ywR9RFO/ztoBnOc1YyJNTyFf0pah1SODjI4hiVV+d65KnSsLz1NMPDiKx
 fA6e7L5M8isC8JZRdBp8xQsPZdfPVltNG3ceivNBP7IDWBui4AtGvVI02
 fvyNo2uDxhWUgJmP+/TjPcAQrU7rgxPtTXbCDdbPLhaHC33LdjrlW0num
 HjB0vyATDSVmra+pLtXRgu68RFvD+Ar2WtqxSwgZ5Fg61BOvSIoZNxxDe
 wv9gFd63L76J0N+oeNGWihf3sjzhhgvIJ9docUNfZOvardLx3whZcZ+Br A==;
X-CSE-ConnectionGUID: w0LL5MAeRiSYEYU15CAseQ==
X-CSE-MsgGUID: fwdxXpqgRTOwOhlY0L8wmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="84206902"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="84206902"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:54:55 -0700
X-CSE-ConnectionGUID: bC+HKnQITD+vicKVjFD7ew==
X-CSE-MsgGUID: Y9a9bJwUTNi/YAzZ1LsVkQ==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:54:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:54:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 21:54:54 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.55) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d8ufDyr+zIDDTVm1rzs3AoEWuH7y3TqauVpULCqhyMwOq0t8E+a/C5x2i/XKJBU8dKqVvObwpHg0yFrOLFBbiAvMlQJVE1sqwOr2F3ix/yX+uXKlHilgLQ7C4oRZJcsOjnRYU2oX/cL+SJgave1Hy2zomd79RLCiAsez8xaBCAK0u/d4qSt3A5IFDnldQLizpMHgJXVl8sL30sLmgzqZSYNwvtFXFUek06jNi3byc7y3HkJR0QI4fXsgFcwctSTm0I3DEqQhE+31XP1OkUNRFIuIjOGV0TsPUxQdFUyrK+byplSb+P5ZFfS0yMqdc+tBG050+8acKs2Ecvy3lCE8Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nY7gApfSdhwtK2KpF9lLglAuttGwwRLBIJzY1//Nhbw=;
 b=Wl7hTXTNB+kZkCMfqkOjwncrY9YXmZINkyvoF3VG59Mdc/td2DNy+xPRqhQk/+mqDbpNsgV7eKsxRlOV1iEoSAAPbC8Wt5gZgr19ZPC4uhdvdN5QsGrXGhS2Rah+/Kf2pirS21OG+Z+l1+FohTM/j/r1rtoCjtyNCETsto68MYU1V9KVXx5PGXcvZGTBHmXyRwlqPQIKBsA2cwldcuBITHtSKlZmgBscJQGQja3Mvcwf6NuV/qk3FOCSms3XmzPlsam+W4sDz5ioQMlEmab05gcUubs5y6NRQsr8Fh9TcDNO8zP6+Ow9WVeJ7OjcHRN3XXQVLZU+uBIp/wZPHk42kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 DM3PPF7C7D8332C.namprd11.prod.outlook.com (2603:10b6:f:fc00::f31)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Fri, 22 May
 2026 04:54:50 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 04:54:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v6 15/16] drm/i915/cmtg: Restore CMTG after DC6 entry
Thread-Topic: [PATCH v6 15/16] drm/i915/cmtg: Restore CMTG after DC6 entry
Thread-Index: AQHc4vt5k/kM94gZT0aO6CNnLOXRt7YYaRaAgAEa44A=
Date: Fri, 22 May 2026 04:54:50 +0000
Message-ID: <DS0PR11MB8049D7DB443586AF559B241EF90F2@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-16-animesh.manna@intel.com>
 <30d795ef-ffb1-4369-a814-7b60195386e0@intel.com>
In-Reply-To: <30d795ef-ffb1-4369-a814-7b60195386e0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|DM3PPF7C7D8332C:EE_
x-ms-office365-filtering-correlation-id: 449d0f25-6dec-4ad6-5bbf-08deb7be41be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|11063799006|4143699003|38070700021|18002099003|56012099003|22082099003|6133799003;
x-microsoft-antispam-message-info: AoF7yjPoSFfhzEH1BtwFT4tudfVqvlDIyHO0PwjpCE4uZIENmvzzQCEJPSaz2bMvnKpw+gd5PKwdgPf6oelGU1Whss+Ibawy8PfWgtjrSAoVH+QAz0XW9qhXPoyxtYkgxIW6sKhi5Q2QWCU5/lhLw+TRxiG8tye7ufB7kfu3JEgIG6iBE4TFxSWSDbzASfUo2ropxQ3RwY+Wx0wST6aMlRlQ0iMhW5ByiLIW9RKO+VsRQNkPlWUlsKn7q6BZuhxptM+LTlPx8Bj6FDAAhMD73q4rMDmhY5Fa14TWsKsk882XFqlUcYQPi1BoGiXe7tV4zZOzFkUUyJ/WHfTuNsab7Ba+ZCj/jeZrxcXbd2RaHvJ4j0Lj56VEsE7A8+owEINUdYoh9V4RLs7o8JCVNjQSTyfAsrvTU9x71/RAj5swHh/CvZT/G1X2gc4FUQuWXMu0/diRIgYuLZ4qx4Z02KfWZ6n2QRe3lvdya9eDLmqdQtpoke68ZXxT4cijmeJ3ELTvDgguLPfZo8cIxH7akmD/S1UdB1E/EBYwkL2rI5Fjbv9r5ufFoCsInOEI8WnrOB3qsvGZk7V27F8CNgHnAyZyID50IM9nsKo38m0nROvQGsTHgESd/6+M8lTa4H6Z2vJSLj9fl8dvJ/F5hLd85oKs2fnccj6bAsc8uUsIq51nmIFXxWRpHwH0ZwjBBjGFR+QxuO0ru9B0/N6a4UJ8hK5IOXfl21YzFyrUrszZ9wxNUy1j4ZOjhO1Bh+xZCWm0UHrx
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(11063799006)(4143699003)(38070700021)(18002099003)(56012099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dnFpbFZhdjJ5YVQxakFQdytERXRaQU8zaUIyb1ZCVnM1WmQram1ZZTJSVlVw?=
 =?utf-8?B?c1A1MDQ1bTdlaldLckYxRXN6QldKTXczc3g5T0piN1lJaFhDank3ejBYV3NY?=
 =?utf-8?B?YmpPV3dvWDR4LzByaWkxTlRGZmxoQXpEckZ5ZkFtSVJkYkZRa1M4MU9wNUU4?=
 =?utf-8?B?cklDZXBQVERzTkl4YTR5OW9zTUhrZitxbHpiSW9sUi9nYTA0SkoxMWhIN2lx?=
 =?utf-8?B?UGlOVXBTUkMyNmU3cHlWdlpXTmhOM2Iyb2N6ZWJQcDZaNUVyMWtTTUxydWJ4?=
 =?utf-8?B?VHVlTysyekVsMXNUdHgyczNkZDRCTWpld2pFK21haFN2NnVPM2JvUlNVeFZB?=
 =?utf-8?B?MGtSUy9oSTdUVUF5RnluQUpCVVNFZlBJSHRuZk5NeHh6YXRocmRSUEk5SzRt?=
 =?utf-8?B?Z29kS3Y5L1NYZHdWcTFoOGpKYnRURmVoaU5vcHNRbnZKM2VYa1k4WVI0U1VX?=
 =?utf-8?B?ZmY2bXB6WVpkRHlSTU5OMUtTSzFLQWlta3l5SXBCK0xkYkk2QjR2Zjd0ekdC?=
 =?utf-8?B?bVNYUjBlcHhWY3NDWmJIMFVhTnpTdjRmcW5mOFZjWVpaZGZvMjJrVmgzQ083?=
 =?utf-8?B?MGJFZ0FNZFkrR1NlSTlPeGMzSG0wdnNmdGdObWFlaGU3cWpvYTRHVkhIREVo?=
 =?utf-8?B?K3NHamtlSlVITlRVNERLN1h4VVFxTmhjc3NVZ0p4TGF5NWFYd052RTNCTDJv?=
 =?utf-8?B?cFprUHhsUTlKUlNvRWZKUWphUGkvOHVLTU5WTno3d244NzN0T3hMekVaUjdq?=
 =?utf-8?B?cWVqc1B1NFRoSWI3T0JqRW80S1MyaWQyZlpGbWo1NXY1ZTZ4TlJFeHI5c3Jn?=
 =?utf-8?B?UnkvMUJRS09JQW1EOEc2S3FQaVhONVdvUG5COXVtZHgyZG5ja0dyTzJNZm5l?=
 =?utf-8?B?blZHN3ZMaEh0Mm04RGFUNjFXTmJFSHpublhzQ0M3SEdkNGV0OWJCdXRFYmdV?=
 =?utf-8?B?a0NpU1dMRENpY3JLR0l3VVdRL3Q3RzRKVTVZa1hSWnd6d05SbDVXMThwNmlK?=
 =?utf-8?B?Q1d2dnFpS1JvRDFjdlNIRnI2SkpiMUwyaUlPa01ibWx5eCtQQUtOTXA0U1hS?=
 =?utf-8?B?ajU4Z3RkTnJwc2ZWSnZvbU8vYWZZQmxCNHN4OHQyZ2VEb3lDUFFQNHZKWDhw?=
 =?utf-8?B?NjBhYnRaVVpraXB0cjlRZnN4YU5HRmprS2YzNjhSMlZhczBITlE0T0xTQlpC?=
 =?utf-8?B?cFpQOEFtMlNrZHV5WXlnNjFiWDVKVGlKd3lPWnpnU1FXMy9YTWJkN1kzZGpD?=
 =?utf-8?B?aUJXN01qb2Z2bkF6a3poampGdWgwaTkvVVlhZGFrcHZQUkJDSEVyWk9mQU1M?=
 =?utf-8?B?alA0RExUYng5Ui9leVVmMHpkMWJkd0tTNGRSTldlOGRqR1NaeEx0Z2pMandz?=
 =?utf-8?B?d1NwZjRCNi93c3lCTkFCQXVDUk9FdW9vb2pKZWRjL2pNQkgva1JTQjBkZ1Vx?=
 =?utf-8?B?Qjc4OFRXdUh3RGlMV1g3VzN1WThydS92dlJ1RitycHEzbGhidVQwZy96Z0dC?=
 =?utf-8?B?MXc1em8wUkhrSWxQdGR1ejMzTUJGUElaRjRQbllRSThKcUlIblB6Ymoyc3NC?=
 =?utf-8?B?WDc3cjM3V0ViSUJHM0tWdmpKaFFJNHlxN0lveEF4aDJoV2lvZGg3aURTYXUy?=
 =?utf-8?B?L2cyc1JpcjFyN3RXaWNNVDhlSStWVm45USt3a3RIT3pybXYyVGlmcTV6QXUz?=
 =?utf-8?B?SVorNlN2T1NIT011OFQ2Y2ptYnl0YzhJNGhWK2tUcEtqRWRScTVUMU1XYnV4?=
 =?utf-8?B?VGtOZHE2RUlJMmhUcnVYUW12bndDdS9hVzZncEE4ZlVHaWt1ZFJvQkNHYVVP?=
 =?utf-8?B?UEplbjFES3pFVmhqVkZqazhiNEVlQ2Y5ZE8xU0hkdmZxOWFTbGt4cU1oNUxT?=
 =?utf-8?B?N1llNVdCbzNqYnA3WEFidEorNUR2VkdwNW1lVFBoTXRValc0R2pxaVo2TytG?=
 =?utf-8?B?S1FjeHlRM2hQdWVvMGJVcjhMc0hIL3RuRjhTRXFTTkI1d2sxZnJQVkJ6Q1Vy?=
 =?utf-8?B?Vk9ac2U2U2pzMnIvR3RkYkJub251MVEzbFRlSlVNN0wwMTBONjRWMU0ySGNo?=
 =?utf-8?B?eFNYdDVrZEhQZHk2MW9rR0pxS250RnFzWExPbG5wSkdaQ0tSWDluUXcrd3lN?=
 =?utf-8?B?cVR0ZVV5T3JGTGJLemRxQlVFMklDbjZWclNVaWs3R2NwL0E0cWRvUjJpMFBS?=
 =?utf-8?B?clFSSXp1bXh1dUgzZjdXdFF4RmRWN2t0RkFWYjc5V2N6TzAzSmgyYThDZUk3?=
 =?utf-8?B?MEJ6UnBHUit6UXlRQmFrUnZ1WDRRZ3k3RGo4YmhQWDgyQjNwZU9GaW93bUdt?=
 =?utf-8?B?Wkd3b2wwMGNDQlBLRW56SHpyWDdKSXc3dWZnTVVyZzhMMWM0RVp2UT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: BwRJ49xSd5VVpHGyomELVg9R5eJoqNK9M6eRpGeag/SvRYx5Lk71Py/9guAfRvacB2g4x9L4SHKpwjuWYErrv1ycpBi29c+sDgPy4yrAkciKWD/PQ1HMf6KlzG/Iw7P7sftziTssPsTpxjaGXSIaMtr9XctVNthd21nfXzOoy1S+U0ZvLYjFicoljqA/7ZhwZ1wOfZfS43U8isv9sJCZn0KxCBF0TCGS6fZ4cQF/Kv7xfDJ4Kud3hQSjAhcbn4olb50+0IdmHkKhVk4IgnbcYfCEUI81uz5bKPvgox07H9ToALC3ui/KD5m5VlWihF/RnZ6w6AUUw6QQ890ZwYqqlA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 449d0f25-6dec-4ad6-5bbf-08deb7be41be
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 04:54:50.7490 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e4+YLR3JE8UQlrhc0gW/mdBvgydz9J8JIiQ8GGiWBNEVJtIREI7UBYthEs/QHDHxMvEvY4Uc7wjs6bkx13R8Lg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF7C7D8332C
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.920];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 6A0C35AED01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogVGh1cnNkYXksIE1heSAyMSwgMjAyNiA1OjE3IFBNDQo+IFRvOiBNYW5uYSwg
QW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTaGFu
a2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT47IHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tOw0KPiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2NiAxNS8xNl0gZHJtL2k5MTUvY210ZzogUmVzdG9yZSBDTVRHIGFmdGVy
IERDNiBlbnRyeQ0KPiANCj4gDQo+IE9uIDEzLTA1LTIwMjYgMjI6MDgsIEFuaW1lc2ggTWFubmEg
d3JvdGU6DQo+ID4gUmVzdG9yZSBDTVRHIHJlZ2lzdGVycyBhZnRlciBEQzYgZXhpdCwgYXMgdGhl
eSBsb3NlIHRoZWlyIHZhbHVlcyBpbg0KPiA+IHRoZSBsb3ctcG93ZXIgc3RhdGUuDQo+ID4NCj4g
PiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4N
Cj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jICB8IDEyICsrKysrKysrLQ0KPiA+ICAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5jICAgIHwgMjUgKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5oICAgIHwgIDMgKysrDQo+ID4gICAzIGZp
bGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBp
bmRleCA2ZGM1NjE3MTNjMzUuLjMyNGEyYzcyMjQyMiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gQEAgLTc1NDQsOSArNzU0
NCwxOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9hdG9taWNfY29tbWl0X3RhaWwoc3RydWN0DQo+ID4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gPg0KPiA+ICAgCWZvcl9lYWNoX25ld19pbnRl
bF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgaSkgew0KPiA+ICAg
CQlib29sIG1vZGVzZXQgPSBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUp
Ow0KPiA+ICsJCWJvb2wgZGMzY29fdG9fZGM2ID0NCj4gaW50ZWxfZGlzcGxheV9wb3dlcl9nZXRf
ZGMzY29fdG9fZGM2KGRpc3BsYXkpOw0KPiA+DQo+ID4gICAJCS8qIENNVEcgbmVlZHMgdG8gYmUg
cmVzdG9yZWQgb24gREM2IGV4aXQgYW5kIG9uIG1vZHNldCovDQo+ID4gLQkJaWYgKG1vZGVzZXQg
JiYgbmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSAmJiAhY3J0Yy0NCj4gPmNtdGcuZW5hYmxlZCkg
ew0KPiA+ICsJCWlmICgobW9kZXNldCB8fCBkYzNjb190b19kYzYpICYmIG5ld19jcnRjX3N0YXRl
LT5ody5hY3RpdmUNCj4gJiYgIWNydGMtPmNtdGcuZW5hYmxlZCkgew0KPiA+ICsJCQlpZiAoZGMz
Y29fdG9fZGM2KSB7DQo+ID4gKwkJCQlpbnRlbF9jbXRnX3NldF9jbGtfc2VsZWN0KG5ld19jcnRj
X3N0YXRlKTsNCj4gPiArCQkJCWludGVsX2NtdGdfc2V0X3RpbWluZ3MobmV3X2NydGNfc3RhdGUs
DQo+IGZhbHNlKTsNCj4gDQo+IEluIHRoZSByZXN0b3JlIHBhdGgsIHdpbGwgdGhlIGBscnJgIGFy
Z3VtZW50IGFsd2F5cyBiZSBmYWxzZT8NCj4gSW4gcGF0Y2ggNCwgdGhlIHNhbWUgZnVuY3Rpb24g
aXMgY2FsbGVkIHdpdGggYGxyciA9IHRydWVgLg0KDQpEdXJpbmcgbHJyIG1vZGUgaXQgd2lsbCBi
ZSB0cnVlLCBvdGhlcndpc2UgYWx3YXlzIGZhbHNlLg0KDQo+IA0KPiA+ICsJCQkJaW50ZWxfY210
Z19zZXRfdnJyX3RpbWluZ3MobmV3X2NydGNfc3RhdGUpOw0KPiA+ICsJCQkJaW50ZWxfY210Z19z
ZXRfdnJyX2N0bChuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gKwkJCQlpbnRlbF9jbXRnX3NldF9tX24o
bmV3X2NydGNfc3RhdGUpOw0KPiA+ICsNCj4gCWludGVsX2Rpc3BsYXlfcG93ZXJfcmVzZXRfZGMz
Y29fdG9fZGM2KGRpc3BsYXkpOw0KPiA+ICsJCQl9DQo+ID4gKw0KPiA+ICAgCQkJaW50ZWxfY210
Z19lbmFibGVfc3luYyhuZXdfY3J0Y19zdGF0ZSk7DQo+IA0KPiBBcyB0aGlzIHBhdGggYWxzbyBl
eGVjdXRlcyBhZnRlciBEQzYgZXhpdCwgcGxlYXNlIGFsc28gZm9sbG93IHRoZSBCU3BlYyBDTVRH
DQo+IGVuYWJsZSBzZXF1ZW5jZSBmb3IgdGhlIFBTUjIgZGVlcCBzbGVlcCBjYXNlLg0KDQpJbiBQ
U1IyIGRlZXAgc2xlZXAgY2FzZSB0YXJnZXRfZGNfc3RhdGUgd2lsbCBiZSBzZXQgdG8gREM2IHdo
aWNoIHNob3VsZCByZXN0cmljdCBDTVRHIGFjY2Vzcy4NCg0KPiANCj4gQ01URyB3aWxsIG5vdCBz
dGFydCBydW5uaW5nIHVudGlsIFBTUjIgZGVlcCBzbGVlcCBleGl0IGNvbXBsZXRlcywgc28gdGhp
cw0KPiBzZXF1ZW5jZSBjYW4gZmFpbCBoZXJlIGZvciB0aGUgbm9uLW1vZGVzZXQgY2FzZS4NCg0K
T25jZSBQU1IyIGRlZXAgZXhpdCBpcyBjb21wbGV0ZWQgdGhlbiBvbmx5IHdlIHNob3VsZCBzZXQg
dGFyZ2V0X2RjX3N0YXRlIHRvIERjM2NvLg0KDQo+IA0KPiA+ICAgCQkJaW50ZWxfY210Z19zZXRf
aHdnYihuZXdfY3J0Y19zdGF0ZSk7DQo+ID4gICAJCQlpbnRlbF9jbXRnX2VuYWJsZV9kZGkobmV3
X2NydGNfc3RhdGUpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gPiBpbmRleCA4MGVjZjM3M2ZiMTkuLmEwZWE0
Njg5NWUyZSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcG93ZXIuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ID4gQEAgLTI4NSw2ICsyODUsMjcgQEAgc2FuaXRp
emVfdGFyZ2V0X2RjX3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiA+
ICAgCXJldHVybiB0YXJnZXRfZGNfc3RhdGU7DQo+ID4gICB9DQo+ID4NCj4gPiArYm9vbCBpbnRl
bF9kaXNwbGF5X3Bvd2VyX2dldF9kYzNjb190b19kYzYoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
PiArKmRpc3BsYXkpIHsNCj4gPiArCXN0cnVjdCBpOTE1X3Bvd2VyX2RvbWFpbnMgKnBvd2VyX2Rv
bWFpbnMgPSAmZGlzcGxheS0NCj4gPnBvd2VyLmRvbWFpbnM7DQo+ID4gKwlib29sIHJldDsNCj4g
PiArDQo+ID4gKwltdXRleF9sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gPiArCXJldCA9
IHBvd2VyX2RvbWFpbnMtPmRjM2NvX3RvX2RjNjsNCj4gPiArCW11dGV4X3VubG9jaygmcG93ZXJf
ZG9tYWlucy0+bG9jayk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIHJldDsNCj4gPiArfQ0KPiA+ICsN
Cj4gPiArdm9pZCBpbnRlbF9kaXNwbGF5X3Bvd2VyX3Jlc2V0X2RjM2NvX3RvX2RjNihzdHJ1Y3Qg
aW50ZWxfZGlzcGxheQ0KPiA+ICsqZGlzcGxheSkgew0KPiA+ICsJc3RydWN0IGk5MTVfcG93ZXJf
ZG9tYWlucyAqcG93ZXJfZG9tYWlucyA9ICZkaXNwbGF5LQ0KPiA+cG93ZXIuZG9tYWluczsNCj4g
PiArDQo+ID4gKwltdXRleF9sb2NrKCZwb3dlcl9kb21haW5zLT5sb2NrKTsNCj4gPiArCXBvd2Vy
X2RvbWFpbnMtPmRjM2NvX3RvX2RjNiA9IGZhbHNlOw0KPiA+ICsJbXV0ZXhfdW5sb2NrKCZwb3dl
cl9kb21haW5zLT5sb2NrKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAgIC8qKg0KPiA+ICAgICogaW50
ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlIC0gU2V0IHRhcmdldCBkYyBzdGF0
ZS4NCj4gPiAgICAqIEBkaXNwbGF5OiBkaXNwbGF5IGRldmljZQ0KPiA+IEBAIC0zMjAsNiArMzQx
LDEwIEBAIHZvaWQNCj4gaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlKHN0
cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiA+ICAgCWlmICghZGNfb2ZmX2VuYWJsZWQp
DQo+ID4gICAJCWludGVsX3Bvd2VyX3dlbGxfZW5hYmxlKGRpc3BsYXksIHBvd2VyX3dlbGwpOw0K
PiA+DQo+ID4gKwlpZiAocG93ZXJfZG9tYWlucy0+dGFyZ2V0X2RjX3N0YXRlID09IERDX1NUQVRF
X0VOX0RDM0NPICYmDQo+ID4gKwkgICAgc3RhdGUgPT0gRENfU1RBVEVfRU5fVVBUT19EQzYpDQo+
ID4gKwkJcG93ZXJfZG9tYWlucy0+ZGMzY29fdG9fZGM2ID0gdHJ1ZTsNCj4gPiArDQo+IA0KPiBU
aGlzIG9ubHkgdXBkYXRlcyB0aGUgc29mdHdhcmUgdGFyZ2V0IERDIHN0YXRlIGFuZCBkb2VzIG5v
dCBndWFyYW50ZWUgYW4NCj4gYWN0dWFsIERDNiBlbnRyeSBvciBleGl0Lg0KPiBJZiB0aGUgaW50
ZW50IGlzIHRvIGRldGVjdCBhIHJlYWwgREM2IGV4aXQgdHJhbnNpdGlvbiwgdGhlbg0KPiBnZW45
X2Rpc2FibGVfZGNfc3RhdGVzKCkgbG9va3MgbGlrZSB0aGUgbW9yZSBhcHByb3ByaWF0ZSBwbGFj
ZSBmb3IgdGhpcy4NCj4gSSBjYW4gYWxzbyBzZWUgZXhpc3RpbmcgUEhZIHJlc3RvcmUgcmVsYXRl
ZCBjb21tZW50cyB0aGVyZS4NCg0KRnJvbSBkcml2ZXIgd2UgYXJlIGp1c3QgYWxsb3dpbmcgRGMt
c3RhdGUsIGFjdHVhbCBlbnRyeS9leGl0IGlzIGNvbnRyb2xsZWQgYnkgRE1DLg0KSSBuZWVkIGJv
dGggY3VycmVudCByZXF1ZXN0ZWQgc3RhdGUgYW5kIHByZXZpb3VzIGRjLXN0YXRlIHNvIGFkZGVk
IGhlcmUuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQoNCj4gDQo+ID4gICAJcG93ZXJfZG9tYWlucy0+
dGFyZ2V0X2RjX3N0YXRlID0gc3RhdGU7DQo+ID4NCj4gPiAgIAlpZiAoIWRjX29mZl9lbmFibGVk
KQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmgNCj4gPiBpbmRleCBkNjE2ZDVkMDljYmUuLmNlMTIyNWJiYzc4OSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cG93ZXIuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9wb3dlci5oDQo+ID4gQEAgLTEzOCw2ICsxMzgsNyBAQCBzdHJ1Y3QgaTkxNV9wb3dlcl9k
b21haW5zIHsNCj4gPiAgIAkgKi8NCj4gPiAgIAlib29sIGluaXRpYWxpemluZzsNCj4gPiAgIAli
b29sIGRpc3BsYXlfY29yZV9zdXNwZW5kZWQ7DQo+ID4gKwlib29sIGRjM2NvX3RvX2RjNjsNCj4g
PiAgIAlpbnQgcG93ZXJfd2VsbF9jb3VudDsNCj4gPg0KPiA+ICAgCXUzMiBkY19zdGF0ZTsNCj4g
PiBAQCAtMTgzLDYgKzE4NCw4IEBAIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9zdXNwZW5kX2xh
dGUoc3RydWN0DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGJvb2wgczJpZGxlDQo+ID4gICB2
b2lkIGludGVsX2Rpc3BsYXlfcG93ZXJfcmVzdW1lX2Vhcmx5KHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5KTsNCj4gPiAgIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9zdXNwZW5kKHN0cnVj
dCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPiAgIHZvaWQgaW50ZWxfZGlzcGxheV9wb3dl
cl9yZXN1bWUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+ICtib29sIGludGVs
X2Rpc3BsYXlfcG93ZXJfZ2V0X2RjM2NvX3RvX2RjNihzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiA+
ICsqZGlzcGxheSk7IHZvaWQgaW50ZWxfZGlzcGxheV9wb3dlcl9yZXNldF9kYzNjb190b19kYzYo
c3RydWN0DQo+ID4gK2ludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+ICAgdm9pZCBpbnRlbF9k
aXNwbGF5X3Bvd2VyX3NldF90YXJnZXRfZGNfc3RhdGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
KmRpc3BsYXksDQo+ID4gICAJCQkJCSAgICAgdTMyIHN0YXRlKTsNCj4gPiAgIHUzMiBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldF9jdXJyZW50X2RjX3N0YXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+
ID4gKmRpc3BsYXkpOw0K
