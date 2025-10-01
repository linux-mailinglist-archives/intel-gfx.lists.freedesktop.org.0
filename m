Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E12BB073B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 15:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA4B310E6E7;
	Wed,  1 Oct 2025 13:20:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WIt6Tu0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E3110E0AC;
 Wed,  1 Oct 2025 13:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759324825; x=1790860825;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=PCmG+i286vhUrjZVE8o51Kd7uA/sGGUiQ0VU/wmkFH4=;
 b=WIt6Tu0TcYkKJirVp91w9RyzsJwcMlJPlNhOCfK9q7Py3L1Ywxpbz5MK
 LroonEaK0e+wkXqZLIVZqkDNZlToxqf7UExe1L4Y4d/T2zWXd5zBaBVZC
 KSWa/Oc++AVNwW6yszTzSCeuWvEn1pknSVHwCWWfRu1nUE0E54cx07PNz
 Kq+qILOcJKT1X6oXNDRfFDsNvMBtZNTIYPVMc/BmmDgXUz8xoncb+byl3
 Sf4XNROG90Y0OLkP4mrz6LL3MgeRbtyJ2PW3Xpjf8g18nRL2NtleEkIrz
 qKJQQP3aGJsOUEs98h/wkJ/bbfjS4dkseivZvAylfghJGS5IisxeUoEJS w==;
