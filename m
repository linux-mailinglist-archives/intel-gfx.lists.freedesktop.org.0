Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA638AA6E18
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 11:28:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52DCE10E00C;
	Fri,  2 May 2025 09:28:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOtRb10W";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C408310E00C;
 Fri,  2 May 2025 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746178096; x=1777714096;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=NNAZlSKzrNrB6HtczINaTG4EXNzmyndWQeDgKVoqQUs=;
 b=YOtRb10WcwF1slRdrQyokqIVG19m6h+CcUSfHY9ofNlrH7qXgUgObdnf
 6uNDFOvfAXQXg3PUqMIHPHYykKhU/UlM83wpjVwgFVJYbnQdimLOl3Wdm
 u6cdNR+JbcgqWrOwtq0RioQj1U5I2/hmNPd0he/X7NTiuRpL6Sud2V/Gc
 x2lhTn2qldOpE3bHX05okqKh9h0lqDVS5d+dz79yWzd3Gf/SloG/aSTuw
 H5jh2Kg9YLXiHuL+FynYQepvcxk2vNwRPO7sMoxAC3Xk1cJC+R/EVnGYL
 n/LpqK0+0kItWBk9gXrEWt/kUD/A8+QO8W9qEtGreO8/tFm+0djc9DEkK w==;
