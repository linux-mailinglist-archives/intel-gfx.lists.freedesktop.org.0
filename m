Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 034D1B158FA
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Jul 2025 08:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60A3710E3F9;
	Wed, 30 Jul 2025 06:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bMHDZHjX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 559D510E3F4;
 Wed, 30 Jul 2025 06:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753857064; x=1785393064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=qihJijz7T9P4PLw8XYcdJNErDDA8/V2HOAcqSyPqQwg=;
 b=bMHDZHjX0EXQsKZ424/pkpTPBljjaCw9PYTm2pu0NJEb/QtPSM1x2K8/
 txYvbpR/24YBLdD4UQW4DQxXuYwJ5C8LXxJLErXuAKrAFUPhr+lMW6Neo
 +GRzWYGXrm7RF6U0c5Y816ZhknLu/RS8XjRdH7yQnoBcVBOuseeRvKRlt
 yV9sLhUx6SsCtZj74GT7LCHo5eeXmAJ2HP+n2JtdBDsXG4nrr5M4E+Q01
 8g59t8+1IYvJv/6WULrdcO25wLplsxjTeszAsPR3L7oLPAWqVJ19NWxRY
 C6Ln3w4OeEAy+kTiUROF4IXGWOkNn12J37Ybp1e7jHH+1u5KOpv6Ree+x g==;
X-CSE-ConnectionGUID: H4u0EJYUQ1uTNBIqT/agFw==
X-CSE-MsgGUID: YVcUpnOzRZSVjhRJ5rKesA==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="56235735"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="56235735"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 23:31:02 -0700
X-CSE-ConnectionGUID: GyaZupiGQLqlPL9DLd80wg==
X-CSE-MsgGUID: rA8FH0oNTJagYnUi5Wkopg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="162175376"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 23:31:01 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 23:31:00 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 23:31:00 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.40)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 23:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dy1/kRjrr0tdzzXokfJaj0VwCswKha5/whBLT60mtqQHrj8s/qjgwTg9jerLvt6o9BHra0pzI6xspsp4rRrwHM3H9TWUELaRkG5Kx0LJmzbqucvtyJiSSbDeIM4IRJbKtTWmj9fbak3RlFYF2zCbUMztYtysEBLJZzThrUpBD7Zh7Wlm6a2TDtjQoZ3MvDo7G8Wi8b+QhhSMEG5BcylmAAd0G4hdQFot5A5Xd8QSuLb74qQCcV/UgR5YO4jO/NnqB7WgtXEoj/zWs+StLNPlFR4VkVhK8k6ZM6pbyopl9bwuEd0+a8Sy0ttHT9mZM0yHZ9UBKfII2bnYIQb8zte0mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qihJijz7T9P4PLw8XYcdJNErDDA8/V2HOAcqSyPqQwg=;
 b=BrRugSNYzVvS/kak7OlO52kedmT7jo8Ae04vLNTDT6CHtfk0dQGo56I36cuO6LQ8Sal3e3NBk+8WKY2/utD1HWIRjCQevUIgjrf9yD6bdTl8EOmgtYl7saTY2Cw1OSPZClJTxgNr6B/JIH6K72bTevUBOZxP1E4fZ6MGCouS58Vp7KXhtjnMN6iFQ+HKlPBWjugqPdLdyrBcGBY7qZPceEQGKtC66mADzCHMGjdgot0llaAg78ezfUgqDzYSURj1mfY1ZHsPlCUuSjnv7gsUITQBeABeGbBukJNegimdpKWGYyNUGYmvPISPoGmxG0fZ/sBcleM5INxdCEzkb2ITGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Wed, 30 Jul
 2025 06:30:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.8964.026; Wed, 30 Jul 2025
 06:30:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Saarinen, Jani" <jani.saarinen@intel.com>, "Joshi, Kunal1"
 <kunal1.joshi@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/fbc: fix the implementation of wa_18038517565
