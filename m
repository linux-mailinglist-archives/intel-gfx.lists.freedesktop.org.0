Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C688FE3AC
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 11:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A382210E8B6;
	Thu,  6 Jun 2024 09:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cGF1gc81";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FD6510E8B7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 09:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717667981; x=1749203981;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xgTJsTVgZXRadpZeq0yZ1YUBnmHgGMHmmO55Iul3zvs=;
 b=cGF1gc81qRzQfPsLM+8jT/w0MSZ53vszrbGqB6yfxZGsHik4JOn+Eo4b
 gyyeKWNw8x/27wOlGN32p5Og/24bqTJG0W7ERcZtkAIoGhFomsf1++e2c
 xV+dof7zTeAnfd8Gft6ILGF9Lb9odCfxYzgznBsuJvWP3SWtA2Bf/ov2q
 oMCBuYIMVisHE4hrH5UJUcwrKIuKF70gY+FH0Osh2I1mmqPvOfXH7v8EX
 IqjeoakWqGc9yvBhVBZww/4Oi4CwXpgPNqbuIbayIB5GPmr2uITHG6yn9
 3O+vWjUqjYqagES435xey7rU3zWoeBLNDMTxG4sZlqRSKKHGRunzas55s g==;
X-CSE-ConnectionGUID: 8nF2svidS+qtVH+ufAzN2w==
X-CSE-MsgGUID: o4q+hD/5Qi20oonKn4P9Kw==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="24956679"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="24956679"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 02:59:40 -0700
X-CSE-ConnectionGUID: OxD83rlER7qWMDRibHV1Mw==
X-CSE-MsgGUID: FJxgdZORR/GHMsH1JP/hVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="42847033"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 02:59:40 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 02:59:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 02:59:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 02:59:39 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 02:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K3ivikD4161WQ1eeMbBJ1p36M45aiMzG63ioyOU++FNR+nHeJoUTMSxpjrIPQE4mD8meyGy7Ve8sE30F5QLB7S8buYA25NB4EK+u3EVVmM5x2rN9iDtilFySx2sVgKxeK9LH7YTsL/ZZ7UnM6P7UpVKRGq+SU4VxPDi2d4tSTD01DRJc8hGBJ/couXYVLgZXwRltNwL5BSVABEwwPmZruOCZMQiyylWz1RxJCjgmaI856qh9wZZeuP1kmGlu1gm6OX0Pl2bhYV69pPtzX2UpSsGQwWRyXpkDRp+m/8099jKW9DZ0h3EspO+SYvoPW7jKYC7FpZ0Se2TQn5v1/7tUOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xgTJsTVgZXRadpZeq0yZ1YUBnmHgGMHmmO55Iul3zvs=;
 b=dBwAgZYs9f3m8lfcmwiEMziIPAKj02S19UfE2sYecEf7AXWJHOJ07+OsIhdr0WQuz9wUpK/Jgwuz1PNg9ZRyzqD0MnexM/XkZWFVIwB+dvriF+z2+cEHZtm3GfgrNOVBU4TwijrrWGUltEI3Ah1RTGwYcTSd2JHlWqQT8Jju0YLcilKhL7weVt9m4qNZSV27wu2OaCd4IWdKURNbQVKBsJ8AV7iBbwVMrWOZrUk5NG3ugMhmg7O0FhlvhrAzV22/lyWNO84oId2QhTGagBbBTkiS9f+KCFSXOqPwFROXlxDQfVmgaJkgXblMnBCkxjYtXjG0FLbdEVWDyuZAtZDB8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB5959.namprd11.prod.outlook.com (2603:10b6:510:1e2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 09:59:37 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 09:59:37 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 03/26] drm/i915/display: Take panel replay into account
 in vsc sdp unpacking
Thread-Topic: [PATCH v6 03/26] drm/i915/display: Take panel replay into
 account in vsc sdp unpacking
