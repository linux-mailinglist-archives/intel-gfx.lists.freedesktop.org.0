Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EC9B50577
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Sep 2025 20:38:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B35F10E7C0;
	Tue,  9 Sep 2025 18:38:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FsDYcK/V";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2F010E34A;
 Tue,  9 Sep 2025 18:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757443134; x=1788979134;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fycz555qpflQ9grpMbcUhSK8hsVZ+uDKmgp39AxY6D8=;
 b=FsDYcK/VoqNziKs3WsTZ0ZOugBEcATy0e688nPUgbQDZIbFKnbyFU6mI
 PqYsBfLnReBSpMXUZMc2Od895n580lMFjrcYcyIWMhmT22taZXAFQxf2V
 qACcfIJrtJyE8bwFJv32oAmBZmRg4S3KtSJ13Il1nOxDms6XtCEveUq7a
 mtcFgRHpkGK0RcZKsBJajm9ezbkMMeUzOfCJe9zzpKnLErXEQ4+m7hHuE
 1h8M9VMWtkAZq3gXkC/Y+weOT+fYaZnvosTlezt4w1WDMsjW2O4MgwXBN
 fhXSYvuN0UNDA4XWdFpkh8+U/H+TBRMhF5FQrYY7hIOXkTmId4fvOALOx g==;
X-CSE-ConnectionGUID: 90UU6Ag6SHKEsjeBxWkYnQ==
X-CSE-MsgGUID: KIbdTf8iT6Kjb4neXU6pyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="82329822"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="82329822"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 11:38:53 -0700
X-CSE-ConnectionGUID: C2WWi1s7SgGw9H1SJ815YQ==
X-CSE-MsgGUID: w2KdO14SSV+PxTwudGzYhg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2025 11:38:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 11:38:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 9 Sep 2025 11:38:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.85)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 9 Sep 2025 11:38:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R/FvmJYd6j0NWr0/38vdblrFBobevi6ttGdNKyrzdORcwlPHMoiX1irLPmZxkUVBwcjxUli7cg4y0OTeSqlxFJQ4FaYuvDvO+Jo/jh3xRgFYCWJmwnDtHaazFH5flYr3dLpniHMrmgfzXyKZkKBkRf0sK9ZE56wtFKJkca2M8SyTcwtfL/y82hLpcGrkgy+cLBeVXPoNJus0aGZ26azc02AOlVfF31rIIG5S/6wOYk8PGC6qy4UV79Qke1hdQ160fWCBLL6MFkTlhG27mcc430zA7QqxWbuumIC8ewGm1tj0tBSVkHLuznui54Be5Ykg7+WKXDP6hk4AUGI2KRPE9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fycz555qpflQ9grpMbcUhSK8hsVZ+uDKmgp39AxY6D8=;
 b=e+MntaK0hc5djBb1DhLbWx+/v+5+vhKlKrNbgQ+t36aQbIma+hKFKD0PVR34GMLKz3dvSNnVj5jPrqBGG9kcQbQ5E4+9nBKIqS+Ra1fEglzu5symWQLELrDAjfl/T/MI49rGS8M/yOgUlc4U1WCpkb0/Cnq52e5Z8UdEMdrBKfYjlIaxmRV3W9fYfevkv6mfOjc7PckeVKhu+ntMLxH7G6Oh04LYOx8yxqd7qC+sW5rFhPaynuj8ybW5m4BKse+gC+9VlmqQz2dvLKtmtjFfl7nlLyaecG/1/byFnmnaN6kXDzmaz0sIcRGGjcrhvD4vKNYRhGt6nt2L9QBcApPHZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Tue, 9 Sep
 2025 18:38:49 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%6]) with mapi id 15.20.9094.021; Tue, 9 Sep 2025
 18:38:49 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>
Subject: RE: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
Thread-Topic: [RESEND] drm/i915/xe3: Restrict PTL intel_encoder_is_c10phy() to
 only PHY A
Thread-Index: AQHcIW6J5hUjMlibk0O2wEzqM8YdVrSK8wgAgAA6bsA=
Date: Tue, 9 Sep 2025 18:38:49 +0000
Message-ID: <IA1PR11MB6266A4A408531083F4DE8646E20FA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250909094535.4126289-1-dnyaneshwar.bhadane@intel.com>
 <175743023064.1838.6299430690698520828@intel.com>