X-CSE-ConnectionGUID: /oYkHCn8RmyG1WlH+l3a3A==
X-CSE-MsgGUID: Echfp5PiRtar5iTrSVnYwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58525260"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="58525260"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:28:16 -0700
X-CSE-ConnectionGUID: VQs7e1l+Q8izAS8mUKVF3A==
X-CSE-MsgGUID: i9WQddk8S+G0ZgOAnwe4Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="139402498"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 02:28:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 2 May 2025 02:28:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 2 May 2025 02:28:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 2 May 2025 02:28:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pcrgWAhMofBib/zwSJHHrcsp2sx31zQiPiSbAQCGubkwti2SNtAiJ18s3wtO883FrSU8dN3Y5ACOl1csz1pcUFiUu/Rmpo8amsZ95yzgGaGv56MXGHHLKdAkHMSijrz63uoPShMgE1CBpm3Dv2Q+wckcP4+shJBNDs9++Np/rYVS/wh7X8JIkJS0CQzHYOBHLZYjwzuTpAiMJsI3x7vHPBdAZQj46oldUDxRmBFokmAc2az+Xq8xl1He232ToWd1dJRSNbQFapzRHOxeFEbA9qHXUdrI+b+Y7fR1UNw0nUJWuygdivC89zbre6RKX8btazEGcyzXBq8tFLzgn1khzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNAZlSKzrNrB6HtczINaTG4EXNzmyndWQeDgKVoqQUs=;
 b=ZIkezlE8RPgMLpTl8/Gd8weJWu8FsD1nKY9ay1FzL7EnOFYXlu7do1jZ7VV020JCN2qM2crv+EQKCxd17FdnK64tzoJwBnf0OQtmLMAhdLXqcIKGVxWq4gNPMqBDjxu6Jf2Z+j+qpWDijNxAnGlYG5C33n9PC+anu70jHpjxafaD3peMi79lb4q9hg7hdyO5mFXAwNDgGWjQ94W5sHtkPmyOR/gKyrx2zA7I17qxPHoWcp+cPH1k7FAQRa0tj4bY6Qaxx5NBjFltObxsIQgvLslFXFecPNT8B0pJr5qmBKHaRgkuW1zgF0+RrrSkJQbeI67NNp/6VGwqz2NCgSI8iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB4778.namprd11.prod.outlook.com (2603:10b6:806:119::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.20; Fri, 2 May
 2025 09:28:06 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8699.022; Fri, 2 May 2025
 09:28:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from DP2.1
 specification
Thread-Topic: [PATCH 01/11] drm/dp: Add Panel Replay capability bits from
 DP2.1 specification
Thread-Index: AQHbu0CGU6Q2sSFYWE6K0MfGHHbv77O/ECsAgAACVgA=
Date: Fri, 2 May 2025 09:28:05 +0000
Message-ID: <d115bfb3cc6bab7f9d53de3dbe76b41964484731.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-2-jouni.hogander@intel.com>
 <87tt63wes1.fsf@intel.com>
In-Reply-To: <87tt63wes1.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB4778:EE_
x-ms-office365-filtering-correlation-id: 28948277-9ab9-4b41-dced-08dd895ba4da
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?MkFzcHFlQ2syTVRzSXNuNFJBaXlDTkV1aGRqRE52dWlmNUlWQ0hNOCtoYWJU?=
 =?utf-8?B?U0RZNzhxTjZyUGV4K3k1RnZaL044OUtnakFDRWNZUUpzUWtic0Z1UkFjci91?=
 =?utf-8?B?YWJtK0E5Z2J0L0h4Z3l5dUVUZ0krNkFiU2xhSStEREdJSzl3dFhzZ0FHai9U?=
 =?utf-8?B?NGxOenJqTWVNWlFkRHlKYnBvc0NHZGtMczlOVDVjZEUvWDJwUVpqU21VK1dv?=
 =?utf-8?B?M2ZmTHl5OEF0WlYvajNCRU94RGkvRkdka2YramtLZkxEUVhtS2JPa1c1d2Nz?=
 =?utf-8?B?NUx0czhmUDNENzNudi9qMHRxS0V6VmZGMkhmdlpkTGJMdEM4TXJhMy9vRldk?=
 =?utf-8?B?UUtlT2F2enhHa3RtK2N1MndVWTVld05pMWMxcEtJcnlsZmhHMWl6c1pyVUNo?=
 =?utf-8?B?ZUVZbUorc2NLeWR1QjF0Ukk4SDg3UWg4M2VrMGxPL0ducGZRcVhFaVRLS0hW?=
 =?utf-8?B?ZWgyU09WYlpxdm9HdE1UbFhRTi93YU9CSTJENUt3c2NJZThVTnUyTVBtd0VU?=
 =?utf-8?B?bW9adkVlVStpN0F3amRPVk5nS05OQUVrNDhQU29ET25QZjRGMG5qN3pId3pV?=
 =?utf-8?B?Mi9NNTAxclpSeURucXhWZ0hza2l5engxVmdQV1dBUytYb3pKejdnWkVnVUR0?=
 =?utf-8?B?d0kwSlRscURPOTRnZWdYN21jSklDeE13bWFsVnpRSTBUdmFDTXRJay9yRlVE?=
 =?utf-8?B?dkt2Y1l6OU9heTJTd2VMa0RzcEpmOFZoU2xCSG4rM2ovRXlrNVdWSzNzZXI2?=
 =?utf-8?B?dnhUeURHVngxOUJRSlJkNXRndnRvMTNvRUxEYXRHVG1tek9XOE9URUdLRzhW?=
 =?utf-8?B?VlN3R1lKRXM3UEM4U3hvNHVicHlrS0wwMUVhdktEM1o4WUUyNzUxVG9HeHN1?=
 =?utf-8?B?Wm9QMGg4UGRUQ2Jzd3RLYVpiVFpOZ1I3dGxJK1VnYmNHQnA4bVFXOUVVQ25L?=
 =?utf-8?B?QStzV2J2b2F3NFUwdEQ1YkdSZUhUVHlGdUdCZTFXa29JNThpbWZuYVVoMFBW?=
 =?utf-8?B?K1VCWUExS1VYZjBHaDRVYkxyRk9tSUE2eUpZOW8rUmo2RnRhSEQwbmdmcmtr?=
 =?utf-8?B?ZHJ6Wi9TdDdJZmdodkRIbHBEOTNQMU1SNGNCZStTT0k5QzdPRURJYVlQVzVS?=
 =?utf-8?B?UW0yL3V6Z1VDSFlJUm5WSFNyNG1uRitjTU4wanlJR05aekFXOFU2K0hyT1FG?=
 =?utf-8?B?UnJnY1k3OFhHclozL3htN2l1V0pFdXpKOWRGMlJhZlF6VU1zVkc4aFZxUEJS?=
 =?utf-8?B?b29uT0RmNzYxWGtQNVo2SWcwQTNJb2ZGODN1NVUrZUdKYytNbXhYS3NlWVVX?=
 =?utf-8?B?cmdaRHJoMDJ1VlRnT21BZGdVTDJVMkFGRWlxcWhvTWw4dDlxTVBHVjBmVXdm?=
 =?utf-8?B?b1lrSWhyRjBHZXUrSHFIRDhiOVh2bUJKcHBlbmdJQ0liV3Nidm8wWXJVbVNs?=
 =?utf-8?B?L25GTGZXWVJ3NENVUGVVUTNSTmdrSG8yb1kwNU1pSHpuMFp0ZGNyK25ydE5V?=
 =?utf-8?B?QllpRnZjUFl0aS81cHlzMHptTE1kVEttcmJIWnVxcE1WL0R5dkJLRG5Dc3JM?=
 =?utf-8?B?UndjSmR3QlhTN2h2TmNrWkwwdjJZZ21HQ3FEMjE2bEhYYWM3UHoyblpQOUx0?=
 =?utf-8?B?RjVPMG0vUEV2cTYvMHFmeGNJb0VicTN3R2xRMGpQTk01WFRwcnUwRVlZWmJD?=
 =?utf-8?B?TzU2RUd5TFgxNTQvSkZHTFBHMGhNYzN3NHgvMllHU2JXaHVlS3Z3SUJnZC9j?=
 =?utf-8?B?aTZ3Q3B6OFhWaVlmSDh5VTdzSjBYUW9adkNXemhRWjNwREpuTDdBM1BHc01Q?=
 =?utf-8?B?NjNvK3NJNGdSYnJFVmxZaWM5dGlVcGhPM2ZlWlkvd25XaHZ5bUdaWjN0TGs2?=
 =?utf-8?B?RmZCM3JiVVMzR2VNMEVjRTJ3OUVXSHhUQmxreTFIS1htcUs3djJtdEpHcUNk?=
 =?utf-8?B?NHVnZFd6OWRhU1g3K2pqQi9nZWI4TlJaTm8vcGNlVjBtVTJ3a3VsRTlxSlNR?=
 =?utf-8?B?TVQrRXBFVjZRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a29KZWkrWHdJa0JkNld6b1h2KzZGV1dlcGZuZW12QWtjZ1NPL0V1cDZlMWpU?=
 =?utf-8?B?UlR5OVlCNUY2YXlRclRsTmtNT3YyTTNYUng2RnlZcEdGRk1TbG9ScW5QUXlW?=
 =?utf-8?B?akNncmtDMG5NcGZPSjh0WTNkam53MjdvcmRacDhzYjRyaHo5Slo1Q3NPK29V?=
 =?utf-8?B?RHVmdWkvSjBjN2IwTTlUNGxiUmZpYVEybzRlLzN3VkRaUG5OVUx2bUtpWjBC?=
 =?utf-8?B?V0UwVFExS2gxSkxQelA5N3dhdk5tOUN2Y1JUVS9LdDdQQVpLMU00V01qelJ0?=
 =?utf-8?B?dGdBNlhaeU96ZE1SUE9oNHBaRWZ4cHpDTC9LUDVJRkVJamFHd3lFNThUbXpF?=
 =?utf-8?B?dER0NTN6RTdEbDFaOEs5Mll3TURWVUZSRGpYLzA3YzhlOTh0OCtGZHZjVEo0?=
 =?utf-8?B?cDBlY1h0WFJrbllKbGFkVHp1TndCTld5Q1J3VTdsYmVvR0U1TzZZTjI5Z0Q3?=
 =?utf-8?B?SFh2ZmhRajc3d05jSTVVVXVUcjFJTUthKzZ5dmU1Y0hBNG0yalNjOTNkc3hL?=
 =?utf-8?B?WVhDWjRwS29sYlpXbFJTZ0RXelVTbGdWU05tMklWWDZDZis4WjRyRFpUYm1r?=
 =?utf-8?B?aWdyc2JqbFJhMnY4bUlzMmhpTnJQa29naGNia3J1cTVHSHpyK3E4VmVsMjVt?=
 =?utf-8?B?Nmh4ZkhmV2VSYXdheXIyVEpFOTVlQzluZ0ErMUFmRElpZ1l3TmhvWTFqRFVE?=
 =?utf-8?B?SUQvRXdSb0psL1dqN3pXSTE0bllhYnlqbzZVSU9VeHZZaGlnUExacU9iUkFy?=
 =?utf-8?B?WFc5ZlBwNW4vTDlrb09VVyt1TnNBc1RCTGpZV3BIZ2N3WWdJTHdubkFBbHR2?=
 =?utf-8?B?elB6R21ZVTNQOW5zSlRKZzM2RnBBcnlMY0tKV2pmNmRFOGxrdWRJbkQvUTlt?=
 =?utf-8?B?WnhCOHEwdU1NM2pPT3FhdFJOYm96ajgra05wTCszSFFWV0RoNCszTHpzbzhL?=
 =?utf-8?B?cGtsOWVSd29keTMyZFZENHFWUUtqY1dDNHQxVVJ4amF4SWFJc3I2UVh0ejFG?=
 =?utf-8?B?bHFpZzNMcW9EVEdERmdwMUZ4OTZBUEczUjF6eCtKSG1iSk1nSkV3cGlFVEtZ?=
 =?utf-8?B?WmI0bUExL0UyNVFUMHZYVkd6TTg4elBKUFYvM1FHR09hNmRYM3B0cjNpRkpI?=
 =?utf-8?B?STc0ekpKbWhwUHBVWUJ6ZG53ekdTT1NzN2VnVEtzY3FWQjlkaUkxTUg1VmVS?=
 =?utf-8?B?NGxJSjNEeDFMdmFYVTdSN0RESDlPRjFvcnppVEpUZGdEV1pKTkpOdXhob2Yv?=
 =?utf-8?B?aXRpZTgxelZMcTFpbWpWVGI1akRKWjZ2Q0hxalJ6UVFPOHpMdWFVeDdIWkpO?=
 =?utf-8?B?S2l2YUtnT0tGeVg3S0xVTlNrUWx5dVl5VDZ0V2c4bDFuMzBVNnU2bzQyY0Zj?=
 =?utf-8?B?eFh6WkVjL1BPTkhnOCtSQ1A4enN4UThVYVliZW5scDFvcjk2UThlemY0T25t?=
 =?utf-8?B?UFhIVFV0OFBoQyt0TkZHS0xWemFkclU5eEozaDFhS2JyR21ia293QStFaWlK?=
 =?utf-8?B?ME9RTDI0N3FlMGVUTGFxQThNdkUraVBMc2dMbWY2TkhxNWlHWXh3SklQSHRp?=
 =?utf-8?B?U0VvbGt5ODRCRUJnR2dTUldpM1VwcXNHYkg2WlQzbmI0dzVQR0h2Z2VvRjBu?=
 =?utf-8?B?cEJxQ0EzbkdkbWM4NnQ0RitKaS9LdzZyRGErR09SclFRUzdzMjdxNzljQUQ4?=
 =?utf-8?B?YTFJQWdEKzhZdytTSTREeHQwdHUzMXZmSGpEUVZ1MU1aZG1JWHlMTjBvL0JS?=
 =?utf-8?B?K29zak1hWmRkZmlxbjByajd2NXIvYWZpNUppRm9ESTJPSmk0ZFdsRGQzREZC?=
 =?utf-8?B?L09Cc3JTSS9aNFBwaUZENy9LQWNJYThab0wrUHBKVUwxbmxkcEM1RklCMU1l?=
 =?utf-8?B?SnA0UUc2QmRYZjJNOGE3L3o4cHVHb0gvT04vU3hiOENSS2hEUFlDUGdwQmh5?=
 =?utf-8?B?djRuY3BxVTV1emVaNHBFZXZBMHFqb1R3N29kK2tYaTVzVHhidmJQQnB3dnlV?=
 =?utf-8?B?MWRrTmFmSWFpbjBHM1lWLzdtZWNBb3ZHWlRPS2xEdE9hRE5BVFFTYWo2RDZR?=
 =?utf-8?B?TDgwd2c4SHp0eXQ2eEtCMC9vRHg4cUJ0UUVzRWpDN2NxalBPeTY1N2U3UURY?=
 =?utf-8?B?d1hEbStzdFhpcllUTlhORE1nazJRTWg3WFR6QlNxQ2hvcWh4b2p2YkNPblpI?=
 =?utf-8?B?Z0JuZWMyMlE1MysrSmh6Kzl5bnhnTGt2U2dzd0tlbGlZbHJlcXJpSmtwemxV?=
 =?utf-8?B?OXd4ekFlTW03ZE9OaG5ZblFzZjdnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <44F6AC31776C974688EE7228255AB617@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28948277-9ab9-4b41-dced-08dd895ba4da
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 09:28:05.7205 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Y6tAby60D61HCdV4TdsTsDuax3BKIDxbDv5LwAAvE0MuDjeleeOMs1RYh5iiVW01DDn8Sx6rtEQqUQdZKkXVE5o5yWRROE90Zcl0bt7mrAs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4778
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

T24gRnJpLCAyMDI1LTA1LTAyIGF0IDEyOjE5ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gRnJpLCAwMiBNYXkgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEFkZCBQQU5FTCBSRVBMQVkgQ0FQQUJJTElUWSByZWdpc3RlciAo
MHhiMSkgYml0cy4NCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGluY2x1ZGUvZHJtL2Rpc3Bs
YXkvZHJtX2RwLmggfCAxMCArKysrKysrKy0tDQo+IA0KPiBOZWVkcyBDYzogZHJpLWRldmVsIHRv
by4NCg0KSnVzdCBzZW50IHRoaXMgc2VwYXJhdGVseSBhZnRlciB5b3VyIHJlbWluZGVyLg0KDQpC
UiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgOCBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4gYi9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5o
DQo+ID4gaW5kZXggMzAwMWMwYjZlN2JiMy4uNDdlN2Q1NWUyODAzZiAxMDA2NDQNCj4gPiAtLS0g
YS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ID4gKysrIGIvaW5jbHVkZS9kcm0vZGlz
cGxheS9kcm1fZHAuaA0KPiA+IEBAIC01NTIsOCArNTUyLDE0IEBADQo+ID4gwqAjIGRlZmluZSBE
UF9QQU5FTF9SRVBMQVlfU1VfU1VQUE9SVAkJCSgxIDw8IDEpDQo+ID4gwqAjIGRlZmluZSBEUF9Q
QU5FTF9SRVBMQVlfRUFSTFlfVFJBTlNQT1JUX1NVUFBPUlQJKDEgPDwgMikNCj4gPiAvKiBlRFAg
MS41ICovDQo+ID4gwqANCj4gPiAtI2RlZmluZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfQ0FQQUJJ
TElUWQkJMHhiMQ0KPiA+IC0jIGRlZmluZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfU1VfR1JBTlVM
QVJJVFlfUkVRVUlSRUQJKDEgPDwgNSkNCj4gPiArI2RlZmluZQ0KPiA+IERQX1BBTkVMX1BBTkVM
X1JFUExBWV9DQVBBQklMSVRZCQkJCQkweGIxDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxf
UkVQTEFZX0RTQ19ERUNPREVfQ0FQQUJJTElUWV9JTl9QUl9TSElGVAkJCTEgLyogRFAgMi4xICov
DQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX0RTQ19ERUNPREVfQ0FQQUJJTElU
WV9JTl9QUl9NQVNLCQkJKDMgPDwgMSkNCj4gPiArIyBkZWZpbmUNCj4gPiBEUF9QQU5FTF9SRVBM
QVlfQVNZTkNfVklERU9fVElNSU5HX05PVF9TVVBQT1JURURfSU5fUFIJCQkoMQ0KPiA+IDw8IDMp
DQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX0RTQ19DUkNfT0ZfTVVMVElQTEVf
U1VTX1NVUFBPUlRFRAkJCSgxIDw8IDQpDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFORUxfUEFO
RUxfUkVQTEFZX1NVX0dSQU5VTEFSSVRZX1JFUVVJUkVECQkJCSgxIDw8IDUpDQo+ID4gKyMgZGVm
aW5lDQo+ID4gRFBfUEFORUxfUkVQTEFZX1NVX1lfR1JBTlVMQVJJVFlfRVhURU5ERURfQ0FQQUJJ
TElUWV9TVVBQT1JURUQJDQo+ID4gCSgxIDw8IDYpDQo+ID4gKyMgZGVmaW5lDQo+ID4gRFBfUEFO
RUxfUkVQTEFZX0xJTktfT0ZGX1NVUFBPUlRFRF9JTl9QUl9BRlRFUl9BREFQVElWRV9TWU5DX1NE
UA0KPiA+IAkoMSA8PCA3KQ0KPiA+IMKgDQo+ID4gwqAjZGVmaW5lIERQX1BBTkVMX1BBTkVMX1JF
UExBWV9YX0dSQU5VTEFSSVRZCQkweGIyDQo+ID4gwqAjZGVmaW5lIERQX1BBTkVMX1BBTkVMX1JF
UExBWV9ZX0dSQU5VTEFSSVRZCQkweGI0DQo+IA0KDQo=
