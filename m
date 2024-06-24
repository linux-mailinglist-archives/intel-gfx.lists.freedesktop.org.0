Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C314B914255
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 07:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88EB910E0CE;
	Mon, 24 Jun 2024 05:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QjyngqaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D132F10E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 05:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719208620; x=1750744620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lrLxRiuaMQtSEsoBojNi4WW0Ki6hUSELhbCuaNAnx5c=;
 b=QjyngqaVq+YEi/dLAOTVaJe2gATUrg/o0M6ZiY0ztfuzF6XurJXI2KKi
 RpC3OMha7WydGOy6sCCkndV0T6VvGrE1spVlwO7q5kxfYRYcALpdxV40B
 wl6YYY/reBEqSd7YzTqg8JpHrYX+OWtaRxcEySZBYN1Rk3STL7r/Pclfr
 tZKzkBTek6njfuhK6BfaXENQTO0p7bo2uMykX2fpZiJMcGqJLscknS+oG
 rwa+9YTxlRf1i75/Vo1/Hnj36EogGIuLG4AmfrpuRuFtWXJ2/HW0E3O6Z
 PT4aiSd4iAeQmSZ5BU7gi5rI0rWNcOg5lhgn7Bf9Yt2wYHj+FYiCNgZ5C g==;
X-CSE-ConnectionGUID: przkavJHQBq5qbE0Ijz0uA==
X-CSE-MsgGUID: kblnQUweRsiqR5JuxPAKbQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11112"; a="16391729"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="16391729"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2024 22:57:00 -0700
X-CSE-ConnectionGUID: p8D/KsUgQ0yphHrjawDUsw==
X-CSE-MsgGUID: K420eQCwT0KVgy3lLXlgZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="43630062"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jun 2024 22:57:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 23 Jun 2024 22:56:59 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 23 Jun 2024 22:56:59 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 23 Jun 2024 22:56:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 23 Jun 2024 22:56:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TP62wRJYAbnKLVmckTw6KWBjnLgpwtwXyLTwKjcj4lgG32D1Vd6dhpYjpwoqFby2jr9s8UoP0UwGKYn7WwDKhd8DBCy0XW5qzmv8umrLAEXf2ee+qkZLSJJA7dC0eVW8fi8uORWmz/SEb6OUYMoyYPfMrc4jP2xd3UXTwNYgjykgkuPRNEn18awFvPa9yzdyX34YK7Wv7Gl0/1rtmrgzkRZ/FpbS0AJUj8TxUjClolgcEE070xq5b5E03HGRS8NnHKQA9UHNhkpt1IBeoFdjLLAdDfxMx39CVkdO6AnFRXxggBTEkjn4YxD8GHHWWnQObCWuq04y+Z9qH3Aq+Vxhwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lrLxRiuaMQtSEsoBojNi4WW0Ki6hUSELhbCuaNAnx5c=;
 b=hOwhj7udD4uCKTXpOKLRe9EoZiNMdwlw1zPnOge52Eit/BN6iy4Ruf9LP7TCaYyY/CfXoEL7rZC1bfFliKiix4cZWIaw8ezIaAU3JejY2utWDkPMOewLkJ/wBZk89OwHpAoFDjSqsAITVDRibH2oyWXB1H0IEDG7zWBB5JCYQ/L0rjDknt8qHYilMp0NmILZi82Mdk0jYXukVUe/dPiryUjWZ1m7aONIrs0AT5FwI8iE9AErELmpqNz1uVG4h8xG5AFdkZJnA4SYMQvzIm4r+07lRv+zCLSRljIHnsaIMSd9X5ac0ZTD/SvgcGEfiM/ZkLIQ9DsJmL37eDq9diklog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.29; Mon, 24 Jun
 2024 05:56:57 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.7698.024; Mon, 24 Jun 2024
 05:56:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v9 00/11]  Panel Replay eDP support