X-CSE-ConnectionGUID: VWA0GXzuQmu55NQo3pkt5Q==
X-CSE-MsgGUID: KJiSIlAiTBWX9mStUa8aLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="60633280"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="60633280"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:20:25 -0700
X-CSE-ConnectionGUID: lWmBQt93TIOU/1IEMGrSFA==
X-CSE-MsgGUID: EQEcGG60RhGsPv1W0n9MIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179214227"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:20:25 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:20:24 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 06:20:23 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.9) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:20:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=itG3PCMna8G+hfRnjY5qlTGOfR4ouJg/TfupZHGxZho18vWnf+pxdTo31AIQ0CPczkfHp7dhXmttyphlXyho17N93JVLl7uxGc3ssIvn3/YILAHy1NFFqMYQWGzQGg4rJPrUS9yg2nuwV5sKslZ3542kprbt9jRnyKGEBehs5olqVpCkkFT66QGYk9X/b/8dJWhX8S3UIBfwzImKrB6XPk2wMXfgQTl23D6I2fE3fdnnnK7vIQShf2Ne/xoY62EIUcC3Yx7jhfJDyCir0k41JQJ40F40Tlok5OGQ/wlH9fSgdA2oGRqEjTBV+0YRMWU3XJLvh3xY79egeugVhaepcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PCmG+i286vhUrjZVE8o51Kd7uA/sGGUiQ0VU/wmkFH4=;
 b=GiH4UIkx8lH9x62qNQUHFX3soTFAKWjQTTHBSI6HQ3QIm9MdSPcDQe1+X521eAwG35rDKKKpn0F4tu7i7LI0YsrIPRVPoL2mNIQQrK8gGNIIuxu75WYpgjwLmukJwyNilI0iSOtBSvzjg5NNRvCrU8mIWnxzFoEBUpJ/KxlhEAKAoEKvUJgLbSsYpmzlXpCNjtdkjl6kBJlGtmMLB8jRrQSAAxG3TaZWG4TnLmyyySfCo7UN8EBdgawq+GdqLJc3ICtQLu4fMNsLnhDANbASyvKz8JTl8JHXRnR95sf9Al++ruDvw4kfHVCsDhsamlYoVbZKQhtE8+dieKwxLZ6TJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB5206.namprd11.prod.outlook.com (2603:10b6:510:3f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 13:20:20 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 13:20:20 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "ucas.demarchi@intel.com"
 <ucas.demarchi@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Topic: [PATCH v2] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Thread-Index: AQHcMqsjQbd3MjyGfUWsTkbCG0EWEbStD9CAgAArGwCAAAk0AIAAAs6A
Date: Wed, 1 Oct 2025 13:20:20 +0000
Message-ID: <fa08c44139b355510e51e591841ce9a208d26629.camel@intel.com>
References: <20251001081209.272607-1-vinod.govindapillai@intel.com>
 <09f6e8b565bfbecc38f5978bde824192924a1bc4@intel.com>
 <d0acfa805671edd1132ee01e6663e1fa17179623.camel@intel.com>
 <df8fdcbbc78e969de74af14ae6f28aa0ef42015a@intel.com>
In-Reply-To: <df8fdcbbc78e969de74af14ae6f28aa0ef42015a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB5206:EE_
x-ms-office365-filtering-correlation-id: 3d5977c4-dc1e-4a75-f115-08de00ed4576
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?M2ZtRXVpZ3RqMnJrbUdHRGlGY3lFZjZXRTRpME5sUHpwaUJEeGN3VzNwaHpK?=
 =?utf-8?B?Y0VJNnpNRitIb29DRjVLTWlxRGZrMDkvRnl6aS9UamFaYlVmZUhNbG1xQjdy?=
 =?utf-8?B?REpHSG1TUGs3eXFEYU9QWit4c3hJNzJtUW43ZUpiU1U4ejZ2UFVJaDVRVVdX?=
 =?utf-8?B?RU50RExKazdLU0YyV3gzdjFlSjJUM0g0T1FUTEpMK0wvU2JkU2l6R2ZoUzVa?=
 =?utf-8?B?SkN0K1REN2xsczFJWXpDdWFzTWo4a2pYTU41dHdsUmNTQUowYkVVTnpIV3lM?=
 =?utf-8?B?azJ3L0tyNHhhTFV4YllYdGlJY3JlMEhlQjhJa2xYYjh6ZnZMS2hIcTJkeEI2?=
 =?utf-8?B?UTNuT3hWMlZtbTZ3bEtPU1NJc21PRFNSRm4rZlRFUWoxRzAzcXhGR3lVTHFF?=
 =?utf-8?B?UlQ0VWNTZ3NTeFFMcklidEx2YzFWeWN1SmwyeGlUeWpTTVhMdWJ1UTdER2gx?=
 =?utf-8?B?K0NqSCtmRy8vNTJoWWtvT3ZHQ3RYNFhnMUorZWhkVXM3ZXhteVVBcDh2dnZY?=
 =?utf-8?B?NmN5ZzJxangwaXVHV3lvOTNCY0UyamwvdEN1MU9LbUU5VnNxeTQzWkNMNlV4?=
 =?utf-8?B?SXd2dVhPRmthZTFBNEQyYmk4c1Nqa0VYVzFRRC8yNFJ3dVc0NGNPcyt6U3ZM?=
 =?utf-8?B?OFhQTUJXUXEydGVSajE1eWZtNlBOa2tPd3lQY0hINDZMV1JqR0dCOFdyVkhq?=
 =?utf-8?B?OUU4K2I5Z2xmWmJ3L0hXZlVzdjFZK3Z4ZEwyNHkvcENPY25hc0F3TVRBUGFh?=
 =?utf-8?B?bnRWUmV5L0ZBdjVWSGpySTdJU0duQnZtUUpZd2ZIZmZoYjkvWkhsOE5QYVNt?=
 =?utf-8?B?R0RLOVhEblZBVStYMU04SkZjSjROZjZENUQ3NXFZbER4QXNWRkpvNGwwdSty?=
 =?utf-8?B?WW1VUnZtWSt6TEVyRmNGM20zRVE1RDM1aDZEckkwM2RXNG9qRFVkR242U2FP?=
 =?utf-8?B?b2NZZHhzYit1RGxJcUxoQUN6MHRWOGg2TUcrQXFBYmFCdnVhdkk1QUFUS1Bv?=
 =?utf-8?B?bzVXc0s5c1NUNGlVYUcrT29DUFhZOXNSaFNQaUF4dTREQk1DUjhLTlFZZ1Yv?=
 =?utf-8?B?dWdweklONXJ1RkFtMlgvTlBjN1NEdDBqTUN5L1hRTkRieHFMc0NkOWtRa1R3?=
 =?utf-8?B?eThpV2E5b3M3NlU2dXN5dXphN2VnSWZmSXJ1bWRYQkFYeXpmN1gwa0ROdlU5?=
 =?utf-8?B?QmRaK2ZiYStuS0g5Wm5zY0UwUlZqSWlUTUN4NXNCcEgrbW94M0ZoNXhUWG80?=
 =?utf-8?B?UU5LVGNWM2xyWU1iSWJ0RFVldSt3WDZ5cS9ocUlITXV0Z29nTGN3Q1IxcFda?=
 =?utf-8?B?MjZxVmY2alVqeHZQeVlBT2RnTEtmOE9tMU9mWDU5UlBnTTZ5SEZ4eG1ZUW1C?=
 =?utf-8?B?UjJkZkhzWWhQY1hyVm5LQSs4eUZQeWorZ3ZUZFlqZGRIMEFVWWRyZjVVTU1q?=
 =?utf-8?B?WUdpcUxxRWNSMDlCUGt6UGZVeTNnUXd5TGRDN0I3djE2WG0rMHczOEl3eHBr?=
 =?utf-8?B?ak1NZk9BekxQWmdIUGRUOURVVWVCN3Y0cnlQOUtPcEVrVGFaU2lIcGxMeGd3?=
 =?utf-8?B?VGxwR3FLQ3YwSzBzcm5YdnozeEF1aXpQdTBKTlp6ZWRVMGd2TDZTVmJ1MU5p?=
 =?utf-8?B?VTNaaHJLbDVjZkFYU01MbUFHOVd5OElNRnRmeGxsTk8rM2R4eTQ2ZlduenIz?=
 =?utf-8?B?VG56ZGNZSlN0NkhpeVVtVlkxaU8rekRDNkpBZVdCSFROVzBKaDFyU0VpM2lY?=
 =?utf-8?B?VGxpa3NoMFZRaGtkZkxpWGF3VEhjTmtES1NWNnhIY0E5TDF6UEp3SlFYK1Bz?=
 =?utf-8?B?QlRBMGVmN09HbS9OMmVyZ0hPZEJHV2ltb05CbWIzbkdpV0QyNXFOUHpFb09I?=
 =?utf-8?B?d2c4T0JFM2llUGtablVqYUVNZ25ZR2JaeHorRmh1Y1IxZzQ5a3Q1SWhKNUpJ?=
 =?utf-8?B?S2dENWRkWXE4L3ZaeXhUZWJhT0RkdjNBcU9ibm1QSEwxRHJmUmlubVBjR0lt?=
 =?utf-8?B?dmcyc0NsOGQ0eERzQnJQeDlFVUQybDQxaG5ldlB2cmNFYlowa3hSSHpSZXBx?=
 =?utf-8?Q?+wIrQQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WVlVSTc3TWhCUmhiaVFzTFN6M1hObVpkY3dZaHB1akx3bkc0Y3NqSWRNcHUv?=
 =?utf-8?B?VXlsdGtUemlIdm1vT3lldm5IampEbU9Pb2xpWVBqKzJXbVdzejA1Z2ZvYVND?=
 =?utf-8?B?VmRsMHZqQ0p3MnpPLzkwUy9MaGVvMWkwNndybndhQlU0S3RQbXgyWW55RDBT?=
 =?utf-8?B?d2ZmTlJwS29MSEVmNUxHR2RkK05LQnJPak9IS2Z1TkVVazY1RHQ5UDdMOXF2?=
 =?utf-8?B?RkRsMFlQNHhwekJGRU4xVExXS3l6ODlka1dVMzlxWWJ6WnA5aDFBb3plVnA2?=
 =?utf-8?B?S29nSkpwU1ZERDNvb05URUFtblRWVXowalV0ZFgvTmlsS05BRjM2YlVsUkdp?=
 =?utf-8?B?QmtSZXBmUWpaM0lsTzRQcTlnTmZqUWJmOE5QTmRMaDFOTHpRbkx5WVk3QVZ3?=
 =?utf-8?B?WU1TZWJ5bWZmUEFPU01DWGlEZlE4UC9mdDgxZzZpVDZnOE9GTVMwMjBISzJv?=
 =?utf-8?B?Mkx1SkZkYUFRNVFGWnZOaUpGZmJweXVleVVQYlptbGkxc1dTN3RaTU9vNzRy?=
 =?utf-8?B?YXVZaGxRbTlmWDk4K2h5cWV0NkhjbXB1eU9KTkNtN2NtN1ZObFVnZVVJRU5X?=
 =?utf-8?B?QVFDdDVRMWtkN1M5U0hYT0JnaFVid1dFeU1TQXBrYkFTR29ZcVphdEpldE85?=
 =?utf-8?B?TVlMaHYvbEV6ZisrUjhNQmgxUkRycWVZK2J6MzJtVlU0aE9WdFJ5Z0xUNHBD?=
 =?utf-8?B?dEV6SUhkV0xQQ3BnWC90U2dPRFB0dG1vd1RVS2VoWjcwaHpNOHhCY0FIQzNv?=
 =?utf-8?B?bDRWTElPLzFSWnpXUWVaN2p3OVdsVktoRXQ0WjA4Qk5ZbUNNdkxLUm9RMVRy?=
 =?utf-8?B?bjlZSHI0UWFJdlo3NjNkYjhlMlU0NjM2RVp0UHd3ajk3NE1ldmtYUC9DQ2ZM?=
 =?utf-8?B?cVF6dVpENFkwL1Azd0VHRmdyYWh5c1RXdTZweUtMb1RLK1A1TUlpSDFqd0pa?=
 =?utf-8?B?dVp2RitBcktxMXVQeGlqRTFQSG84Q2g2ZHVBaVNmdmhFRU9qb1NmRkNlQmdK?=
 =?utf-8?B?d2xsYXFkTlN4Y3laNlVKWjVlUk1yc3NLTVdYL1Q5Unp4SE81TDd4b0VZM0xS?=
 =?utf-8?B?bHhzSW8vRHorRVFKeWRqWXk1bmxURUdVbUF6WEgzRCtOMnhoc0FGSFN2MUE0?=
 =?utf-8?B?L2hJZVJSeHJabkttK1J3Y3d2cW9XLzVTQktEVlI2dHgvNGY5b1hRYXoxNElm?=
 =?utf-8?B?K25OK2VWU29mS3BOc1BwelVjby9kaWhMVnlNQlpMRWtCazBWcHQ3L1pQalFU?=
 =?utf-8?B?N1NCLzZIMTVCRWxDMFdRdmdtQ2pDdElSMFFHR2lTS0ZKSE8yUkI3bHY5SGlI?=
 =?utf-8?B?VWxSNnp0QkUrY3BQR083d3MvZi8xWWtOeGhYNVNlWGRlVWFWOU5aOFJEUTBX?=
 =?utf-8?B?eGQ0akNNSjdFeXB6RCtOOWtlT2gvaGdlQk9kcFZBY2RHODJBVSsrRWV1dm5r?=
 =?utf-8?B?ZTkzNTZXVTUvQzFBS01jVUNEbE1kbmY5U1ZRVkppeTZDY205VW8rdzI2eElF?=
 =?utf-8?B?emRROWIxb0h2WStHVVpiVWRrUkhzcmJ2WTQzR2RnK3YzMEJFWmtrUnhpTG8w?=
 =?utf-8?B?cjV5RkZVdXVhUU04elhtMCs5QTBGQWdMdnQ5T1VGZnVRSTJjUldpZlRiTEdH?=
 =?utf-8?B?RzVTN2VCVTREbjRXZE5qL1FwUlMyemRrenM2SXkvbFVyaTBMM0lrREN6UGRj?=
 =?utf-8?B?cEZJd2ViM0ZWdUl5RXFtM1QxNVpvanNtN285TmV0Vk5ibjlTRElkQkNvc3p1?=
 =?utf-8?B?ZzRhQmI1b3NVT1UxcExHWGNhUXZ1NXBkaVlzdGxjVTQrajFCemRrV2hHakpP?=
 =?utf-8?B?Y1pVZS9yVjFZQU82QURubHJBUGo2Mk5WU2dPL1lwL0pKUDNCOUJyakNOQ21K?=
 =?utf-8?B?dG9sQ2c5a2VZdy91czRxWWxDODNzbWVKaFM4bXQzaGpFTnJQS0s2QTl5OWZF?=
 =?utf-8?B?WDQ0M3pkbmpJRnNvMjgzaGJiQ1N2ak1ROWlaTll0b2Y1cDdGVlJqN0hyeGVz?=
 =?utf-8?B?aExTanNBVXRIcDJNYVRYOGtXTVlURUxabWtuV2MzSEhFeHRLVU9ORWQxVXQ2?=
 =?utf-8?B?NWJVN2FmRkpuNUlWcnc3eHVuMmUzMWxZSlo2NXdXSFVnVENTamRFQmpDNHJQ?=
 =?utf-8?B?cnhLOUpGN3NxZ0t3aUJoRG83eDJneGxibmhZVm9pMHFHNlVnRFVNN05YUER3?=
 =?utf-8?Q?Gf6bSFMWyeSY3yPz09yetC4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B43449C30C32924687FBEF97DDA84531@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d5977c4-dc1e-4a75-f115-08de00ed4576
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 13:20:20.5822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: W1hHee/2d7OqCHEvix2qh3U+oLDcUyirfZ6Kt55/Mj0bD/qLeUQBevQbKaGgwmIrztU3fR8ORY8m3PIg77ICG+BdMPE0tNxx+1ls2/NIfDo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5206
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

KyBJIGhhZCBMdWNhcycgZW1haWwgaWQgd3JvbmcuIEZpeGVkLg0KDQpPbiBXZWQsIDIwMjUtMTAt
MDEgYXQgMTY6MTAgKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiBPbiBXZWQsIDAxIE9jdCAy
MDI1LCAiR292aW5kYXBpbGxhaSwgVmlub2QiIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNv
bT4gd3JvdGU6DQo+ID4gT24gV2VkLCAyMDI1LTEwLTAxIGF0IDEzOjAzICswMzAwLCBKYW5pIE5p
a3VsYSB3cm90ZToNCj4gPiA+IE9uIFdlZCwgMDEgT2N0IDIwMjUsIFZpbm9kIEdvdmluZGFwaWxs
YWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+ID4gd2FfMjIw
MTQyNjM3ODYgaXMgbm90IGFwcGxpY2FibGUgdG8gdGhlIEJNRyBhbmQgaGVuY2UgZXhjbHVkZSBp
dA0KPiA+ID4gPiBmcm9tIHRoZSB3YS4NCj4gPiA+ID4gDQo+ID4gPiA+IHYyOiBMaW1pdCB0aGlz
IHdhIHRvIGRpc3BsYXkgdmVyaW9uIDExIHRvIDE0LCBkcm9wIERHMiBmcm9tIHRoZQ0KPiA+ID4g
PiDCoMKgwqAgZXhjbHVzaW9uIGxpc3QsIHVzZSBpbnRlbF9kaXNwbGF5X3dhIChMdWNhcykNCj4g
PiA+ID4gDQo+ID4gPiA+IEJzcGVjOiA3NDIxMiwgNjY2MjQNCj4gPiA+ID4gU2lnbmVkLW9mZi1i
eTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+
ID4gPiA+IC0tLQ0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV93YS5jIHwgMTIgKysrKysrKysrKysrDQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmggfMKgIDEgKw0KPiA+ID4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmPCoMKgwqDCoMKgwqDCoCB8wqAgMyAr
LS0NCj4gPiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuYw0KPiA+ID4gPiBpbmRleCAzMWNkMmM5Y2Q0
ODguLjdjYTIzODcyNWUzMCAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3dhLmMNCj4gPiA+ID4gQEAgLTUyLDYgKzUy
LDE2IEBAIHN0YXRpYyBib29sIGludGVsX2Rpc3BsYXlfbmVlZHNfd2FfMTYwMjU1NzM1NzUoc3Ry
dWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ID4gKmRpc3BsYXkpDQo+ID4gPiA+IMKgCXJldHVybiBE
SVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMzAwMCB8fCBESVNQTEFZX1ZFUngxMDAoZGlzcGxh
eSkgPT0gMzAwMjsNCj4gPiA+ID4gwqB9DQo+ID4gPiA+IMKgDQo+ID4gPiA+ICsvKg0KPiA+ID4g
PiArICogV2FfMjIwMTQyNjM3ODY6DQo+ID4gPiA+ICsgKiBGaXhlczogU2NyZWVuIGZsaWNrZXIg
d2l0aCBGQkMgYW5kIFBhY2thZ2UgQyBzdGF0ZSBlbmFibGVkDQo+ID4gPiA+ICsgKiBXb3JrYXJv
dW5kOiBGb3JjZWQgU0xCIGludmFsaWRhdGlvbiBiZWZvcmUgc3RhcnQgb2YgbmV3IGZyYW1lLg0K
PiA+ID4gPiArICovDQo+ID4gPiA+ICtzdGF0aWMgYm9vbCBpbnRlbF9kaXNwbGF5X25lZWRzX3dh
XzIyMDE0MjYzNzg2KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+ID4gPiArew0K
PiA+ID4gPiArCXJldHVybiBESVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPj0gMTEwMCAmJiBESVNQ
TEFZX1ZFUngxMDAoZGlzcGxheSkgPCAxNDAxOw0KPiA+ID4gDQo+ID4gPiBJU19ESVNQTEFZX1ZF
UngxMDAoZGlzcGxheSwgMTEwMCwgMTQwMCkNCj4gPiA+IA0KPiA+ID4gQWxzbyBJJ20gbm90IHN1
cmUgaWYgd2UgcmVhbGx5IG5lZWQgc2VwYXJhdGUgZnVuY3Rpb25zIGZvciBvbmUtbGluZXJzDQo+
ID4gPiBsaWtlIHRoaXMuIFRoZSBkb2N1bWVudGF0aW9uIGNvdWxkIGJlIGluIHRoZSBzd2l0Y2gg
Y2FzZSB0b28/ICpzaHJ1ZyouDQo+ID4gDQo+ID4gVGhhbmtzLiBJIHdpbGwgdXBkYXRlIHRoYXQu
IEkgd2lsbCBnZXQgcmlkIG9mIHRoZSBjb21tZW50cy4gSSBkb250IHRoaW5rIGl0IGFkZHMgYW55
IGV4dHJhDQo+ID4gaW5mb3JtYXRpb24gb3RoZXIgdGhhbiB3aGF0IGl0IGNhbiBiZSBmb3VuZCBm
cm9tIHdhIGRldGFpbHMuDQo+IA0KPiBCdXQgSSBkaWQgbm90IHNheSB3ZSBzaG91bGQgZ2V0IHJp
ZCBvZiB0aGUgY29tbWVudHMhIFdlIGRvbid0IHdhbnQgdG8NCj4gbWFrZSBwZW9wbGUgbG9vayB1
cCB0aGUgd2EgZGV0YWlscywgYmVjYXVzZSBpdCdzIG5vdCBwdWJsaWNseSBhdmFpbGFibGUNCj4g
aW5mb3JtYXRpb24uDQo+IA0KPiBJJ20ganVzdCB3b25kZXJpbmcgaWYgd2UgbmVlZCB0aGUgc2Vw
YXJhdGUgKmZ1bmN0aW9uKi4NCg0KSSBnb3QgdGhhdCBwYXJ0LiBJIHRob3VnaHQgSSB3aWxsIHJl
bW92ZSB0aGUgY29tbWVudHMgYWxvbmcgd2l0aCB0aGF0IGNoYW5nZSEgT3JpZ2luYWxseSB0aGlz
IHdhDQphbHNvIGRpZCBub3QgaGF2ZSBtdWNoIGluZm9ybWF0aW9uIGFzIGNvbW1lbnRzIG90aGVy
IHRoYW4gdGhlIGltcGFjdGVkIHBsYXRmb3Jtcy4gDQoNCk9rYXkuIFdpbGwgd2FpdCBmb3IgVmls
bGUncyBmZWVkYmFjayBiZWZvcmUgZmxvYXRpbmcgYW5vdGhlciB2ZXJzaW9uDQoNCkJSDQpWaW5v
ZA0KPiANCj4gQ0M6IFZpbGxlIHdobydzIGhhZCBwcmV0dHkgc3Ryb25nIG9waW5pb25zIG9uIHRo
aXMgd2hvbGUgdGhpbmcuDQo+IA0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPiANCj4g
PiBCUg0KPiA+IFZpbm9kDQo+ID4gPiANCj4gPiA+IEJSLA0KPiA+ID4gSmFuaS4NCj4gPiA+IA0K
PiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+IMKgLyoNCj4gPiA+ID4gwqAgKiBXYV8xNDAx
MTUwMzExNzoNCj4gPiA+ID4gwqAgKiBGaXhlczogQmVmb3JlIGVuYWJsaW5nIHRoZSBzY2FsZXIg
REUgZmF0YWwgZXJyb3IgaXMgbWFza2VkDQo+ID4gPiA+IEBAIC02Nyw2ICs3Nyw4IEBAIGJvb2wg
X19pbnRlbF9kaXNwbGF5X3dhKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBlbnVtDQo+
ID4gPiA+IGludGVsX2Rpc3BsYXlfd2ENCj4gPiA+ID4gd2EsDQo+ID4gPiA+IMKgCQlyZXR1cm4g
aW50ZWxfZGlzcGxheV9uZWVkc193YV8xNjAyNTU3MzU3NShkaXNwbGF5KTsNCj4gPiA+ID4gwqAJ
Y2FzZSBJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAzMTE3Og0KPiA+ID4gPiDCoAkJcmV0dXJuIERJ
U1BMQVlfVkVSKGRpc3BsYXkpID09IDEzOw0KPiA+ID4gPiArCWNhc2UgSU5URUxfRElTUExBWV9X
QV8yMjAxNDI2Mzc4NjoNCj4gPiA+ID4gKwkJcmV0dXJuIGludGVsX2Rpc3BsYXlfbmVlZHNfd2Ff
MjIwMTQyNjM3ODYoZGlzcGxheSk7DQo+ID4gPiA+IMKgCWRlZmF1bHQ6DQo+ID4gPiA+IMKgCQlk
cm1fV0FSTihkaXNwbGF5LT5kcm0sIDEsICJNaXNzaW5nIFdhIG51bWJlcjogJXNcbiIsIG5hbWUp
Ow0KPiA+ID4gPiDCoAkJYnJlYWs7DQo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV93YS5oDQo+ID4gPiA+IGluZGV4IGFiYzFk
ZjgzZjA2Ni4uMzY0NGU4ZTJiNzI0IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfd2EuaA0KPiA+ID4gPiBAQCAtMjUs
NiArMjUsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlfd2Egew0KPiA+ID4gPiDCoAlJTlRFTF9ESVNQ
TEFZX1dBXzE2MDIzNTg4MzQwLA0KPiA+ID4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE2MDI1NTcz
NTc1LA0KPiA+ID4gPiDCoAlJTlRFTF9ESVNQTEFZX1dBXzE0MDExNTAzMTE3LA0KPiA+ID4gPiAr
CUlOVEVMX0RJU1BMQVlfV0FfMjIwMTQyNjM3ODYsDQo+ID4gPiA+IMKgfTsNCj4gPiA+ID4gwqAN
Cj4gPiA+ID4gwqBib29sIF9faW50ZWxfZGlzcGxheV93YShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSwgZW51bSBpbnRlbF9kaXNwbGF5X3dhIHdhLCBjb25zdCBjaGFyDQo+ID4gPiA+ICpu
YW1lKTsNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jDQo+ID4gPiA+IGluZGV4IDBkMzgwYzgyNTc5MS4uOTYwN2ZkY2IwY2MwIDEwMDY0NA0K
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4g
PiA+ID4gQEAgLTkzMyw4ICs5MzMsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9mYmNfcHJvZ3JhbV93
b3JrYXJvdW5kcyhzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+ID4gPiA+IMKgCQlpbnRlbF9kZV9y
bXcoZGlzcGxheSwgSUxLX0RQRkNfQ0hJQ0tFTihmYmMtPmlkKSwNCj4gPiA+ID4gwqAJCQnCoMKg
wqDCoCAwLCBEUEZDX0NISUNLRU5fQ09NUF9EVU1NWV9QSVhFTCk7DQo+ID4gPiA+IMKgDQo+ID4g
PiA+IC0JLyogV2FfMjIwMTQyNjM3ODY6aWNsLGpzbCx0Z2wsZGcxLHJrbCxhZGxzLGFkbHAsbXRs
ICovDQo+ID4gPiA+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDExICYmICFkaXNwbGF5
LT5wbGF0Zm9ybS5kZzIpDQo+ID4gPiA+ICsJaWYgKGludGVsX2Rpc3BsYXlfd2EoZGlzcGxheSwg
MjIwMTQyNjM3ODYpKQ0KPiA+ID4gPiDCoAkJaW50ZWxfZGVfcm13KGRpc3BsYXksIElMS19EUEZD
X0NISUNLRU4oZmJjLT5pZCksDQo+ID4gPiA+IMKgCQkJwqDCoMKgwqAgMCwgRFBGQ19DSElDS0VO
X0ZPUkNFX1NMQl9JTlZBTElEQVRJT04pOw0KPiA+ID4gDQo+ID4gDQo+IA0KDQo=
