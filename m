Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8641A9DEA90
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 17:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F7F210E2AF;
	Fri, 29 Nov 2024 16:08:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eq2D0nTQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B75310E0C2;
 Fri, 29 Nov 2024 16:08:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732896523; x=1764432523;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZzFtJDuacTASs8pXe59m20z0U6EjPu4c2b/F57LWpFM=;
 b=eq2D0nTQ5iRsBrpzeXLN7TIsqoFbQGU75pvEQq3VrhoEhrl3lj1JjXeI
 X2ChqSyXmxhPz7Jpy3kgVgphEKaOSxv55vF2nL1LGjWK6BLvLQ7OLT64w
 dyy8ACgeWaPw3iVaiOVBhvaVZjZ89dD3EapyeNHH7+ogOHjwxO+12WjUO
 qjeNh1LQMo1l9FsCvNGmCNvXgYl69LJBy919FsZuHnyD0CkloE5Pi1pkE
 gkCjZlVnG2dT+rSDm3dDkqozJAsG/bk3JAMKwRC4769iPab5hIZfwTCz9
 wsZG4HXIJFTS7xDzP106awpB+cO6a0vMwetsKVgQhZC1uG2Q60O1QiMEA Q==;
X-CSE-ConnectionGUID: JomcquraRZ+morVReCg38w==
X-CSE-MsgGUID: eqS5lrusS7euQyv7tVpCJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11271"; a="32501910"
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="32501910"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 08:08:43 -0800
X-CSE-ConnectionGUID: TL/mL3UjShWiFR5aHDb7Xw==
X-CSE-MsgGUID: 6uCkdnR1TuOaY57QIEUrHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,196,1728975600"; d="scan'208";a="97483833"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2024 08:08:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 29 Nov 2024 08:08:42 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 29 Nov 2024 08:08:42 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 29 Nov 2024 08:08:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HjtaFyvq8fQltZll260Xc44KqxD432S2JKrAYvJoFWxRkyjhC7Ck1CmK/w+DvuWIzgrIDq7p3ns0B+fEHGusg75KatapkHPxlZcUdBJAxCNvp2FHPVxzbH7mlBsxXZOEPVVSgefkgZc/B+V2tzxIUF+me57HEWQ0yXfsY8ehU6yJqFXNUWFXEcgz82H/gupJTRgmJeuWl8ZzO+G1MNCkpeZEhNEjGB9lcJltzfLbxR5oIncuOqtyZSAHSRpyx4W6FS02jNFdYA9n1cCN3zc8AvxWGgumlMtlzmVMf+LFtk3JEJOUDmr/QUJUqW/BKVsj9kyoPylVmAN4+ykoMNxLpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZzFtJDuacTASs8pXe59m20z0U6EjPu4c2b/F57LWpFM=;
 b=nEhx7a2WOB/xj2Uay9KVzUltEAM/JPB9ef86g6mymo7Oe75n8Mf7BL7i9GZMFAZZyqtAp/XOY5LL7UTLJlcyZsYcfiw3thncWvC3h5pXxBoe8by9+BomFqztpHmSpQtdlLlvhmDzvMrG+Nog5CNIYR/y1YmoMtDdF3LQ3bws0sAYZFYc6BMf/l6l/POyyOvj1xogMI0M76uJeTu6OUL/imKkYpl/JIpDKUHIzD4lSuQqWp8GOyKr6PqFzbkTcBO6wNB22rZqlUC5Oe9FYgqZou4wTQCz2xbSF+hf7rDYCRGuKz15sNytZIzci6+vTUeWf4SNYSc51WG7bAvh2AZumA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by CYYPR11MB8408.namprd11.prod.outlook.com (2603:10b6:930:b9::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.15; Fri, 29 Nov
 2024 16:08:39 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::2554:e827:dbde:714%7]) with mapi id 15.20.8207.010; Fri, 29 Nov 2024
 16:08:39 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlz?=
 =?utf-8?B?cGxheTogcG93ZXIgY29udmVyc2lvbiB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxh?=
 =?utf-8?Q?y_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9kaXNwbGF5?=
 =?utf-8?B?OiBwb3dlciBjb252ZXJzaW9uIHRvIHN0cnVjdCBpbnRlbF9kaXNwbGF5IChy?=
 =?utf-8?Q?ev2)?=