Thread-Topic: [PATCH] drm/i915/fbc: fix the implementation of wa_18038517565
Thread-Index: AQHcAIbwwVc/wsWp7kmZ3LiU2FYQk7RKNcUA
Date: Wed, 30 Jul 2025 06:30:17 +0000
Message-ID: <6f60d1d9046e1205948b6fe8cac21e30f0afca8e.camel@intel.com>
References: <20250729124648.288497-1-vinod.govindapillai@intel.com>
In-Reply-To: <20250729124648.288497-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA3PR11MB9273:EE_
x-ms-office365-filtering-correlation-id: 067f3d4a-d7cc-4edf-52bf-08ddcf328cce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NzFpcUhTNjEzOVBpeTBjQUUrdVM0QUJKMi9NTEc2SXhjWG1PSzZNcFdJZGd2?=
 =?utf-8?B?QlV5NnNMRUFyVnpiMkJIb1dNMjdvZnl1dTZ1dFBUTVpCK28wZVdtbXhDalVD?=
 =?utf-8?B?YmxMK0VUYWM1NTZIYVlyMzRpWlNMc0VFUVBSdWFDUEVzMXZXam05VUpWTEJs?=
 =?utf-8?B?RXVhRzc4WS83R0FDNTEyRU5Bb09NT0VpZEdFVjVXWjhDSGhRdnJRRlIxWU5p?=
 =?utf-8?B?ajRyZDBoSzlyQklFYnUrSmRReE1pR1lsMjJDOHlpQlZqK1k3RTJBLzVqbzNU?=
 =?utf-8?B?YkI2Rmt6alBDa2sxS3cyL1NZdGhJQkR1UzBnRmhpNTdVbUhkZVVhRXJ0Y0Rp?=
 =?utf-8?B?cGROZGNhVGZnT3JQeG1Vc2dKbkZ1Tk4wbFhpTEFCMEZzRTBxQTh3ZUc0L0lj?=
 =?utf-8?B?R3h6bEp0N0NXSjNlcmZkZWxKZ2g2dS8rUkZHS1RjcStCNmFDQnlReTlJdnBi?=
 =?utf-8?B?ckVIem1lQ0NQa2pHZWxYTFVoT2JUcUEvbEZtVUxMbzhxNm1lUmtuRndYY3Y1?=
 =?utf-8?B?ekhEUkl3Vlo2RFhoRHNVNVJDR3BWa2Z0QWlycFZRcEx0MW5HMzZUN3ptMUIx?=
 =?utf-8?B?Qm4yZXNHdlRyUGNmWXdMempJSEtzOERITUdRZld0QzFMeHhBUVE3Nnl0L2Y0?=
 =?utf-8?B?Uit2dXRuRUhVS0Z6d3RJSStWZmRCbjJ1Y0RyWjc3UWVBdFNJWmpGcndZLzJy?=
 =?utf-8?B?OEIrWlpQVy9va1ZvTm90TzhONHlldnZSYlV0K05kalNZbnNOOE5BTldySXlI?=
 =?utf-8?B?NzVnYzlkVTlkQjR1UXo0RzBCWVB1dFozbUJHSmNiR25KOTR2c1A2aUJNdjRY?=
 =?utf-8?B?KyswR3NvYmRzWDg0VnZaQ0ZyZmlqbytZcS9zNS9UdjBvZm54Z1NpZkR6TXEy?=
 =?utf-8?B?UEQwTm0rSTVRTUZjZWdnbTNzSSt3VzVCdjVlRG9tei96Wm05a2RJN0RSOGl5?=
 =?utf-8?B?emU4bTBZeVY3eUg2VlVnaWM2TEJZUnBKSkZRallwWDVOeHBtSVJzWjlRaTR4?=
 =?utf-8?B?ZEVRWE9QTitMbG9qcSs1NCsrRjI0YktRemZOVGNvTlBkUDRZKzhzUHJtb2kw?=
 =?utf-8?B?OXczREVORkdaS2lNT0xVaGJYOGRYMlpkdkRBMjZsSzhzT00wT05RbTcvWHpn?=
 =?utf-8?B?NjVySWFSVkhtaWl2QTgvUG96L2NDaTAyL2ZWdXV4TWpLek43SURNUmthZHJC?=
 =?utf-8?B?cWRkVzd6L0xJdXlRSWJRMFFpRE9mUGdMZlRMWWJxMGdXdGJNNHY4QkJQVHh2?=
 =?utf-8?B?YmZnZXBzOW5wRG1sTkxjcXlxL1pDcktQcm4vRUoxdHYwQ21DcjVtRU9od2VI?=
 =?utf-8?B?QlJYVGxtYVZVYVM1WWJFWUJudnBJdmtrOFJCNG14amZ5RlR5djlxS3FzZW1o?=
 =?utf-8?B?cWFnbGJlbS9saWZFM0ZrR3E1Z0JqNDZqT3E1S2dsc3BMRmdodkRySlFrTE15?=
 =?utf-8?B?dDJ5TVBFa0NraEc0WkNoTW10R0cwbkdtYUx1dkhKRnh4SzZPd294Zk1EUEFq?=
 =?utf-8?B?WVIwUFFla0VrWHlQd3Uwa0I1OTRWbWxFSlJKRGxlcndFaS84SEw2aHdrT3Jq?=
 =?utf-8?B?RytVeVU0VFZQeVFmdExaTWZCb0NoeGhQdlZNSWdyNHVibm13Vk9EcmExaWFR?=
 =?utf-8?B?TnkrdnpJbnRkQWtUV3c1WHUvYi9oU3pRMlFvRlVXMXlTVlUrN25rVndDbjNz?=
 =?utf-8?B?NE5iMUVqNUZGVU5vOVZycU52WXZsUnRGNDYyMnduUDU0U0RpZmozOTJuQUJB?=
 =?utf-8?B?UDVYSjlVWUtSRlNwVmhoeWxVdWFmZ2NFU0ZNdVJnL2w0YjZaN0hRUUVOQlly?=
 =?utf-8?B?SkVXVnRKcFovVzdHT2tNcXNEd1dZTkd6QS9VZUV1WVhvMzlaWlNEQWtLelJh?=
 =?utf-8?B?VTlHRVVYdnI0U0VvejBxRVVQQmFVR3FzZjRhTllGQzN1WlVTcUFtOW8xT01T?=
 =?utf-8?B?Ykc4TWR4VnVhaXFhVFo4cHhiMms2SksvZ3gzbzJhU3RsVDRkaW0wM0c2ejh2?=
 =?utf-8?B?dnJ0dTRUMEFBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3hVeXdCbmdpKzcrR3pwMFBYR2JuK2doT3FCS2k1OXlDcnh4SHFzTThIdGU2?=
 =?utf-8?B?N0xZQUFxZHVCS0RxQThVUTFDOWRVeTRveTZYYTlMTmgvR09ZMSthMjhGV1BH?=
 =?utf-8?B?TTBEUjhyR1duQ3NtY1pVRkp1Qy9Wc2hTNHBreGxuajlDT0xWamFkZkp4UkRO?=
 =?utf-8?B?ZXpBTENFZzZod20wOTY0WE93cmtGeU0xS3hNbXdOMGNRNmJZN1JQTzEwMWti?=
 =?utf-8?B?bHl1eTJDSU9zTWZ1RENWaUZtVlJNSFMyNWlJRXAvYndRSjJWZ2xzNm1YVkFL?=
 =?utf-8?B?cmhNMzFmekI0YkpzUy92ZXZKVEpVS0JuMmVDa2hDSkk0TXFHK0htcUkzcVd3?=
 =?utf-8?B?Z1cxYmtGNDBVMzFkSS9HZFBzKy9MRG13UG12U1drQTMvczlzS056TEhMUmts?=
 =?utf-8?B?NGF3Q0kzWmZ0eXZYZFhWRXVuMTAxbDIvVjIvdTNJcmJMT0tDVTk1Z3U3ejFG?=
 =?utf-8?B?ZkQ2RkR1QjExQ1VTWFZ3MTZTWU5DL3BUUkxjVVpxSmptMlVjQUUvTHV6Y1d5?=
 =?utf-8?B?VmoxZWFEUkVaQTYzTjdidlNXczVKbmlMZTR0VS9TMGhTSVgrenJ3UUpBeXZo?=
 =?utf-8?B?amdrNHc4V255NzhWSnR4NkdRc3hHeVpUU09UeWZ1cWV4WGxGTjR5clNxMGxC?=
 =?utf-8?B?dzZCUlkxMUtTQlg0L2FqNWVrSlBJVjNrZXdvYjdIMWRUdkhRc3IzSnllWkhz?=
 =?utf-8?B?ZU91bXlNelpYVFhjQWFYazdxSnRYQzY2SlQ3NDN6aDZRQXd6Z3h0OElXSW9x?=
 =?utf-8?B?U2EzcWVxaUM4eS82cVhxM0hvZ0pEdVNZQW9ienU3RHNkZFphNURKNDR4NGl0?=
 =?utf-8?B?eS9FSkdGZ2J4em1aQ3pEWEFBYXZUdHB0SDB6VG9DSjg0MVJpWk41RjNmaUdn?=
 =?utf-8?B?SVEwR2VDT3paQ0xBaTBxSGtGemtqdjEra1RiMi9HdWcrTCt6cHlCR2NhNnR4?=
 =?utf-8?B?YzdUdUp2a3JzOUtDbTl6ZjAwZmo4eTZGaEFaL3NsQjhYNXJRL3RUTmNlekFK?=
 =?utf-8?B?a25CR0I2bjVKcElnRFRvV1NGaksvWnJRSjdwU1gwczQ3cUhwR0c3QWNuN1hM?=
 =?utf-8?B?QU1OV2NGbWZJK0xPQ2xjK3R0VTRYbW1iNXpoKzRwLytkZXgzSWs1RFo1Zi9X?=
 =?utf-8?B?Z2FVcE1rUjh4VEJGY3R4ZUZaQ0pSUnkxOVJtYTM1bm1RM24yZStkdGZweFpt?=
 =?utf-8?B?ODVFOS9BSk1xTk13a1FpTnp2NWZtYTd3dEVrZWkvZGFLbEw5eUljcUVSR0Fx?=
 =?utf-8?B?RGxQRUlyUUlVYkJ4OFNKNzFxK1pPSldlUWN0UkE3dTBrbHR0azQweS9SdlJO?=
 =?utf-8?B?YndKNmlkWFJEdjFvWGs0U25WSHVVUFVIc21MK1dIb2JQdXMvdE9hRnNEOVBO?=
 =?utf-8?B?aldVcDl2N3FEaHRua0xIQkk1dDZVUllic2N1WVZuK0o2akx3ajNNRENqWUxR?=
 =?utf-8?B?bkRoemF2ajhXTU5OMmlNQVoyZkVqbGVra2lnd0YvemNRSFBqN0NzT0RRQnpX?=
 =?utf-8?B?UGp5dE1NOHVzcVVzTFVpb0xFeUtDNDdCN0JnR3Q4ZmROcEFPUmhVc0dQNEFS?=
 =?utf-8?B?M1QvYjhsam9zem1GVU1HODRoUlZWNW5qUzZyZmVrYkpBQklwZlpUZ0dFRXdH?=
 =?utf-8?B?Ujg3QzVRYkl1QThNSlRiU25qaTE0MW9GcDR1aTNuckc2SXBIa25iTXhOVmUw?=
 =?utf-8?B?SDE0Q1dJV1RoUDlsTHl0eEYrRnJHNDBoUGQ0YWRrc3RKL1BGb3hIdkJxdG0v?=
 =?utf-8?B?dTVOYnRWVlNIV2g0cy92SXN1R204T2hNOTBCOTVETUNPaWdBeGFWbHpmZ0xz?=
 =?utf-8?B?Wk1tNlJTelEwVDN5TmU3VEJxb0V5elYxOWlmbnZHWUJLcU1BMWJDYjUwVXZG?=
 =?utf-8?B?bHBnWVZLdzRPSXVUZ3R6Y25EckdtWXE4U055cGJESlJGNW91di9xblN0bVJV?=
 =?utf-8?B?am5PaUJQY2ZJTTduNHVjdmpONEpnY05zR3JzTURjWGVZUWxkZzlyOVhxZlI1?=
 =?utf-8?B?QWRrOWxObmtqYnlGbndHRi9xaFVSZHh5NDNPb1BZZ1ZndjJ2MlljL2NlMi9v?=
 =?utf-8?B?R1JvVE5oZVo4bmViOU5lK3RsWmVxVkllaTBLWkZ1QVd5ZFFKZGpaeTMwODdE?=
 =?utf-8?B?cWFCZlIrR0dEN1RQNGpPOENtMXczNktyVnlnTXB2aXJhMWNNQjRBay9ZVVRv?=
 =?utf-8?B?cE1uY3ZNQVNKV0JhMVE5QmIxd1l2VTNzcXNGaXZGYlNwVFZhOUROcGJ5V3lQ?=
 =?utf-8?B?azZhcE5YYmMwNmNHdXd2L3BCQnF3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6B510E4F24C8174AB04060704C79D1F8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 067f3d4a-d7cc-4edf-52bf-08ddcf328cce
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2025 06:30:17.3943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +oxOr+KzBJOSy7S7KMKM7i4Gd7i7isvLOnJG+APiiJ3R8GS0VkpzDZtSvtFiFO5x5phFYlTlF02pe8Q9eWUd8dcqG8cRSZ3rAWc4dDuMzh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9273
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