Thread-Topic: [PATCH v9 00/11]  Panel Replay eDP support
Thread-Index: AQHawhEBHMroSsHCO0KyeNTA8QK3RrHWcTNw
Date: Mon, 24 Jun 2024 05:56:57 +0000
Message-ID: <PH7PR11MB598149E542ADBA6347FED706F9D42@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240619062131.4021196-1-jouni.hogander@intel.com>
In-Reply-To: <20240619062131.4021196-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW5PR11MB5859:EE_
x-ms-office365-filtering-correlation-id: 59ca0c33-6ba7-465f-3e20-08dc94127516
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|366013|1800799021|376011|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?U2JZVzlnTklHVnh5akR3VEQ2UmQyK3pSbjRqakNZVXROS2JicksxeTRSZnYr?=
 =?utf-8?B?ZHZuVFVoajhGSVJGWUd4NExGMkxXdGxhMk9uQzM2bURmMnlIYkphQVQrOEtl?=
 =?utf-8?B?TjRiZ1ZaOE1Sd0N5ZjRxSXRUNUlMZjhEYUlGTHNQdU84ZTZnYm1BMklTaS92?=
 =?utf-8?B?RENqYlI1MCtCWmZKRVdyVTZjZTVtb0xKQ2VGL2YvZm1MSjFJcWxJaWRMSDY3?=
 =?utf-8?B?SU9UQ1d0Y09Qem9GcW9sNzBZUURuNHVrc2RpMjcrclUwZEJJQjBwWjBhOTRn?=
 =?utf-8?B?UG1Lc1paeFdsdWtRbEdhR1BmQ1ZNbUtaeGEvRk1SUHdTT2N0Q1hvY2lqZ2c5?=
 =?utf-8?B?c1NrQnBMUEpkWnYwaElzSUQyS3c5YjVReEZ0VHpmRjFIOXBxOWxBcVlnYTBH?=
 =?utf-8?B?bXpBMDFiTkVGSUk3dUY3UG9BWVNYNHdZSU9KME1Zb25kQk5aMDVMSW5vMlc3?=
 =?utf-8?B?N1RJUkxuZ2lOMEoxZVIyTWlrQW5KeUxRQlowRXd3NVFBQ3ZzdmhUWjVzQWRI?=
 =?utf-8?B?UEhDeTBvZE5HczFyVmR6bzFra1ltMnVQbWJHOWZIV2NzdkVlNTlyN25PdXhI?=
 =?utf-8?B?V1J0U0ZDOWQ4Y1ZESlUzUE5vckxOMHEyY2tzVlBFS2lOd1hnbzE5R3Mvc1M3?=
 =?utf-8?B?cEIvQWs0clZDc3RqUU1FeC8yWFhZbFQvbUQzNEtzQkk2bllRbWZQYUV3cDVU?=
 =?utf-8?B?V1BwK1EvdHZwUXBFTnNOeEkreFNDOUZQMnRlZExKN2U4SDBUcC9GWmNRQ2l5?=
 =?utf-8?B?Z0JVTUZoNlF6ZEt0ZVpZbWIraEEwdnZpaU4zTVdhUHlMN29mUXpSVng2OE9w?=
 =?utf-8?B?ZGYxaDJIcFN5aVJmeGFRM3A2bDltUXRpRDNWT0lzWlRBd1lKcXdFckhoU1k5?=
 =?utf-8?B?bkFSZlRIcTlEazFQazVZRmU5bEdxYldtRjQySjU4OEN2NUlzZEtUK0pXK0ZZ?=
 =?utf-8?B?N0s0dkt4UkxDUXNOWEswdXB1VTNYQWsxWmNmNWtVZ3M0Z01ZWkpHdHZnWlJW?=
 =?utf-8?B?eVo2ZHp1MENjZ0Jwb1NQbXE1WTBOZk8yT0gybklrdjhjcmpVdldNNzlBY2V3?=
 =?utf-8?B?aGtJV1ZQT1lJR2tKaWpaU1ZwQ09aQndDQ3BHaEFYRitMZDlMcFFIb3VqdHlP?=
 =?utf-8?B?UllqNUh2OTRKUGpxN2dqanpseGtEZW9iMlJNVjdDZVB5bzZNQStRczgzemh0?=
 =?utf-8?B?SzdDb3JPYTdzZmdpMmJuWHMrR2hiNVhCYjNnMHY5ZHA2UE0xNkVyZ2huRnFj?=
 =?utf-8?B?K0VMVVp4Y25MYU9TTjE0VThWcUpYc3RQZjcrZDVjRElZTlpaSUhUNzYyMThY?=
 =?utf-8?B?U1kwbGZVUVo1L0loOGpNdEJXZHBBRWFFR25qV2NCSGdPSDNwa3ZNVTZ1bGZi?=
 =?utf-8?B?Z0JGVmpuT3NPdGNsTy9YM2hjT0NiOEgwV1FEMVYyWERJT0dKdG93NjFpZlU2?=
 =?utf-8?B?TWI2RHB0UEpVR0VzMHBUWnY2NjhRd05WZHlkVU5Vdzg0VUdPUk1jRkQ0di9u?=
 =?utf-8?B?eFJGdGhzdi9RUjZIZlhSWXlOaFZ6QWVxMVZRVGxaOU5LcS9BN0xUazNMcEl0?=
 =?utf-8?B?b2lER2VPKytZUU5Cckt1ZnhaY1pxbEJYc3VSQWlVZ2JJYUJ5V0J3ZXNXQ0hC?=
 =?utf-8?B?RGtaQUcyK0czZmJCWUJBdWFLQXBxWlg1UDdUbHRzQVJwemJVUjJkUzE2ODZD?=
 =?utf-8?B?RlJiUXpSZklRTGh0eUpWaEkva283Z3l3RDF4VmpIQzZ0Wlg5WnM1NmlkNjBS?=
 =?utf-8?Q?5VRHRC48fgnhzFhb5YEAzydHHvBp26MTk5p9b9I?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(1800799021)(376011)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak5sL3lUMmNtaTFrVm1PalVzK2FEbytsc3ZtM3pPYVhnWUpRdWNEMEpvWDZz?=
 =?utf-8?B?bkxhNys3Uy80YVR0a1ZqVW1vaHhNZzU0SEc4SzQ1bmJoQjZVQ01CTEQ4c1RE?=
 =?utf-8?B?SUpXWWZJanBldXpDWjlBKzZmL2NIeEF0NWhROXc3cllSREwxNHh1RDZhRE1o?=
 =?utf-8?B?RFZHSldjUC9sV1ZNWW10VXNJRUdtY2ljKzRnZWwxT1ZWVittaEdIV0hKK0Z4?=
 =?utf-8?B?S1VwSU51dDFPU0d1aEZLZmNmZUxRR1FxaVV3WncvRmRIa05BMnFKZ1Iwcmxj?=
 =?utf-8?B?dFFHOThzN2FvQmMvZ0Fwc3JQek00aGluWHlPdTNkZ1RKcmpHVXJaWUt3QmFQ?=
 =?utf-8?B?TllSOW56ZzJ0dkRiVmpON1hBRjRadW1XZHVWTHd5aVJpV09vQ1ZRV21qOTNF?=
 =?utf-8?B?eldnRkhjdldlYm1GeFlUeHd0S3dqYTRONHJFb1BHWUpHRFFsVUtENkszRHVQ?=
 =?utf-8?B?dFEyYnE5WnJyT0svWmhrcVZ2YWFXSEpDMDFuOU16RlZwWFJMYVhrUyt1MGYw?=
 =?utf-8?B?RTRUaE1PYzY2eEhJMTV0QktGWFNHK1FQQnQrbzQ5eDk1UHZlSmhwQ3ZqOXRx?=
 =?utf-8?B?ekRFVkNlYkpuU3EwVnlOeXJYNTltT0Z4Z1R5QXhpZnZ3TWlTcmZ5b3NCdXJy?=
 =?utf-8?B?YUI4Wm9Mcy9CdFJtMkk4RStiYTNyRk9BTmpHTGZzZ09HdmMxQVpubGV1dWlB?=
 =?utf-8?B?Nmx2SWN6T2hJdE5SeFpvZVQ4VEU2TitmN2orY2ZCVGhkc1MxYm80amwvdkZZ?=
 =?utf-8?B?a2VmK0JnTGJnYUpDUzJKM2M0bncxZEhROUU0UGs4a2EwckFUL3A1YTA1bmRo?=
 =?utf-8?B?NndEYnFRLzdBVytnMmV2bURBb3VVdzdRRGhRdkRQaFlKd1BSQ3NPQXcwS3ZR?=
 =?utf-8?B?alBobGJReTlHRFpua3lJRXhNbzJCUGVJU09kdXcxejZ4NmtKUlFwcFdGMTFE?=
 =?utf-8?B?T3FmZCs3R0lWZXMwMENrYlFZaHQxYytkZHBhMmRKMEtHYWFNTnZSRmo3WVZF?=
 =?utf-8?B?TGh1MHVkRHhxZzJTazhTSDAra2kyTVpSTTdqUXMvRDBiT01VN3F6dzBDWU5Y?=
 =?utf-8?B?TFh0Mzd4VmJxazB6d1d3aVd3ajZ0YmFoazZTRS93L1QvTHZhRk5lWXZYTTZX?=
 =?utf-8?B?U2NZTGdnUkJ3UFJBLzRaMFp2TU9GMmw4WGpBS0orWkNQbEE4UkNzWWRQU2lL?=
 =?utf-8?B?RVMyNW53RndCTGZxQ21nK1NDYXJNeEl0TUg2TGQ0RHhwRHlFRkwvdXR6RTFR?=
 =?utf-8?B?VzVDZERWbnk0dTFxSGJ2VHFTOEFMV2dlYzZHcEVMZnBYc2pQZXdPbmZpdGky?=
 =?utf-8?B?c0ZwRm93ZDJSc1dwTSsxRTQzSzZiVWFLZ2dIQTlpM3l1TEZ4Z1hGbTY4ZUlR?=
 =?utf-8?B?bXdFNEVXSzRURXdISGVQT2V4M3RPR21GL2FHT0RQcWNlaG5tckMybGlQaHVm?=
 =?utf-8?B?bTJxVEJxbVp2YkVsUklPZzlldm5zS2RqbW0vLzNSb2IyVFo3WHF1M08xNGl5?=
 =?utf-8?B?Znl2RGRQc3RhR0xybWFySWFFKzk1THNhNm5vOG9JamNRQURuWklBWUlSeDI4?=
 =?utf-8?B?dERabFhVM05FdWEzLy9lRzZQWUNRQmh4UmVncjJKWHZKVGhNdDNCS25mazhE?=
 =?utf-8?B?VGFoMmFyNVhUeWlWSUhHdUZKTjNuTEpCT2pieEZHSGxZTkRLem96cURnQWFo?=
 =?utf-8?B?bWoxYUlVMEV1MnMvaU9hMVo1QmlJVkdCOE1wNE04SU1LNG9DR0hCTW81ZHVQ?=
 =?utf-8?B?OHlYdmtDVFc0Wkp6WDBZZXJNdUhyRmtIbUFjMFpxVVlYRTVydk5RTHd5SzB0?=
 =?utf-8?B?d3hkTlVZdmx4VDhEVGRHUDVyU0VwTFdXNXowV3hmSFN1c015WndzTUVxbHE5?=
 =?utf-8?B?cWtsRFZqaktzMkdrRVFrS1lLVGhDWEN2Um1jdGpudG1FUmllYWQxYUM4S2hF?=
 =?utf-8?B?M3lpeHVnNlF5WU1NanJ0NnVwcGdjeHZqdkM2SEJrMTRNeDdacUpDSU1aM21B?=
 =?utf-8?B?SkJKMzNRR2lQekpxMnBJTktObU82RzhuTlRQSDBYQkdydGhSQjNucHBzaVlJ?=
 =?utf-8?B?b3c2UU8vcmJxRmZYUVh3QmMxZW1iZUNPMEExbmF1Ukk5ZzQzT0FzcExBVTZl?=
 =?utf-8?Q?MN6/mtKz0EoOzDtID57KEVbDg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59ca0c33-6ba7-465f-3e20-08dc94127516
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2024 05:56:57.4319 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CZ2lVKtC8Xg0RMGuL+0AdQNdsjbn5g1NE+T76BoNORqdSN/F21oLX2kQtl5IC5iBqu6hcBWX5Ju0o7H/GYZaQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxOSwg
MjAyNCAxMTo1MSBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgS2Fob2xhLCBNaWth
DQo+IDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY5IDAwLzExXSBQYW5lbCBSZXBsYXkg
ZURQIHN1cHBvcnQNCj4gDQo+IFRoaXMgcGF0Y2ggc2V0IGlzIGltcGxlbWVudGluZyBlRFAxLjUg
UGFuZWwgUmVwbGF5IGZvciBJbnRlbCBodyBhbmQgZW5hYmxpbmcNCj4gaXQgb24gTHVuYXJMYWtl
IEhXIHdoZW4gZURQMS41IHBhbmVsIGlzIGF2YWlsYWJsZS4gUGF0Y2hlcyBhcmUgdGVzdGVkIHVz
aW5nDQo+IHR3byBkaWZmZXJlbmV0IGVEUDEuNSBwYW5lbCBtb2RlbHMuIElHVCBtb2RpZmljYXRp
b25zIGZvciB0ZXN0aW5nIGFyZSB1bmRlcg0KPiByZXZpZXcgYW5kIGF2YWlsYWJsZSBoZXJlOg0K
PiANCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzM4NjYvDQo+
IA0KPiB2OToNCj4gICAtIHJlYmFzZSAocGFydCBvZiB2OCBzZXQgaXMgbWVyZ2VkKQ0KPiB2ODoN
Cj4gICAtIHNlcmllcyByZW9yZGVyZWQgdG8gZWFzZSBtZXJnaW5nIHN1YnNldA0KPiAgIC0gd2Eg
MTYwMjE0NDA4NzMgbW9kaWZpZWQNCj4gICAtIEZpeCBwb3J0IGNsb2NrIHVzYWdlIGluIEFVWCBM
ZXNzIHdha2UgdGltZSBjYWxjdWxhdGlvbg0KPiAgIC0gRGlzYWJsZSBQU1IvUGFuZWwgUmVwbGF5
IG9uIHNpbmsgc2lkZSBmb3IgUFNSIG9ubHkNCj4gdjc6DQo+ICAgLSBmaXggaW1wcm9wZXIgU1Ug
YXJlYSB3aWR0aA0KPiAgIC0gd3JpdGluZyB3cm9uZyByZWdpc3RlciBpbiBXYSAxNjAyMTQ0MDg3
Mw0KPiAgIC0gZGlzYWJsZSBQYW5lbCBSZXBsYXkgaWYgcHNyX2VuYWJsZSBpcyBzZXQgIT0gLTEN
Cj4gICAtIHBlcmZyb20gQUxQTSBjaGVjayBmb3IgUGFuZWwgUmVwbGF5IEZ1bGwgRnJhbWUgdXBk
YXRlDQo+ICAgLSBwcmludG91dCB3aHkgUGFuZWwgUmVwbGF5IGlzIGRpc2FibGVkDQo+IHY2Og0K
PiAgIC0gZml4IGFuZCByZXdvcmsgc2luayBlbmFibGUNCj4gICAtIHJld29yayBjaGVja2luZyB2
YmxhbmsgbGVuZ3RoIGZvciBMdW5hckxha2UgYW5kIFBhbmVsIFJlcGxheQ0KPiAgIC0gcmVvcmRl
ciBwYXRjaGVzDQo+IHY1Og0KPiAgIC0gdXNlIHBzci0+c3VfcmVnaW9uX2V0X2VuYWJsZWQgaW5z
dGVhZCBvZiBwc3IyX3N1X3JlZ2lvbl9ldF92YWxpZA0KPiAgIC0gZG8gbm90IGNoZWNrIFZibGFu
ayA+PSBQU1IyX0NUTCBCbG9jayBDb3VudCBOdW1iZXIgZm9yIFBhbmVsIFJlcGxheQ0KPiB2NDoN
Cj4gICAtIGFkZCBzb21lIHBhdGNoIGZyb20gIlBhbmVsIFJlcGxheSBmaXhlcyIgc2V0IGhlcmUN
Cj4gICAtIGNoZWNrIDEyOGIvMTMyYiBlbmNvZGluZyBhbmQgSERDUCBlbmFibGUNCj4gICAtIHVz
ZSBpbnRlbF9hbHBtX2F1eF93YWtlX3N1cHBvcnRlZCBpbnN0ZWFkIG9mIGxvY2FsIHZhcmlhYmxl
DQo+ICAgLSBwcmludG91dCBkZWJ1ZyBpbmZvIGluIGNhc2UgUGFuZWwgUmVwbGF5IGlzIHByZXZl
bnRlZA0KPiB2MzoNCj4gICAtIGNvbW1pdCBtZXNzYWdlIG1vZGlmaWNhdGlvbnMNCj4gICAtIHMv
aW50ZWxfcHNyX3Bzcl9tb2RlL2ludGVsX3Bzcl9wcmludF9tb2RlLw0KPiAgIC0gcmVtb3ZlIGV4
dHJhIHNwYWNlIGZyb20gIlBTUiBtb2RlOiAgZGlzYWJsZWQiDQo+ICAgLSBkbyBub3QgYWxsb3cg
ZURQIFBhbmVsIFJlcGxheSB3aGVuIHVzaW5nIDEyOGIvMTMyYiBlbmNvZGluZw0KPiAgIC0gZG8g
bm90IGFsbG93IGVEUCBQYW5lbCBSZXBsYXkgd2hlbiBIRENQIGlzIGVuYWJsZWQNCj4gdjI6DQo+
ICAgLSBwcmludG91dCAiU2VsZWN0aXZlIFVwZGF0ZSBlbmFibGVkIChFYXJseSBUcmFuc3BvcnQp
IiBpbnN0ZWFkIG9mDQo+ICAgICAiU2VsZWN0aXZlIFVwZGF0ZSBFYXJseSBUcmFuc3BvcnQgZW5h
YmxlZCINCj4gICAtIGVuc3VyZSB0aGF0IGZhc3RzZXQgaXMgcGVyZm9ybWVkIHdoZW4gdGhlIGRp
c2FibGUgYml0IGNoYW5nZXMNCj4gDQo+IEpvdW5pIEjDtmdhbmRlciAoMTEpOg0KPiAgIGRybS9p
OTE1L3BzcjogQ2hlY2sgcGFuZWwgQUxQTSBjYXBhYmlsaXR5IGZvciBlRFAgUGFuZWwgUmVwbGF5
DQo+ICAgZHJtL2k5MTUvcHNyOiBJbmZvcm0gUGFuZWwgUmVwbGF5IHNvdXJjZSBzdXBwb3J0IG9u
IGVEUCBhcyB3ZWxsDQo+ICAgZHJtL2k5MTUvcHNyOiBlbmFibGUgc2luayBmb3IgZURQMS41IFBh
bmVsIFJlcGxheQ0KPiAgIGRybS9pOTE1L3BzcjogQ2hlY2sgcGFuZWwgRWFybHkgVHJhbnNwb3J0
IGNhcGFiaWxpdHkgZm9yIGVEUCBQUg0KPiAgIGRybS9pOTE1L3BzcjogMTI4Yi8xMzJiIFBhbmVs
IFJlcGxheSBpcyBub3Qgc3VwcG9ydGVkIG9uIGVEUA0KPiAgIGRybS9pOTE1L3BzcjogSFcgd2ls
bCBub3QgYWxsb3cgUFIgb24gZURQIHdoZW4gSERDUCBlbmFibGVkDQo+ICAgZHJtL2k5MTUvYWxw
bTogTWFrZSBjcnRjX3N0YXRlIGFzIGNvbnN0IGluIGludGVsX2FscG1fY29tcHV0ZV9wYXJhbXMN
Cj4gICBkcm0vaTkxNS9wc3I6IFBlcmZvcm0gcHNyMiBjaGVja3MgcmVsYXRlZCB0byBBTFBNIGZv
ciBQYW5lbCBSZXBsYXkNCj4gICBkcm0vaTkxNS9wc3I6IFBlcmZvcm0gc2NhbmxpbmUgaW5kaWNh
dGlvbiBjaGVjayBmb3IgUGFuZWwgUmVwbGF5IGFzDQo+ICAgICB3ZWxsDQo+ICAgZHJtL2k5MTUv
cHNyOiBDaGVjayBFYXJseSBUcmFuc3BvcnQgZm9yIFBhbmVsIFJlcGxheSBhcyB3ZWxsDQo+ICAg
ZHJtL2k5MTUvcHNyOiBNb2RpZnkgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheSB0byBzdXBwb3J0
IGVEUA0KDQpUaGUgY2hhbmdlcyBsb29rIGdvb2QgdG8gbWUgZm9yIG92ZXJhbGwgcGF0Y2ggc2V0
LCB3aXRoIGZpeCBvZiBKYW5pJ3MgY29tbWVudCBvbiBwYXRjaDENCg0KUmV2aWV3ZWQtYnk6IEFu
aW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IA0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCAgIDkgKy0NCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oIHwgICAyICstDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jICB8IDE2MyArKysrKysrKysrKysrKysrKy0tLS0t
DQo+ICAzIGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNlcnRpb25zKCspLCAzNyBkZWxldGlvbnMoLSkN
Cj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