In-Reply-To: <175743023064.1838.6299430690698520828@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA1PR11MB8795:EE_
x-ms-office365-filtering-correlation-id: d11a5fcb-815c-4a65-cfd3-08ddefd01df1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?YmRXaWE2OWdPcTR6QXVmNlhlYjYySFRNSzJ6Mk9ieWlwWWxZU24vZlludyto?=
 =?utf-8?B?ZFZlVVprR1EwYkoveTh5SThtS3N0czU5bjZGMGFJblgzS2dINzIxNDM1NXZ1?=
 =?utf-8?B?QTdzVkd1VThSbnA2SGFBejhFQ0tTaXVEM2RVbElVajMxZVR4RUJDZTh4ZFYy?=
 =?utf-8?B?QTE4dkVFS1MvU1VoSjhucXhrNWM0NmgyalRndmtoNXZ3T2F2Um05UnRCNjFv?=
 =?utf-8?B?eWNmVS8wTithTWdwZWNla2pBQWtaYUczNmNCRTZvNFpWSSszYXBGSW92UERJ?=
 =?utf-8?B?TThRcGRONVV0VWw5dHpZV0Jld0xKbitWVTVjZTNZOUdkTGdjRVBWd3RsMTdq?=
 =?utf-8?B?cTI4anRqM25sNzdremVjR1RPdUdyU0JEWGM0a3dqUEZSMGlOYzJPay9wOUw2?=
 =?utf-8?B?UXpWRVRFTlBtWDcwTmZ4T0htdjBSVDQzMEpBWDF2dHZZaDA0bkRvVGI5RllN?=
 =?utf-8?B?aFJ0WEdoV2s2d0RhVGVNa201QmJXd3Jnbnk5eFJBTXRPakhpMTBBWHRHNmRt?=
 =?utf-8?B?TVh6MklWMWt5SWt6c1FYKzBneUI0YlhzdzZzQ056MzVWWlNmdFdIUmVxclR5?=
 =?utf-8?B?SXRJV0UrdEpCdjUvb3V5S0Z1WDRMV3IvNzU3NStJVVZuOEc0eEdtZmtiRGlY?=
 =?utf-8?B?eXdUYUNEVU1MeGt5ak1hbEtmTVRsODhyb2hpSm54MXZQbjJVWTJ6NjBkU0lJ?=
 =?utf-8?B?QTllTlYrRmRZODJUc1lMUU9ZZmd0VXl6alFLdEs2bFZSTVQ2N2pMb1FpNzhF?=
 =?utf-8?B?dVg0SFQ2RndORGpOdjk4WVhQeE9QM05LVHZreDZVYWhFRUpjdHcrNXFYb0tJ?=
 =?utf-8?B?d1hpT1crbDhzTUQxUjE3UkVwMmEyeFlaTVdyY1dPUjBObDZPVjBuYndUZVJ5?=
 =?utf-8?B?Z0lmWDRmVmgrVGZ0RnFNVzJELzNpeFlNNVgxdmw2b29UUnlNTThSV0JqbWpl?=
 =?utf-8?B?U3U1d3M5VDcwbXlkdkZ0aVBVeUJlZGxCVWNicnk4cFdrQjBVZmZRbHhkZG5u?=
 =?utf-8?B?MStSUnVNRTQ1REpldnpsSUpKQVkrOWcxVEVZVGFmMHEzVnJCeW9CbFpoc3Zt?=
 =?utf-8?B?NEtySGRuWG53bFBheXV0aXZVUXhVZjk0cUVVMWY0cVlHcWtpcmtDRFdxVVpi?=
 =?utf-8?B?VkxEK1dYNjhwZXJ2MWpCYnR4cVMySUsxTU12TXRseFRsSDFBWmlZZ3ZhYW85?=
 =?utf-8?B?QTdxWi9zanJkRDJOeG9WM3BYUUxnbjM1d1F2Vk00a0xFKzU0NlN2c0VrazFi?=
 =?utf-8?B?NVI1YlhLa1JHdXVUYVlGalMxMW9BUHVONlpNeEV0NDArYllsMVcwVE5ESTBJ?=
 =?utf-8?B?VE13dTJ3Q3ZlcDU3cXFQYWE4MzR3SUpVU01DdnAzQnlhcXVyKzRwY1hENUxH?=
 =?utf-8?B?d2swU2ZLZDYxMWFCKzVsOTJkSGNPbThIaDlRSzJUK2dPMjRCMm5qSkdSY00r?=
 =?utf-8?B?bSt5aWc5YlhhZG1KNFJCUFBUQmg3UWVFTEVGRStvdytzNGRmNWRPamZQOW5W?=
 =?utf-8?B?a3ZOWktINGVaTktVUkJUdnE0bTRFbEIvSDdNbHpDQnlMblMwam8xbXE5QUll?=
 =?utf-8?B?aDJYNk1Gd2ptV1FyTGd6di9rN3JYM1pyeWxDWHBhSk9XdkhLWVN6MHNGNFJF?=
 =?utf-8?B?OXdpbGVlLy9KSVFLdE5lTWkyQUhJVi9TL256QVg3S0RVV0dlaGg1bi91YnRu?=
 =?utf-8?B?aWxoZ3dUSURuR2E2K3M2M24rdXVLZTFJZjMzWFMwWEpReEtOZ3Y0OHdKZ0xn?=
 =?utf-8?B?eTVWUzFWMEZtZEJ0NWxpc1cvZXFrOTU2NS9USWEyZlhHb0xpNUljVHpoTjl2?=
 =?utf-8?B?aGFVVnZFcmZ3WE80eTRuNTV5MWR6blJmdm5NSE9BUnA0cDA5U09rSmVJQ0c0?=
 =?utf-8?B?NnB2dFFacUtlRHdoc1Mzcm1rdmlETWU5MVc0RXdYZDBnU2NNWnNGZWJEZ3dq?=
 =?utf-8?B?RHl2VFJKQjk0Tmxpd1BuM2hBSzRXb0hFc0RMOHh5dTFJRFNkQnRMWitzVGIv?=
 =?utf-8?Q?AgwIdr+rn/S5xPvRgSLUpEEqDxqnU4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b0FSMFluUFpzQ1N1MlplVElqdk1rN3FKczdGSzc5ME1pWUJ2WGd0bGtRbFhw?=
 =?utf-8?B?TFdrNm5zTk53dGkrRzA0M2ZkTU5tWmg3U1RxT2Q5Wlk0eXBtMXZPSmg0TkdC?=
 =?utf-8?B?Q2dTS3phNE5JREFtUXVGZnZYUUx1eVJlVXNMVEJvSm5BOVFJU2F1ZGk5a2xx?=
 =?utf-8?B?NmtDOFZ4MXprQXN6TFpUZTZGd0JHVEZIWVhJS1B0U1AybWRyL211ZTlhazBy?=
 =?utf-8?B?UlR5R2FSN1dXUldkeFp6emFRV3NYOEorUDUrSlBHelZyMGZPV1EyNXJzWDFo?=
 =?utf-8?B?NjJkM1NGbXZoZ1hibEhpTTdIZjJrbWlScUxMSXd6QWdHN1VVMlpmQ3g3UHZq?=
 =?utf-8?B?NlhlY3BwUU9LSGdJTzRrZWVCWjIwdm9CZDBuMmRQRGJ6Wno1am1FQXpZSDdY?=
 =?utf-8?B?N2hWUnZBNkp0OG5QSTRXTzAxMnhhaGdDTHEvQjZPaENIcTEwR3Y0bXJnTW9S?=
 =?utf-8?B?WVVnZnBNMk5UdkUrSEx2OTJoSElBTXJXeFVyMlFUbEwrdzVveWl3SUtoS2lo?=
 =?utf-8?B?eTFya0Z5ZGVzM0dUekRoa2FFNEREOVNmS0ZiNWMzOC8xZEM0bTZFWCtLOVF1?=
 =?utf-8?B?OVpnZ05qWHBVYzhYOTdkaVZnSnJsRnhJT0c1L3lVUGVseXBPYnk0OUxWNUlq?=
 =?utf-8?B?V3ExQzhtMFJ5aVRxWVpWVXMxS0JTZ09VbSt4OG5kNWgwb1BUNkkzUldFL1NZ?=
 =?utf-8?B?Q3BSQ3FneWM1eVFlUkIzWTd4OE5VMjZyMUhMcVVCclE3S2N6aW5CaG84bEZz?=
 =?utf-8?B?ZVZpRWNVdFlwMUJNNHZwN1A2TElzOUlMZFJXWVFKaENwYWhLV3ZRVmliOUlt?=
 =?utf-8?B?d0hVOWxwOWRlUW5CYWV2aWJjb3dBNkM5cVg1NUM1MTVWRU40Q3lRRlpIdDl3?=
 =?utf-8?B?QmVGL3I0MzFiaWo1Q2NpalBidG5lWEE0UzhURHk3QWJNZXNrb0ExUnBiZEk1?=
 =?utf-8?B?NXpDYmNGcGFKM093VllwL0IzbXBSb3pMVXMxck5ZUDM0bVBad0RqUUNIaVc0?=
 =?utf-8?B?UEFGdnhmdGF4MEdTZ1d0dXBJZmZncHNjWkZrb0JxdUw5L3VzcmxGT3hjci9P?=
 =?utf-8?B?OWVoNWVCSDUyZkVBM2MwSUh4VGYzUm5sYjBPdE5MNEUreE5iTmdFUWl2UCtl?=
 =?utf-8?B?ZjN2V3hTOVI1VVpRUEdmM25WNTJncGVpL3lYUDB2YUFzSDhkSklYNWVYZ011?=
 =?utf-8?B?aS8rOVgxdG1VdlUrMHZ0NFhBbHB5Q0NJYkNSSmVTMzRmaVlWWGUxa1JSWGpk?=
 =?utf-8?B?MlVPbVFKNFhZaEJkMVVVVkUvb1BIWFNZdGx3MWZtUHUrNGk5YXpNWSt6bG5u?=
 =?utf-8?B?OUoxVHoyZVUvWjdlaGRpVHNlb01pbVhiMEVFMVVCNmREeWhrRFVCeitNUCs1?=
 =?utf-8?B?di9LZC9nWE4yNUk1aWxlS1F0bjJRUVJSNENYTGZFRkh3VXgzK0MvaXdTUThR?=
 =?utf-8?B?YU4yc1dRWU13bTM3S1dkL2gvK2FUejNFTnRWSEljcWJ0NW5HR0VtUjJ0ZE5w?=
 =?utf-8?B?S3k3NUxiYlZPRzAwR1hvaXNIZjBXM3M3WndINEhHbUtCNG5yZ2R3eTNhYkRZ?=
 =?utf-8?B?QlJ0SG1jaVQ0c3RoWWhDalBWQ2t3dzcvbEJqbHVtUEFVU2dIME96aEc3SHpJ?=
 =?utf-8?B?L0V2NW1Za2d6d2tvVEVqOEdEWGovTHFEU0dzTUpRU2hQQTJPWmtoT0RBUUNa?=
 =?utf-8?B?T015OEZzTlFYL3puaXB4RFFxWVR6TDB4MkxLNURmU3pQSHFQUFA2dlR5M21H?=
 =?utf-8?B?eTdVSDBSaldGdStnRFdHaVJmTDd0NGQwTzZnVnV2aU4yclpkb2d2UXViNTZZ?=
 =?utf-8?B?YWVqd2Z1RXdZY1FLSEJteE1Lc3R5V3g3bnhURmFiYnZJRkYrU21kLzVZc2ZR?=
 =?utf-8?B?cm1VYVhWc0FBdDJneWpxSFlTbllWVjdleml0dFRrQXYyTWtuRUV6TmFHdm9D?=
 =?utf-8?B?VjNtY2ZxSGp1R3lzOXdKVkdXYjV4OW4yRkNRK2hSRU9heEF1UWx3MEs1bFlT?=
 =?utf-8?B?Q1dic1NrSkNpOVZma0ZGcCtEUE5wb29yUzNLM0NPWGxqd1EzQmROTHR5WlhI?=
 =?utf-8?B?cW5oLzdCb0pXZHVrS3NtbDFYMkcxQzhjNmkxQXBaem05UmlGdFJVaTNaaHky?=
 =?utf-8?B?blcyaDZSUnYrbzhPU21helU1NXh4UjMyTkZmeWVNSW90TWhBZnVGalhSbzNt?=
 =?utf-8?B?MlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d11a5fcb-815c-4a65-cfd3-08ddefd01df1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2025 18:38:49.0791 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lhNFYQl0kyx3zc6plJazpGOYj6ZLGmfdDvcd7m9LGOxKmBBAXMCu82W3Ha5I2IaQPhZpMpkPuS+13Vcg8wy2VjwY9mIZtBrbFxHDWT7WF68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU291c2EsIEd1c3Rhdm8g
PGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIgOSwg
MjAyNSA4OjM0IFBNDQo+IFRvOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8ZG55YW5lc2h3YXIuYmhh
ZGFuZUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50
ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBCaGFkYW5lLCBEbnlhbmVzaHdhciA8
ZG55YW5lc2h3YXIuYmhhZGFuZUBpbnRlbC5jb20+OyBOYXV0aXlhbCwNCj4gQW5raXQgSyA8YW5r
aXQuay5uYXV0aXlhbEBpbnRlbC5jb20+OyBBdHdvb2QsIE1hdHRoZXcgUw0KPiA8bWF0dGhldy5z
LmF0d29vZEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUkVTRU5EXSBkcm0vaTkxNS94ZTM6
IFJlc3RyaWN0IFBUTCBpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeSgpDQo+IHRvIG9ubHkgUEhZIEEN
Cj4gDQo+IFF1b3RpbmcgRG55YW5lc2h3YXIgQmhhZGFuZSAoMjAyNS0wOS0wOSAwNjo0NTozNS0w
MzowMCkNCj4gPk9uIFBUTCwgbm8gY29tYm8gUEhZIGlzIGNvbm5lY3RlZCB0byBQT1JUIEIuIEhv
d2V2ZXIsIFBPUlQgQiBjYW4gc3RpbGwNCj4gPmJlIHVzZWQgZm9yIFR5cGUtQyBhbmQgd2lsbCB1
dGlsaXplIHRoZSBDMjAgUEhZIGZvciBlRFAgb3ZlciBUeXBlLUMuIEluDQo+ID5zdWNoIGNvbmZp
Z3VyYXRpb25zLCBWQlRzIGFsc28gZW51bWVyYXRlIFBPUlQgQi4NCj4gPg0KPiA+VGhpcyBsZWFk
cyB0byBpc3N1ZXMgd2hlcmUgUE9SVCBCIGlzIGluY29ycmVjdGx5IGlkZW50aWZpZWQgYXMgdXNp
bmcNCj4gPnRoZQ0KPiA+QzEwIFBIWSwgZHVlIHRvIHRoZSBhc3N1bXB0aW9uIHRoYXQgcmV0dXJu
aW5nIHRydWUgZm9yIFBPUlQgQiBpbg0KPiA+aW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoKSB3b3Vs
ZCBub3QgY2F1c2UgcHJvYmxlbXMuDQo+ID4NCj4gPkZyb20gUFRMJ3MgcGVyc3BlY3RpdmUsIG9u
bHkgUE9SVCBBL1BIWSBBIHVzZXMgdGhlIEMxMCBQSFkuDQo+ID4NCj4gPlVwZGF0ZSB0aGUgaGVs
cGVyIGludGVsX2VuY29kZXJfaXNfYzEwcGh5KCkgdG8gcmV0dXJuIHRydWUgb25seSBmb3INCj4g
PlBPUlQgQS9QSFkgb24gUFRMLg0KPiA+DQo+IA0KPiBJIHRoaW5rIHdlIG5lZWQgYSAiRml4ZXMi
IHRhZyBoZXJlLg0KPiANCj4gRml4ZXM6IDlkMTBkZTc4YTM3ZiAoImRybS9pOTE1L3djbDogQzEw
IHBoeSBjb25uZWN0ZWQgdG8gcG9ydCBBIGFuZCBCIikNClN1cmUgd2lsbCBpbmNvcnBvcmF0ZSBp
biBuZXh0IHJldi4NCj4gDQo+ID5Cc3BlYzogNzI1NzEsNzM5NDQNCj4gPlNpZ25lZC1vZmYtYnk6
IERueWFuZXNod2FyIEJoYWRhbmUgPGRueWFuZXNod2FyLmJoYWRhbmVAaW50ZWwuY29tPg0KPiA+
UmV2aWV3ZWQtYnk6IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4N
Cj4gPi0tLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5j
IHwgOSArKy0tLS0tLS0NCj4gPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQ0KPiA+DQo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jeDBfcGh5LmMNCj4gPmluZGV4IDgwMTIzNWE1YmMwYS4uMzM5NjNhZDE0Y2ZhIDEwMDY0
NA0KPiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMN
Cj4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID5AQCAtMzksMTMgKzM5LDggQEAgYm9vbCBpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShzdHJ1Y3Qg
aW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlcikNCj4gPiAgICAgICAgIHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiAgICAgICAgIGVu
dW0gcGh5IHBoeSA9IGludGVsX2VuY29kZXJfdG9fcGh5KGVuY29kZXIpOw0KPiA+DQo+ID4tICAg
ICAgICAvKiBQVEwgZG9lc24ndCBoYXZlIGEgUEhZIGNvbm5lY3RlZCB0byBQT1JUIEI7IGFzIHN1
Y2gsDQo+ID4tICAgICAgICAgKiB0aGVyZSB3aWxsIG5ldmVyIGJlIGEgY2FzZSB3aGVyZSBQVEwg
dXNlcyBQSFkgQi4NCj4gPi0gICAgICAgICAqIFdDTCB1c2VzIFBPUlQgQSBhbmQgQiB3aXRoIHRo
ZSBDMTAgUEhZLg0KPiA+LSAgICAgICAgICogUmV1c2luZyB0aGUgY29uZGl0aW9uIGZvciBXQ0wg
YW5kIGV4dGVuZGluZyBpdCBmb3IgUE9SVCBCDQo+ID4tICAgICAgICAgKiBzaG91bGQgbm90IGNh
dXNlIGFueSBpc3N1ZXMgZm9yIFBUTC4NCj4gPi0gICAgICAgICAqLw0KPiA+LSAgICAgICAgaWYg
KGRpc3BsYXktPnBsYXRmb3JtLnBhbnRoZXJsYWtlICYmIHBoeSA8IFBIWV9DKQ0KPiA+KyAgICAg
ICAgaWYgKChkaXNwbGF5LT5wbGF0Zm9ybS5wYW50aGVybGFrZSAmJiBwaHkgPT0gUEhZX0EpIHx8
DQo+ID4rICAgICAgICAgICAgKChESVNQTEFZX1ZFUngxMDAoZGlzcGxheSkgPT0gMzAwMikgJiYg
cGh5ID09IFBIWV9CKSkNCj4gDQo+IFRoaXMgaXMgdXN1YWxseSBhIHByb3BlcnR5IG9mIHRoZSBT
b0MgYW5kIG5vdCB0aGUgZGlzcGxheSBJUC4gU28sIHdlIHByb2JhYmx5DQo+IHdhbnQgdG8ga25v
dyB0aGF0IHdlIGFyZSBvbiBXQ0wgcmF0aGVyIHRoYW4gZGlzcGxheSB2ZXJzaW9uIDMwMDIsIHdo
aWNoDQo+IGNvdWxkIHRoZW9yZXRpY2FsbHkgYmUgcmUtdXNlZCBpbiBvdGhlciBwbGF0Zm9ybXMg
d2l0aCBkaWZmZXJlbnQgZGlzcGxheSBQSFkocykuDQo+IA0KSGksIA0Kd291bGQgeW91IHN1Z2dl
c3QgdGhhdCB3ZSBzaG91bGQgaW50cm9kdWNlIHNvbWV0aGluZyBsaWtlIHBsYXRmb3JtLndpbGRj
YXRsYWtlIGluIHRoaXMgY2FzZT8NCg0KRG55YW5lc2h3YXIsIA0KPiBBbHNvLCBhcyBzaWRlIG5v
dGUsIHRoZXJlIGFyZSBtYW55IHN1cGVyZmx1b3VzIHBhcmVudGhlc2VzIGluIHRoZSBjb25kaXRp
b24uIEkNCj4gdGhpbmsgb25seSB0aGUgb25lIGZvciB0aGUgaWYtY29uZGl0aW9uIGlzIG5lY2Vz
c2FyeS4NCg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KPiANCj4gPiAgICAgICAgICAgICAg
ICAgcmV0dXJuIHRydWU7DQo+ID4NCj4gPiAgICAgICAgIGlmICgoZGlzcGxheS0+cGxhdGZvcm0u
bHVuYXJsYWtlIHx8DQo+ID5kaXNwbGF5LT5wbGF0Zm9ybS5tZXRlb3JsYWtlKSAmJiBwaHkgPCBQ
SFlfQykNCj4gPi0tDQo+ID4yLjUxLjANCj4gPg0K