Thread-Index: AQHatzLUCgMbHPwEsE+S+K3elKFLk7G6gerw
Date: Thu, 6 Jun 2024 09:59:37 +0000
Message-ID: <PH7PR11MB5981C48E9454FED281B1BFDCF9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-4-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-4-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB5959:EE_
x-ms-office365-filtering-correlation-id: d9920658-02e6-4b6b-d366-08dc860f600d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?d1RUck1DaUUxT1lmMmZQWUFiUGhyZmFsSkkrRnRoUmQ0Z2oxL2o3bElmUWMy?=
 =?utf-8?B?V2RXU3FUeERPSWc2SlljbndrcnoyTmlLYytkdFBVbTc0R2VnL2FFdHAzbm1v?=
 =?utf-8?B?aEdYYjV1ZXl3ZE1hZmtja3d5K3VKRGJQcnI2N3BsSEgwRW5Dbkc3eG9hbFlI?=
 =?utf-8?B?eEZUOWEwdS9nWlZoNGtDRGJBR040VHRqOG1OZTJvT0RNL002SEc5YVpiSXFD?=
 =?utf-8?B?b2V0N2Uydjk2MUlFUlRFOFlnWVlCKzRDQlY4NDc2MmxDYnY2Y3ZYMnlUZkNa?=
 =?utf-8?B?VVdLU0ptajFrS0xNRWNIdisrSWVEYlhFcUlGUzdQSmdoRFJZOGJiRlQ4Zk5m?=
 =?utf-8?B?T0t2cUNDWmFmTzVrY0ZzbEFWTWE4cHFweGtMQ3d4SFpSRDJLNlFJUzZtbDJM?=
 =?utf-8?B?cW9NdXk4aVVqaGdtQ043UXVaaFR3T0N3U0o1Nkdnd2pKajU3aVVxLzRCeFZV?=
 =?utf-8?B?OXhhbzZuSTRabUJiUjRTdnRwN051S3FUdFRkSmg4QkNpbXFVUnI3YUxBYmJ1?=
 =?utf-8?B?K2YvUXlsRVg5dko0elVjN09RbVphVlZCaXU4Q0dGOGxCK1c1OEVGSk9YQWQw?=
 =?utf-8?B?N3lpS1R3WGVId0JMSzlVM3BQUlFsSkxTLzZRSUpKZlg4eTdvZWRMZUdITUZz?=
 =?utf-8?B?OENqZ1dhYkdxd0hVM2JZZU8zVFo0RjlvL2hDQ0w0RjVweE9hY0djRUxYL245?=
 =?utf-8?B?clBBTmZHM1pnOGh2NEJwOWtrREtUaGJQZnVKVE5wSlU2Ny9ET2hSLzBQNG5q?=
 =?utf-8?B?ZHhvUDNEZkZ5MDdGU3d2b3VTTG9RNnZhK2F4TGtsUXNxVjBnRGliUkI0Y2tF?=
 =?utf-8?B?V2VDU2pxdnhtY2k5YW9lOG1ybzQ3RlNxN3M1QUZMWDE1MVNhS1FJTDJxN2Q1?=
 =?utf-8?B?ZDAvMjMyaDFmbUxUQlRwbWhBUElYaXZkYU50UmVYNENOdVBVRXpwVGprNzhH?=
 =?utf-8?B?MExlUlRPRkY1aXB3dSs1WUF4OGVxZ0ZMaXFtTHBHYUo3M3hhdmo1aHRlWHhq?=
 =?utf-8?B?MTVPMlFYOUkzSThkV3g3dXA1d0ZvNXBycEJYdG91OTRmeTJBdjdKeTA0ZFJn?=
 =?utf-8?B?KzdqOVpFTEgzTmk5elZUNFIvWWU0b1BZV2REeE5OSlI0VHFrZk92cUN5WHBl?=
 =?utf-8?B?bGpkb3dFbWFSVGNzdzNlclQvZkVRQnJmbmFLRTAxaytrOEI3YS9WSFZPempZ?=
 =?utf-8?B?QjhPSXIxYUtZK25TYmhoNnpKZi9QSzU4NnFpOG1ua2JYU05DQ1h0VldJRTNW?=
 =?utf-8?B?QUIvdk81anRmdGdDeHNCcmdoLytpY2RCUThnTzB1NXozL3B0SEczT1AzOE0y?=
 =?utf-8?B?bmxETkhqTkVlck9oWUdZUVR2SlhBQ1lXUFpYQVd4djFrUDFvSUtmNno4bmlX?=
 =?utf-8?B?MWljUkk4QTF4RUZqeEtmZ2I4ek9WS1ZlZXp0LzB4WVl1TmFJUEFtaEczMmFs?=
 =?utf-8?B?S3B5dzZtS0RmZGVYaUpoSjI0dlFWamJ3L21JMmtxRmpTT3YyK0YyQXRTaUJ4?=
 =?utf-8?B?OEozVktyY0pVZHNRd3NkUndLT25QSFhDcEZ3MHR1V1lSbm9FSFd4elFoVEhX?=
 =?utf-8?B?K2V0RXpXU2lLMmI1VWVOWjZlYlhyc3p2d2hSMkN3SENsaEFBOEZHY2Y2ZDhu?=
 =?utf-8?B?K3NkbDVFeEprWWUybk9xOEVHMTdLMERBRElxSjhLYnFVUW44VERVVHRBSmkz?=
 =?utf-8?B?Ulg0OXN4bXRnSlJwSTZLL3NyY01OTGZNM2hxMzlkZkVVc2lpZzJZanpOL1VC?=
 =?utf-8?B?ejVRTFZpTzNpbmc2b0RnSjFZTUJDaDQxcWgwd3dBTGxQUCtQd0hNRFBWbGE4?=
 =?utf-8?Q?VLp4z9pRaQ/yYZY7HGvF0rahSwkMA0IOBwdF4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFNGTGtNRGZwcW9QeTdYTWlBUlMvQzB4bnVseXNtME5oUUt0TDFxNjFOeGJB?=
 =?utf-8?B?Y1UxZE1GQ0NhWVYzYndxZzVvSVFPc2tzM0x1TXVXdkhuaURWMFJLSk9RWmxE?=
 =?utf-8?B?WlhlbXdRcnRWeWN2MERJc0VJQ1ZYRmJXZUVNcS9RRXhjQlhmUGhldUpDMEp0?=
 =?utf-8?B?UUVpcUluUThBNS9wMyszTFJwRFhzUEtzT1p3LzBPR0FwbzJ5U0swTEJRR0VC?=
 =?utf-8?B?bUpRN0ZGb3hTMjVTM21TeGl0Q04yUDdkMGIrRkhSMUNEM3ROUlN4Q1BzUE1V?=
 =?utf-8?B?clMvVEFxYXRGcTgyaXN0L3FLdTVZaHRzMzV6dmYxaWhJR3F1RHFhNGc3dE5D?=
 =?utf-8?B?L2xUUks3bXpVamg2NGlZWi9NazlRM01RODNqWTR5bDU5Zys3ekZVbnVjQTRM?=
 =?utf-8?B?NmpqeGFEUFNyRnIyekw4eTV5OEpnRUtMcnZOUXpwZVBmYnljdDV4Z29FNlNG?=
 =?utf-8?B?Z0hIVkpPSVd4emR0OEFnVC9kNzRFZUEyTVJFNHk0YUxHV1U0UDFsTitzMXZY?=
 =?utf-8?B?R3BuUyt4OHhDdXVEbGtZTXFQM2Jjakc1ZG1HOXJxTHlKS1FuUFNMcC9pbXRj?=
 =?utf-8?B?RCtseDc5aGtFZXJwQ2RCZjU5NzZraG55QWpUY0FTY3JvNS9HMHVwelEvSnh0?=
 =?utf-8?B?QVJIbno0b3ZPSEVVWlBTQ0FDclQ1RjBmSFNpdVYzNTZXR2NxbXkzZUgrUzRy?=
 =?utf-8?B?WUxLVUlNbTBmTXlDdnFoYnU4YmpjaU0rTkNDS1F3aVR3Vm1TLy82WVdaRFgv?=
 =?utf-8?B?a1RzNE1MTS9DYVZuTytNZm5VaFIrK3RjdGcvcVJtUGcveXp5WGZDdUxHdSs1?=
 =?utf-8?B?azZ3M09ZWWZtYU4vNjhyUE00clcvZkZ2cm9keXhic0NkemM2WFZSMWR4OUJa?=
 =?utf-8?B?VDFkRDFZbGRYdGFQaHlhNHR1VERrVUMwWHlxcnVBR3M0aGNKOUtKRTJreXg2?=
 =?utf-8?B?MDV3Y1lsSWFMQzhBQ1BJdnR1bkpqV1ZOWDhreUc1czROWForNHhPdVp2OUs1?=
 =?utf-8?B?dEp2VnhHR0tsOE4ySkhObzVWcDFZQ0NUR1hnbVpXaUt2Vkd5NUNDVGpNbnhY?=
 =?utf-8?B?bE9VMEhwK2RKa2J5eWhBSm1uV1lwYjRDUjY0V3c2RERUQmVXQmkrbTZvSVNl?=
 =?utf-8?B?VG5FQ2FHUTgxdlRzZTc0R01oTVRiUWFJeEpnazg4dHhERXByTWowYzc1RUZy?=
 =?utf-8?B?Z1BPZlVHVGYzdGJKVDdZRnA5MWJhWkt6OTlSV1lBY1oxZG9uNFBnQWs2MUNU?=
 =?utf-8?B?K0NnK29NbHYwMk5rT1JNOVVvcmpyd213dmZQbTFDcys3Zm03M0VOYmUrdWJz?=
 =?utf-8?B?NU45b1M2dVBKTUx2VGJzOXpUQU9MR2dsVzdiNzZkK0Irc3lqTU4rTTkxSDMw?=
 =?utf-8?B?K092M3IvbDE2ajUwUEhlVXhZVzFUTlpyWFcvVHgvQU9HMlcxVmo0TytFYm5Z?=
 =?utf-8?B?YzFGbnJQVUJLdkdLOUU5TUVjRTZuRStmcU9UQXBJWTJETkMxRFlvM3VSV2xa?=
 =?utf-8?B?OFJYUVFzL093elJOc2QrcUZFV0NPUkJuTlZPMWZHbHlCajNUWGc4anVFQU5m?=
 =?utf-8?B?OTBoNCtleUErdmFqRE5mUGtPYXFJMXZ3SW1MN3ZwMVFtb09uS2tUR2c0bTlM?=
 =?utf-8?B?WUYrMDhkYVZSdElUSWQ3U3ZuQURmTldWNzB4SXJoUFpZUWx0cDR2R1B2UGdV?=
 =?utf-8?B?S3QxUjNROGwrMkpWWFg4SUtkdUdSNVd4b1NFaERRQmpQUU5ZUFhEcnhqNFU4?=
 =?utf-8?B?WTZmY0NBVjRwQmxSTFpFc3Q2YUxmZTRVQnFzUkZLc0dKVUVKM2RXVVBZd0Ey?=
 =?utf-8?B?cWRtbDRPNXppZ0tIZUpxVnV6UEtxZEkraVQrelZNTW10WmM1RTRsYTkvQkZm?=
 =?utf-8?B?K01KZE8wb2dKdUpsaGpQVnRGb3ZibkQxZ2gyZXZjWTVCS3FEcVhQblViTFlz?=
 =?utf-8?B?cGJtV2laTGFJdWFmRHFFUmU3cUZzdGdXOW1hRjdaMDU4elVmWlJLQklrclFz?=
 =?utf-8?B?YlBOVTBCM0dSbzRRUisra2ljTzlQMmRoVXdqcnVIZEVrN3AvRytqd3MwbkJF?=
 =?utf-8?B?a01McWRTY0Nwb3RhNmhSWkVZeHh1UkFySEltdk1HUmhzN0VUbW5kZ0dvM0tt?=
 =?utf-8?Q?eDonYDJVG7N3X/UfOLR62WAcU?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9920658-02e6-4b6b-d366-08dc860f600d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 09:59:37.3710 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zbv7JtOzWJyc7zSp1smxHwvqMubIRFxo4Ck601BnqdCuSshP6mXJMHYhTEdgld3nZDgXI3h82wnH6TALG8oY2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5959
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwMy8yNl0gZHJtL2k5MTUvZGlzcGxh
eTogVGFrZSBwYW5lbCByZXBsYXkgaW50byBhY2NvdW50DQo+IGluIHZzYyBzZHAgdW5wYWNraW5n
DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfZHBfdnNjX3NkcF91bnBhY2sgaXMgbm90IHRha2luZyBp
bnRvIGFjY291bnQgUGFuZWwgUmVwbGF5DQo+IHZzYyBzZHAuIEZpeCB0aGlzIGJ5IGFkZGluZyB2
c2Mgc2RwIHJldmlzaW9uIDB4NiBhbmQgbGVuZ3RoIDB4MTAgaW50bw0KPiBpbnRlbF9kcF92c2Nf
c2RwX3VucGFjaw0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5o
b2dhbmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNo
Lm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYyB8IDUgKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMo
KyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gaW5kZXggZmQwNTRlMTY4NTBkLi4yODYxMTllYjc3ZjggMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTQ0MzgsNyArNDQzOCw4
IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfdnNjX3NkcF91bnBhY2soc3RydWN0DQo+IGRybV9kcF92
c2Nfc2RwICp2c2MsDQo+ICAJdnNjLT5sZW5ndGggPSBzZHAtPnNkcF9oZWFkZXIuSEIzOw0KPiAN
Cj4gIAlpZiAoKHNkcC0+c2RwX2hlYWRlci5IQjIgPT0gMHgyICYmIHNkcC0+c2RwX2hlYWRlci5I
QjMgPT0gMHg4KQ0KPiB8fA0KPiAtCSAgICAoc2RwLT5zZHBfaGVhZGVyLkhCMiA9PSAweDQgJiYg
c2RwLT5zZHBfaGVhZGVyLkhCMyA9PSAweGUpKSB7DQo+ICsJICAgIChzZHAtPnNkcF9oZWFkZXIu
SEIyID09IDB4NCAmJiBzZHAtPnNkcF9oZWFkZXIuSEIzID09IDB4ZSkgfHwNCj4gKwkgICAgKHNk
cC0+c2RwX2hlYWRlci5IQjIgPT0gMHg2ICYmIHNkcC0+c2RwX2hlYWRlci5IQjMgPT0gMHgxMCkp
DQo+IHsNCj4gIAkJLyoNCj4gIAkJICogLSBIQjIgPSAweDIsIEhCMyA9IDB4OA0KPiAgCQkgKiAg
IFZTQyBTRFAgc3VwcG9ydGluZyAzRCBzdGVyZW8gKyBQU1INCj4gQEAgLTQ0NDYsNiArNDQ0Nyw4
IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfdnNjX3NkcF91bnBhY2soc3RydWN0DQo+IGRybV9kcF92
c2Nfc2RwICp2c2MsDQo+ICAJCSAqICAgVlNDIFNEUCBzdXBwb3J0aW5nIDNEIHN0ZXJlbyArIFBT
UjIgd2l0aCBZLWNvb3JkaW5hdGUgb2YNCj4gIAkJICogICBmaXJzdCBzY2FuIGxpbmUgb2YgdGhl
IFNVIHJlZ2lvbiAoYXBwbGllcyB0byBlRFAgdjEuNGINCj4gIAkJICogICBhbmQgaGlnaGVyKS4N
Cj4gKwkJICogLSBIQjIgPSAweDYsIEhCMyA9IDB4MTANCj4gKwkJICogICBWU0MgU0RQIHN1cHBv
cnRpbmcgM0Qgc3RlcmVvICsgUGFuZWwgUmVwbGF5Lg0KPiAgCQkgKi8NCj4gIAkJcmV0dXJuIDA7
DQo+ICAJfSBlbHNlIGlmIChzZHAtPnNkcF9oZWFkZXIuSEIyID09IDB4NSAmJiBzZHAtPnNkcF9o
ZWFkZXIuSEIzID09DQo+IDB4MTMpIHsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