Thread-Index: AQHbQcJ8jt289J3p80GcL19tXOXSR7LN626AgACCw6A=
Date: Fri, 29 Nov 2024 16:08:39 +0000
Message-ID: <PH8PR11MB6753305F6EEE04B01A398822F22A2@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <cover.1732808222.git.jani.nikula@intel.com>
 <173281812701.4193954.11132455123941109084@b555e5b46a47>
 <87sera78pe.fsf@intel.com>
In-Reply-To: <87sera78pe.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|CYYPR11MB8408:EE_
x-ms-office365-filtering-correlation-id: 69734afb-0689-453d-6ddc-08dd10901647
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eEo5eTV1VG9sTGpmWCtvR0VaKzBGWmNocTlTeTJFMmF3ZG00d09tcVlvS2Vs?=
 =?utf-8?B?MUpILzRzM0FvUmJROGtlYXBWbDk2dnlPWFhlTGNBelZUUm1Cdk1HdHo3L0JN?=
 =?utf-8?B?YmlJUW10ZEZaSHZaQnRsSkp5U2h5UXhaSTNIYjloT2hHWFA1aHBKYzZtNDVY?=
 =?utf-8?B?SWFRbGl2Qi9rV3V3QUN5cUpySzdlWTRZT2N0ak1HQlNZeWZRV056RDFITUlm?=
 =?utf-8?B?WnVFV2YrU29QVHRna0ZpR0NMRktlL0Y1cEx4bnp6Q3hxaTlTOFBzWm9nQnBj?=
 =?utf-8?B?bWVlZlVnOG5sL0haalZ3TE51d3JzeUdHQVNScmwwempvNUdaVERJVU9CTTVz?=
 =?utf-8?B?NVV6cmV1WENINWhvVFpuREpZcWs2b21UeDNtNmNuMVZaNjdDOWhiL1pCZUY0?=
 =?utf-8?B?NnRPSWh1NnpIM2FJTGhwbVRhWHhmV1pJR3BqMDY3Y1d1WGZOd2IrN3VndThN?=
 =?utf-8?B?TlF4WUVubzJsOU03d3h1d2lwckZiQkJkKzNxMWRzZzliMzhVRWxJbkR2UDVV?=
 =?utf-8?B?aXFjNEtlMU1EUDR3UGFJbFVkWkhhNzhjcmxIdXpYZS8zOXZmWVdIc2g4TWRE?=
 =?utf-8?B?dVl6aE5YRU1FZlBQbGp4SzBPaFphTGtYaUJVdzlXMzlDT2xMZWlpeExaN3hE?=
 =?utf-8?B?ZGhrR3VmelQzejFmNldNY2E2VTlRVWNoREdJKzlPK0JDdU1hMFRCRXg5dHJt?=
 =?utf-8?B?VUJGTFMyQ0VsT01UVUdTYzZ1WnpWbUwyemd6R28vTXRubjlETlQ3NjNnVlVM?=
 =?utf-8?B?T1ZldnFOU0U5WTY2WEo1VzBnVWNwazAwcTY3VVZ2dzFvWE5kWk9qSUtnTzhG?=
 =?utf-8?B?STQ4a2ZuaENXWWV5K0prKysyTzZmS2RkTzNYdnhGNG0vZVVuMmM0MEJMWEZR?=
 =?utf-8?B?ZDR2RDZ4dVQ0TzI4YjFBUVR1ellhekJXTDVxNCtXSTdmbnlJRnZOaGhJcnJQ?=
 =?utf-8?B?dTRqSHRVZzFZYm95bG5iTWE1MnJ1Vm96R0Nma2prWEVMRUM5dVpZSEZuRUtO?=
 =?utf-8?B?MVFISE55TUovblRwZDllbEdBUEJuNW5EUVJJYlhWaE9vSzBWZkM1M3YzOFJm?=
 =?utf-8?B?dk5acjhiNjVIR2VQck9nYkJTTWJjbFdrVGo0T3FGN1UrWGc4aWNtWTV5VjVw?=
 =?utf-8?B?UStucngxYWZLdnUvdFlMTDFEOC9mMEkwbDVzaUc5czdSSEFsWmhzL2RJUVda?=
 =?utf-8?B?eXR1dEV2MmhPNXZMMEdsUWlXc2hLZEVQUHgraGZ5UFhybUQ0TlZ1ZS9RMWd2?=
 =?utf-8?B?azhUd2xMNHhRMnp3QkxLbGd1NHAyb1pvcXMzZHZ5dnRzU3dZUzdnZThKd3Bk?=
 =?utf-8?B?azkrWW95dEJEL1MwN2hKSXhJUjMxVXVrWFdwVVMvSFcyU0JjNE5LejZ2SDZ1?=
 =?utf-8?B?U0tLdXZzV3FlekpvZlN0NVVNT0pwRXVibDlIUXNUWldRalMzWlRPTk5uSVhI?=
 =?utf-8?B?TktVV1A5V0x2dHNML0FGWVVQdkVqSTFBUEZmcmVWcmdwQ3RSSXRvbk5mK1pN?=
 =?utf-8?B?eXFMcE9JTzAvdmhvYUpkWmxMamROUkZvK1NZT0p5OGxIczBHUmtXQjYyb1FS?=
 =?utf-8?B?OFhoSGNQL1E5OWdiaHRHOTROTnhsU1NJUFV4N3ZINzZycS8xMnhjOTNQWTBW?=
 =?utf-8?B?b2FRbEFLZ01xWDFNTzQzOEhNeWN2M2dhRUxvMjFIeTBGeWhUWjZYWWVhUVdP?=
 =?utf-8?B?U2VZcXJaNDFYb0VVL1FybHdWS2NYblA4WGV4eEJ1YjNqRFRCeTBvVlhQNENz?=
 =?utf-8?B?c2FEOTlGWUp6bWlyUEN2THhSNUxMT2RFVFVqREhrTEtKNVpqQ0x4Rk5Ibi9q?=
 =?utf-8?Q?O4JaYJlTfT6yR/FeGCvFrotrKe1IGb9nYaR8g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlgwSVFwNHd1VTVpRDJwV0tsTUp6SXlEQXVZbmlXazZLQVNxUEwxb09lMVY5?=
 =?utf-8?B?SW1jcTVjQlZpck42SVlCUWNBUTJLaVNKamJ6UGRtVVk0ajBoOTM3WDI1RTNq?=
 =?utf-8?B?Z0d6cThON2RwQWVuTysvR0RsQS9pVFZ0M2JxdHVYUUczKy82WXo5UjFyemZI?=
 =?utf-8?B?bVExL3h6bDlTSVVPcERob1JCa1YzcXBLbWdOQkFLVCtLMEovVkxIVitRNzFQ?=
 =?utf-8?B?WG4rVWdzYlRhZWk1Z0YzdE9CeXR4UXlmQmNNVUFvUU03aHNwQXV6dXVuY09Y?=
 =?utf-8?B?U2VjVndIWWZnVTBJcmVOTUZ4cWd4N3JTSDFNdWF1T0hmK3RMOHNJMVZYZ2Z6?=
 =?utf-8?B?UXpkemd4eFJmSGYvdEErUncrd2UwYkxIM1c1b3l2RDlkb2FxTC91Q1V3S29l?=
 =?utf-8?B?bm9wVTFaUVdBVklnc0FuN0Y0cGlaTytveGRkb043RzRyU2thbGRlL0xSdEtN?=
 =?utf-8?B?L0JoN2NZcFA2MFVkeU8wRVBYRFd5MmoyblYwNjkwb05JREdNdFNnMGxuR1dV?=
 =?utf-8?B?V3ZLdmVIR3E2ZFZSdkQyVkk4STFKZkFyamF0bXV5K2IvRU54dDFWVmdHbDRv?=
 =?utf-8?B?NW45V1VJS1pzYzZlNlExa01iV1RGUWZDY2FNRm52ZG5PY2hmaFF0YXg3djh2?=
 =?utf-8?B?ZTRCNitPZzQ2MUtkVHd5a0lWdjQ3eC84UEdsNUJwWkVKNFJrdklleGtyZW83?=
 =?utf-8?B?aWFDV0dxQUhTYVBoenNXQkxrTkZLZnRaR3JPb3dPYjhzOEZ2OHJBTHVTanMr?=
 =?utf-8?B?UU4xYU9iWnBsR1g0TG4vSWo4c1RsenZ2SngxN1ljdnh4VXYyWnRXQzd1Ukhv?=
 =?utf-8?B?N0JjNTVta1ZPLzdpemdFbEVVVm10SlNEQ3BlWjhuQWZMVWtRZGd4bm8yME45?=
 =?utf-8?B?eEx0UnlRQjNBaSttKzhpZVVaR0N6ejhydWphSlhQTEQ0eG5lZFdTeTVTTi9o?=
 =?utf-8?B?ZHlzMEtaQ1hJSTB1Uzk2Vm5qUlk0WStwYkxYTlhwb2ptdkJsa0cyL3ZCa0RF?=
 =?utf-8?B?Q29vYXlNbzRQa25CMlhSNm5NQVI3KzRuWXlFMDZRSjVaVCtXN0RsS1QwS1Qw?=
 =?utf-8?B?Ukk3U1c4TWJ3bFpjRGRCN3JwNnYzbWRsVkt2Rk1tTG1XaGNRSUZMSmo2Q25k?=
 =?utf-8?B?NlhGQ2tZR21sb2JKaHZQSjV2bmlFdGRhRkxlN1hEdENJczBsSFJNOTZVTlZu?=
 =?utf-8?B?dlBvK0JkbE0vSmJmRGlpL0pmanZkTlM4czR3dVJyVWs0cldMT0hVcVFvZW5r?=
 =?utf-8?B?WXM3WDdGWmZQL05IR2VEQ3JmclhYTGc4S1ZsL1V5Q2lvdnZDSFRlV0w4TEhM?=
 =?utf-8?B?cjRlVktpb0RtNVV2MkN6Vk9YSUFQSEhGcmVwckIrR2c4by9ZVVdaMjJ5eVoy?=
 =?utf-8?B?eXIvckEzUkRNclZkWEtGcHRTN0VFRGkySVFjSmRjMGk1QTJDc1V3SXpkWEJk?=
 =?utf-8?B?VEF1WEZadWVnOWxtbVhVb2FsZjZheEV3ZzYzVlN3QkF6bGxGemJjaXduN2Zx?=
 =?utf-8?B?Z1RXZ0NOd0tQbHYyUkFUZExLTnYxeHJENFVnSSt4TDZvZEVuMlNReEc5aGdU?=
 =?utf-8?B?R1p6STZzK3hOWllvc3JIL1RSWU1WMkl1Q0FRZFlaQ0huRGV6d3B3a29CRDUy?=
 =?utf-8?B?VUVKQloxU2ZOTUlLMmZQUUhqMVA1QkdvY1dGYjJkMEVRMG5BM2JRK1NLUkw1?=
 =?utf-8?B?S1Jlb0crNEtLdEliRUI4VG9xejVpc01TdWJuaGQzUUluM2NYWjdNNVAvcmNy?=
 =?utf-8?B?UldkdG1iRE45WUtWYnpSdWtZb3UwLyt0Y2I3eWRzd25nN25EQkZMK1grcXVm?=
 =?utf-8?B?WDhUN3hQSXc1MENidE5lSXV3U2ZmcFo5RVVyUEdTTUprY3Q3ekJBNVg1MTBU?=
 =?utf-8?B?MGJHNzR6M3dLWEVMd3pnR25jZmJITGd2YU9ndCtRVTBqeGUyemhadnNzZGJE?=
 =?utf-8?B?bGUrWXlicXR2RmpaT3VBejRSZDhYRmR4bkZvTmpCZTJ2NDdsdDYzWlRGbk9j?=
 =?utf-8?B?UElrUzJZczQxcytVY3RqMjNQNHo4TzVWR2xzU01JQWJHemV4R2prSDAwaExn?=
 =?utf-8?B?UDlNSTBkZ2JUMlk2cFBxZkgrSW54TUpaRXc1ZWg1Y0JuOFd1Umh5djBUQnI3?=
 =?utf-8?B?RlhPNGJ6allNNTA0eWwvQnJyWlYwTEJOcmM2ZVJOTkRZQ012RGIwMUF0YUVh?=
 =?utf-8?B?dXVjSkxHS3V1cFFnQmNDdUpCQ2ZPYTZ4NkdoVHJqdldTbjk1ZkUrUVBMdEo5?=
 =?utf-8?B?QWV3UmlTM1NOSk5TaTNOc2h1SDB3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69734afb-0689-453d-6ddc-08dd10901647
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Nov 2024 16:08:39.1535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GiLLYm0G5Np2ICEjEF+PkT/qdAIGmrfgeMtihoDxtOF4fGJkEYtUc4zpRz45KqlaBPQbvydgoM61Wha38QKxcqdPR3QUfGPqcPw3pkydRcE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8408
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQxODQ2LyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJhIDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSmFuaSBOaWt1bGENClNlbnQ6IEZyaWRh
eSwgTm92ZW1iZXIgMjksIDIwMjQgMTo1MCBQTQ0KVG86IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KU3ViamVj
dDogUmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheTogcG93
ZXIgY29udmVyc2lvbiB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAocmV2MikNCg0KT24gVGh1LCAy
OCBOb3YgMjAyNCwgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4g
d3JvdGU6DQo+ID09IFNlcmllcyBEZXRhaWxzID09DQo+DQo+IFNlcmllczogZHJtL2k5MTUvZGlz
cGxheTogcG93ZXIgY29udmVyc2lvbiB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAocmV2MikNCj4g
VVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE0MTg0Ni8N
Cj4gU3RhdGUgOiBmYWlsdXJlDQo+DQo+ID09IFN1bW1hcnkgPT0NCj4NCj4gQ0kgQnVnIExvZyAt
IGNoYW5nZXMgZnJvbSBDSV9EUk1fMTU3NTkgLT4gUGF0Y2h3b3JrXzE0MTg0NnYyIA0KPiA9PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09DQo+DQo+IFN1
bW1hcnkNCj4gLS0tLS0tLQ0KPg0KPiAgICoqRkFJTFVSRSoqDQo+DQo+ICAgU2VyaW91cyB1bmtu
b3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzE0MTg0NnYyIGFic29sdXRlbHkgbmVl
ZCB0byBiZQ0KPiAgIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0
aGUgcmVwb3J0ZWQgY2hhbmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0K
PiAgIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE0MTg0NnYyLCBwbGVhc2Ugbm90aWZ5IHlvdXIg
YnVnIHRlYW0gKEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBhbGxvdyB0
aGVtDQo+ICAgdG8gZG9jdW1lbnQgdGhpcyBuZXcgZmFpbHVyZSBtb2RlLCB3aGljaCB3aWxsIHJl
ZHVjZSBmYWxzZSBwb3NpdGl2ZXMgaW4gQ0kuDQo+DQo+ICAgRXh0ZXJuYWwgVVJMOiANCj4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxODQ2djIv
aW5kZXguaHRtbA0KPg0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NSAtPiA0NCkNCj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+DQo+ICAgTWlzc2luZyAgICAoMSk6IGZpLXNuYi0y
NTIwbSANCj4NCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0KPiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+
DQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50
cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTQxODQ2djI6DQo+DQo+ICMjIyBJR1QgY2hhbmdlcyAjIyMN
Cj4NCj4gIyMjIyBQb3NzaWJsZSByZWdyZXNzaW9ucyAjIyMjDQo+DQo+ICAgKiBpZ3RAa21zX3Bp
cGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmNAcGlwZS1hLWRwLTE6DQo+ICAgICAtIGZpLWNmbC04
MTA5dTogICAgICAgW1BBU1NdWzFdIC0+IFtETUVTRy1XQVJOXVsyXQ0KPiAgICBbMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzU5L2ZpLWNmbC04
MTA5dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmNAcGlwZS1hLWRwLTEuaHRt
bA0KPiAgICBbMl06IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlw
L1BhdGNod29ya18xNDE4NDZ2Mi9maS1jZmwtODEwDQo+IDl1L2lndEBrbXNfcGlwZV9jcmNfYmFz
aWNAaGFuZy1yZWFkLWNyY0BwaXBlLWEtZHAtMS5odG1sDQoNClVucmVsYXRlZCwgcGxlYXNlIHJl
LXJlcG9ydC4NCg0KQlIsDQpKYW5pLg0KDQoNCj4NCj4gICANCj4gS25vd24gaXNzdWVzDQo+IC0t
LS0tLS0tLS0tLQ0KPg0KPiAgIEhlcmUgYXJlIHRoZSBjaGFuZ2VzIGZvdW5kIGluIFBhdGNod29y
a18xNDE4NDZ2MiB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+DQo+ICMjIyBJR1QgY2hh
bmdlcyAjIyMNCj4NCj4gIyMjIyBJc3N1ZXMgaGl0ICMjIyMNCj4NCj4gICAqIGlndEBpOTE1X3Nl
bGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHM6DQo+ICAgICAtIGJhdC1hcmxoLTM6ICAgICAgICAgW1BB
U1NdWzNdIC0+IFtBQk9SVF1bNF0gKFtpOTE1IzEyMDYxXSkgKzEgb3RoZXIgdGVzdCBhYm9ydA0K
PiAgICBbM106IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJN
XzE1NzU5L2JhdC1hcmxoLTMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
DQo+ICAgIFs0XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQxODQ2djIvYmF0LWFybGgtMy9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWwNCj4gICAgIC0gYmF0LW10bHAtNjogICAgICAgICBbUEFTU11bNV0gLT4gW0FCT1JU
XVs2XSAoW2k5MTUjMTIwNjFdKSArMSBvdGhlciB0ZXN0IGFib3J0DQo+ICAgIFs1XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3NTkvYmF0LW10bHAt
Ni9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzZdOiANCj4g
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQxODQ2
djIvYmF0LW10bHAtNg0KPiAvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
DQo+DQo+ICAgKiBpZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy1tb2Rlc2V0QGItZHAxOg0KPiAg
ICAgLSBiYXQtYXBsLTE6ICAgICAgICAgIFtQQVNTXVs3XSAtPiBbRE1FU0ctV0FSTl1bOF0gKFtp
OTE1IzEyOTE4XSkgKzEgb3RoZXIgdGVzdCBkbWVzZy13YXJuDQo+ICAgIFs3XTogaHR0cHM6Ly9p
bnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3NTkvYmF0LWFwbC0xL2ln
dEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXRAYi1kcDEuaHRtbA0KPiAgICBbOF06IA0K
PiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDE4
NDZ2Mi9iYXQtYXBsLTEvDQo+IGlndEBrbXNfZmxpcEBiYXNpYy1mbGlwLXZzLW1vZGVzZXRAYi1k
cDEuaHRtbA0KPg0KPiAgICogaWd0QGttc19waXBlX2NyY19iYXNpY0BoYW5nLXJlYWQtY3JjOg0K
PiAgICAgLSBmaS1jZmwtODEwOXU6ICAgICAgIFtQQVNTXVs5XSAtPiBbRE1FU0ctV0FSTl1bMTBd
IChbaTkxNSMxMjkxNF0pICsxIG90aGVyIHRlc3QgZG1lc2ctd2Fybg0KPiAgICBbOV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE1NzU5L2ZpLWNmbC04
MTA5dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVhZC1jcmMuaHRtbA0KPiAgICBbMTBd
OiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtf
MTQxODQ2djIvZmktY2ZsLTgxMA0KPiA5dS9pZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQGhhbmctcmVh
ZC1jcmMuaHRtbA0KPg0KPiAgIA0KPiAjIyMjIFBvc3NpYmxlIGZpeGVzICMjIyMNCj4NCj4gICAq
IGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfcG06DQo+ICAgICAtIGJhdC10d2wtMjogICAgICAg
ICAgW0FCT1JUXVsxMV0gKFtpOTE1IzEyOTE5XSkgLT4gW1BBU1NdWzEyXSArMSBvdGhlciB0ZXN0
IHBhc3MNCj4gICAgWzExXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9DSV9EUk1fMTU3NTkvYmF0LXR3bC0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZ3RfcG0uaHRt
bA0KPiAgICBbMTJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRp
cC9QYXRjaHdvcmtfMTQxODQ2djIvYmF0LXR3bC0yLw0KPiBpZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QGd0X3BtLmh0bWwNCj4NCj4gICAqIGlndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHM6
DQo+ICAgICAtIHtiYXQtYXJscy02fTogICAgICAgW0FCT1JUXVsxM10gKFtpOTE1IzEyMDYxXSkg
LT4gW1BBU1NdWzE0XSArMSBvdGhlciB0ZXN0IHBhc3MNCj4gICAgWzEzXTogaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTU3NTkvYmF0LWFybHMtNi9pZ3RA
aTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWwNCj4gICAgWzE0XTogDQo+IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0MTg0NnYyL2Jh
dC1hcmxzLTYNCj4gL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbA0KPg0K
PiAgIA0KPiAgIHtuYW1lfTogVGhpcyBlbGVtZW50IGlzIHN1cHByZXNzZWQuIFRoaXMgbWVhbnMg
aXQgaXMgaWdub3JlZCB3aGVuIGNvbXB1dGluZw0KPiAgICAgICAgICAgdGhlIHN0YXR1cyBvZiB0
aGUgZGlmZmVyZW5jZSAoU1VDQ0VTUywgV0FSTklORywgb3IgRkFJTFVSRSkuDQo+DQo+ICAgW2k5
MTUjMTIwNjFdOiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0vaXNzdWVzLzEyMDYxDQo+ICAgW2k5MTUjMTI5MTRdOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE0DQo+ICAgW2k5MTUjMTI5MThd
OiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVz
LzEyOTE4DQo+ICAgW2k5MTUjMTI5MTldOiANCj4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Au
b3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjkxOQ0KPg0KPg0KPiBCdWlsZCBjaGFuZ2Vz
DQo+IC0tLS0tLS0tLS0tLS0NCj4NCj4gICAqIExpbnV4OiBDSV9EUk1fMTU3NTkgLT4gUGF0Y2h3
b3JrXzE0MTg0NnYyDQo+DQo+ICAgQ0ktMjAxOTA1Mjk6IDIwMTkwNTI5DQo+ICAgQ0lfRFJNXzE1
NzU5OiA1Mzc5ZDBhODg1NThiNzMzMDhhZDgyZjE2M2U4MGI4NjM2MjZlOTBiIEAgZ2l0Oi8vYW5v
bmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xpbnV4DQo+ICAgSUdUXzgxMjk6IDM2MzQ5OWE4
NzlmZWU1YjliN2VkYThhY2Y3Yzc3MmJjZTM0MjM0OTMgQCBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+ICAgUGF0Y2h3b3JrXzE0MTg0NnYyOiA1
Mzc5ZDBhODg1NThiNzMzMDhhZDgyZjE2M2U4MGI4NjM2MjZlOTBiIEAgDQo+IGdpdDovL2Fub25n
aXQuZnJlZWRlc2t0b3Aub3JnL2dmeC1jaS9saW51eA0KPg0KPiA9PSBMb2dzID09DQo+DQo+IEZv
ciBtb3JlIGRldGFpbHMgc2VlOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTQxODQ2djIvaW5kZXguaHRtbA0KDQotLQ0KSmFuaSBOaWt1bGEs
IEludGVsDQo=