T24gVHVlLCAyMDI1LTA3LTI5IGF0IDE1OjQ2ICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBBcyBwZXIgdGhlIHdhXzE4MDM4NTE3NTY1LCB3ZSBuZWVkIHRvIGRpc2FibGUgRkJD
IGNvbXByZXNzb3INCj4gY2xvY2sgZ2F0aW5nIGJlZm9yZSBlbmFibGluZyBGQkMgYW5kIGVuYWJs
ZSBhZnRlciBkaXNhYmxpbmcNCj4gRkJDLiBQbGFjaW5nIHRoZSBlbmFibGluZyBvZiBjbG9jayBn
YXRpbmcgaW4gdGhlIGZiYyBkZWFjdGl2YXRlDQo+IGZ1bmN0aW9uIGNhbiBtYWtlIHRoZSBhYm92
ZSB3YSBsb2dpYyBnbyB3cm9uZyBpbiBjYXNlIG9mDQo+IGZyb250YnVmZmVyIHJlbmRlcmluZyBG
QkMgbWVjaGFuaXNtLiBGQkMgZGVhY3RpdmF0ZSBjYW4gZ2V0DQo+IGNhbGxlZCBkdXJpbmcgZmIg
aW52YWxpZGF0ZSBhbmQgdGhlbiB0aGUgY29ycmVzcG9uZGluZyBGQkMNCj4gYWN0aXZhdGUgY2Fu
IGdldCBjYWxsZWQgd2l0aG91dCBwcm9wZXJseSBkaXNhYmxpbmcgdGhlIGNsb2NrDQo+IGdhdGlu
ZyBhbmQgY2FuIHJlc3VsdCBpbiBjb21wcmVzc2lvbiBzdGFsbGVkLiBTbyBtb3ZlIHRoZQ0KPiBl
bmFibGUgY2xvY2sgZ2F0aW5nIGF0IHRoZSBlbmQgb2Ygb25lIEZCQyBzZXNzaW9uIGFmdGVyIEZC
Qw0KPiBpcyBjb21wbGV0ZWx5IGRpc2FibGVkIGZvciBhIHBpcGUuDQoNClJldmlld2VkLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gQnNwZWM6
IDc0MjEyLCA3MjE5NywgNjk3NDEsIDY1NTU1DQo+IEZpeGVzOiAwMTAzNjNjNDYxODkgKCJkcm0v
aTkxNS9kaXNwbGF5OiBpbXBsZW1lbnQgd2FfMTgwMzg1MTc1NjUiKQ0KPiBTaWduZWQtb2ZmLWJ5
OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4g
LS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDggKysr
Ky0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+IGlu
ZGV4IGUyZTAzYWY1MjBiMi4uZjgyZDM5MmYxZTIyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gQEAgLTU1MiwxMCArNTUyLDYgQEAgc3RhdGljIHZv
aWQgaWxrX2ZiY19kZWFjdGl2YXRlKHN0cnVjdCBpbnRlbF9mYmMNCj4gKmZiYykNCj4gwqAJaWYg
KGRwZmNfY3RsICYgRFBGQ19DVExfRU4pIHsNCj4gwqAJCWRwZmNfY3RsICY9IH5EUEZDX0NUTF9F
TjsNCj4gwqAJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIElMS19EUEZDX0NPTlRST0woZmJjLT5p
ZCksDQo+IGRwZmNfY3RsKTsNCj4gLQ0KPiAtCQkvKiB3YV8xODAzODUxNzU2NSBFbmFibGUgRFBG
QyBjbG9jayBnYXRpbmcgYWZ0ZXIgRkJDDQo+IGRpc2FibGUgKi8NCj4gLQkJaWYgKGRpc3BsYXkt
PnBsYXRmb3JtLmRnMiB8fCBESVNQTEFZX1ZFUihkaXNwbGF5KSA+PQ0KPiAxNCkNCj4gLQkJCWZi
Y19jb21wcmVzc29yX2Nsa2dhdGVfZGlzYWJsZV93YShmYmMsDQo+IGZhbHNlKTsNCj4gwqAJfQ0K
PiDCoH0NCj4gwqANCj4gQEAgLTE3MTAsNiArMTcwNiwxMCBAQCBzdGF0aWMgdm9pZCBfX2ludGVs
X2ZiY19kaXNhYmxlKHN0cnVjdA0KPiBpbnRlbF9mYmMgKmZiYykNCj4gwqANCj4gwqAJX19pbnRl
bF9mYmNfY2xlYW51cF9jZmIoZmJjKTsNCj4gwqANCj4gKwkvKiB3YV8xODAzODUxNzU2NSBFbmFi
bGUgRFBGQyBjbG9jayBnYXRpbmcgYWZ0ZXIgRkJDIGRpc2FibGUNCj4gKi8NCj4gKwlpZiAoZGlz
cGxheS0+cGxhdGZvcm0uZGcyIHx8IERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCQlm
YmNfY29tcHJlc3Nvcl9jbGtnYXRlX2Rpc2FibGVfd2EoZmJjLCBmYWxzZSk7DQo+ICsNCj4gwqAJ
ZmJjLT5zdGF0ZS5wbGFuZSA9IE5VTEw7DQo+IMKgCWZiYy0+ZmxpcF9wZW5kaW5nID0gZmFsc2U7
DQo+IMKgCWZiYy0+YnVzeV9iaXRzID0gMDsNCg0K
