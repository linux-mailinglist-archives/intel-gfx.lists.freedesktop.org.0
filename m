Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24CFACDF5C
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 15:38:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8D910E71D;
	Wed,  4 Jun 2025 13:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MooHjkSO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8982310E724;
 Wed,  4 Jun 2025 13:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749044306; x=1780580306;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=cNHEmR4Ou9JsgYD06P1gwRYpk4oFw4g3UOR79y1TtjQ=;
 b=MooHjkSOYX7U5G2p7Z8amHkOghdyA+7+Vb+pUTTli9TRSMSCgqbS2cGA
 h3b6zrFW5j6WaHIJnAEGSg1gpEXb3xqWEVxF6zXOSNxJ1Sj+UB+AotP0Z
 PC4bjqOsy2DaMQcxzcW2VWCzi2hNPmXg5SsUpFLxVDu0iiJu7onzO6TIX
 m7wiwPZIy9+Uj6/NFE6TCy6z7iOsq6QCTwnEqbuF+uQHP7C5oMr4K6UAK
 GEqiuHMNqvSp56cETRkcKZxHveMhJHuP5+vl6gIWArtx4BVxW2eBHSm3l
 89zy2pH3KI8ch2ZwUGl3GUQptsDUvCn0HhTLVHB9zLDhh+G0dSCDIHKWL Q==;
X-CSE-ConnectionGUID: smZl0fSsRk+sIka3/Ad7FQ==
X-CSE-MsgGUID: 1lH1n3eCTvq3VUJhtLtNew==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="68561915"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="68561915"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:34:38 -0700
X-CSE-ConnectionGUID: zNQhxbQUT/y7fG/zOsUoXg==
X-CSE-MsgGUID: Bu6DBgOfTi296qWOT7hqww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="145157226"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 06:33:20 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 06:33:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 06:33:18 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.84)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 06:33:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q1MI/Mq+Vq8WCNaHzrsuzI4h5rA8KiJDzEproGLmgv+9ynf0G8tNm6Qh3LXfUo28J26i+SQ4wY1+tOdSwJ85mmzwJ9XYaOut/5UXJ3BoOnpUgeKa6OBJXYVZbIyndGKluIGhnTcwTwoDc68mS+d2y3KRBvBZI46osOpEczHzL3VRX9qfhfaB8Ldag4nXkONi1/9QPKWZC3ofjKuMM83pn+7rbxR2tAP50Mz8QqXNH02us7eI7hLIG2InUiLc97D6bm96iydkVr4qdtRX+vgaImUAJdo4a4XIjlMOB3igb99dr9UAM3T9SdfKNykfIWsd1RsdoL8Ba9K5bYslYGIhmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cNHEmR4Ou9JsgYD06P1gwRYpk4oFw4g3UOR79y1TtjQ=;
 b=qapRjNbif6NisZevKSgmEOH7STbOeERl54O3vAqNsYrg4SPFRDS3UU7UoJsXCwq1q/BQHfr4xvllbsa+vQnUnMwFdXLtrLnbARCPZijxaBgvrr7akZAmoDORSF2N9oq+zh81RGnWc7F8ojuO52p6WMwU5YIz4OswVDIQluZVJXn8AUUJG4pDm7+qQHURjxWREwoDYidVsG9w658lX85qwKh/oYN/qxjtSVIZIpLJ+Q4S/+1ppw5/XL8NdFaZUBvaXAUc7TDYCF9H5syCI0bXVD3jujlT5cRwU2Ciho9VHSl2Qt5ZM0ss36REW+zm8CPv26X9Zuxx++EkM8x285+/rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MN0PR11MB6207.namprd11.prod.outlook.com (2603:10b6:208:3c5::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.37; Wed, 4 Jun
 2025 13:33:15 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8769.035; Wed, 4 Jun 2025
 13:33:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Thread-Topic: [RESEND 3/6] drm/i915/wm: DG2 doesn't have dram info to look up
 wm_lv_0_adjust_needed
Thread-Index: AQHbzulalG6lzFNYH0qvnHlMwEra/rPzDJwA
Date: Wed, 4 Jun 2025 13:33:14 +0000
Message-ID: <c8088aeeee1a64fd66c02eb1e3116b02b39daced.camel@intel.com>
References: <cover.1748337870.git.jani.nikula@intel.com>
 <a866641bff364dcfcaaabaa1d53c4a8cfa94ff3f.1748337870.git.jani.nikula@intel.com>
In-Reply-To: <a866641bff364dcfcaaabaa1d53c4a8cfa94ff3f.1748337870.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MN0PR11MB6207:EE_
x-ms-office365-filtering-correlation-id: 2104a97b-5fb0-4287-c71b-08dda36c5bda
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?b2x2b2c3T3VKSUJrcFBEaEZiSmFCMlJtUEdXZmY3T08vQUNyME5GTm8wMEZx?=
 =?utf-8?B?ekdkT09tVlo4dFY0QncvbjZGUE9yU1pYQmU3RCsvKzFJcUs0RHcvekRMbHdw?=
 =?utf-8?B?R1ljLyszdXExdzdHYmhlNjlNMklQdWZkYnUrRnhPM3hCN2NXRWNwam1yU25x?=
 =?utf-8?B?M1VDYk9BQ0FCM1FPYUdVWkYrU3Y1THZZSS9EL1N0N2kxdUpMYy9VL2V0dGF5?=
 =?utf-8?B?UFB1NUluR253Y09KRGIvZm84ZmRSdDRoTnY5YXdDMUxCWlBkN1VuOXFEeHB6?=
 =?utf-8?B?S3F3aHdYRDYwSy9DQkd2TnlhZ2pIWmlFaTJRdGpPT0Eybm1UVjRsOWNBaGV4?=
 =?utf-8?B?WnkrYWRhSDFwWWJyRmZpOGdGOXVBZFR0U1htQStsV2dXb0ZOUG9VWDBBb0Ju?=
 =?utf-8?B?dkMxWFN5YWRJVWdQeFBGdWg5cXJCUTZLVDN5L0RSOSsyMHpRNlNQOTd6WVlh?=
 =?utf-8?B?ZDBsRngxeVhNQ3EvQjhsZklSVE1FenR6VXFsWDFzemVEdnYyR2NYRy9ldGR2?=
 =?utf-8?B?K0NrSmx2ejVJK25QNSt5a3gvL3BTbEc3NUdxYk9CMWd2Vk5qOTRsdXRDQ3Fo?=
 =?utf-8?B?bEYrbkV6RHZLOEJ5Y1pzb2tCVjRBTlUrOFJWT3lQdlU5SHBGQVFYZU9QVDlI?=
 =?utf-8?B?Wm8rUzQ0SmhXQ2R0NG9BV1hUWTNBK0xUZTIrVWN4QnZhQTFYRUF0Mk03MFRP?=
 =?utf-8?B?ZUVzM3pVMnBDMXZuODVRS0tzTlpobEs0eUlWQnQ3ZlFtRGgrRm9rdG81NlQ1?=
 =?utf-8?B?cWpyblc2MnZPRTkyZUJKbmlyZ1dmMUxMVWRqMkcyMllIMzV6eUd3RFNvcWxY?=
 =?utf-8?B?Yi9nRExXdEN5MnRYaFdjQnpFQTU0SGh5SnNvY1d3OEgvQlZUL1dxVld2UHRH?=
 =?utf-8?B?ajVsajVBNmg5cDIwazJSS0Zsc1dKNVBuWkhLT1VveHdPRUxiUWtaVTcyQmxo?=
 =?utf-8?B?cjF6NnEydVNvdjhZVlFnb2N3d1hwMjVDSUsxZHh5WkkzU2RnbW9pZ0o2b1NI?=
 =?utf-8?B?bWFVNmlvZEdxWXp6T2JwbzQ5NGlaemErdlNsU1RzbzluVURCdnhDcTBEMDA1?=
 =?utf-8?B?eFIxOVpIRmdXenpIaExWUXY0K2xBL2RKeXdnbTBwdHRjTnRhWTA4RXhITk94?=
 =?utf-8?B?MnZaUkJIVTdoQXZXMlRNaXZxYmtqMW8wNi9ZS2liVlh1QWg5Rk5FbFhtOWt4?=
 =?utf-8?B?VEZoQ1NTTURYZlJJVjlIQURtYVRtOVc0RWtOSmNEKzdPMXZtbVQ5M1JycEVs?=
 =?utf-8?B?TGRjSWc0WVovVDVDbWlpQ3l1V2FYRkZjQm9vWDlwL085bmR3K1FFTTJKRDVo?=
 =?utf-8?B?N3ZjdlZOUWl6YTNLby83UzZmSVpEd2RldDA1STAyWSttMmY1MjV6Nyt5N2ta?=
 =?utf-8?B?NnozcW8yeUU2VmdmbXFGK21HYWgyZ1dRREVHcjJOTjQ0TkRCUzZha3ROTWsr?=
 =?utf-8?B?SkdkUmVvdkhDSW5JeDc5NzNHeHl0N2lTWVlkQmd5MFM0d2FST29TYzE2RmdE?=
 =?utf-8?B?a2UzMU40ZnhzVzhpNDNmWXczUXd2eVVTYi9xaXZYenhDYzQ1K0h6QjJac3Bo?=
 =?utf-8?B?UXZqN3Z0L0NGWmVob1Y4ZW8rNEFzSG5oVDMwcG94WVlYb1kvRGowTS9BNmJh?=
 =?utf-8?B?bmY0UzQxTFdCUjZuNWZzUjJUVmxPWlhuVTR0alJVR0lGR3FYSHpLZlF1K3pM?=
 =?utf-8?B?Ri9uV2hLcmJSd2pKMi90WlR0RFNTRnZMVGIrT0h1TFhsUHZQcUNJSmZjckdv?=
 =?utf-8?B?b0lHRXZGeW5RcERiYUVuVXE2aVBHNXNmYjFBSUxTQ1J5RTRnSWdTeHcvaW1h?=
 =?utf-8?B?ODJiSlkzdVU2UllMVnhWWXhmVGNrbi8rOVNpc1dVSDBlTmxNZXBzSUQxa3ND?=
 =?utf-8?B?eVR3Zy9YU2N4M2Q2OG5DRHo3ZTFQeTJSL0pOZXp6Vlk1UXdOSDR1dHc1dzdm?=
 =?utf-8?B?eCtHZDNZRi9hWlpvS1gvVHdpaDR0NGpwUHV0MTc5Q3ZaNFRHQmZVMjE1K3lJ?=
 =?utf-8?Q?ZZGcUY3eQ9fqBUUU4sGyP2dctKopyo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T1dKQks4NFIrcnBOdGNvMzZ4bWZWRi9aQXRtK2hTRHh5OGVhMXJJSDNSbk5T?=
 =?utf-8?B?M3VsN2pybUtzUG9lUCt0NHU5UUo3NWJ4bFdSWm94bXhPYkNmd2YxMVIvbFJU?=
 =?utf-8?B?TGJDTGo0aWk0c3ZCMmpNTjluTFZ6aHA0TmRwM3FadXRTaVoxYytQeE5mZXMr?=
 =?utf-8?B?UkZQcTlTSkt0bFBiay8wWHh2U2YvT1V5RWVDcG5XYmx1M1FhU29kQ0dDQmZs?=
 =?utf-8?B?SkVZM1puN2U2SGFsNmpJbkordXU4S3FPK0VPdDhZMm1yNU5QYmM5ZVRlWWhy?=
 =?utf-8?B?MzczWEZKYnBJRDhnYWduVU9nWXp2dGVSVUJDVkVlSnNhZzV3YVFOVFkyTjd6?=
 =?utf-8?B?UWpLZ24xc2IydUNJWjNuRURCWGVmV1grL3VPMk5yYUlzZE4xSkJmZDhid09o?=
 =?utf-8?B?R055NTBvREgzTmZhV3RIcURFYS9FMThvRDZhYnNqMzFSeWtLVldxN3pQenRy?=
 =?utf-8?B?ZENxM0VsbFcvdnpBckZmWHJlbGY0bWVZUTFJZVU2YXN6Y2ViVFZ1UUVRemhx?=
 =?utf-8?B?YkM0bTYwZ3d1NXY5UngrQ2VHYi9Ua0xqQm0yZE51UDcxajZwWmRuLzd0RE1U?=
 =?utf-8?B?ZEYwdHMwVm95U0U0b3BreTVRUnBDTkt5c0E3Q2lmVjF3SGdmTG5ZNm8vMVFJ?=
 =?utf-8?B?VlZKVUJ6R0grUm5DeHRZUndZMUU5VkhvSHJtbnVjdkpxdVBGVDdYTFZGdTFv?=
 =?utf-8?B?ZmM0cWRUVXpUS1M2M3M2eStJTXQrcDhXbVJmYTBtL1pYckxhREFoYnkwQzZ5?=
 =?utf-8?B?OTJldTcvbnBnZUhTN2JnTExMWnFUYXNZbzNVVU1RVnJOM0ZZemNPTklvNW02?=
 =?utf-8?B?Tm0xS3UzS3pyK0RWRDkxUDFkSjN0R3RkeVVVYVViQStpanBaRmJUSkRTeVJu?=
 =?utf-8?B?Z2ZBcTI5Q3lBTG1lM2xiYXRiK2NFM2lvYVpxYSt2L0YyREN6N1F4cGU1ODRh?=
 =?utf-8?B?QVdhd01YRjZZa0J0U0VCcEJFaHFDRDI0dWdpY0MvV3ozNit6ckZQR250LzJz?=
 =?utf-8?B?UFpsZWpxWW4wSFRPRFlEcExnb0tiaytyalIvNS9wMWswQXQrbHZMdXFuYkVh?=
 =?utf-8?B?TmY5dDdYcWk0TFhMeGVyN29acEZkSXNsYmlpUG5NOHFyclBqNXRNMnpCUk5K?=
 =?utf-8?B?VDNRZVpvcXBtbHV1RzdWbFQrYTNxbTFvWjR3WTlnU3ZYWFlLSVpsQnVITTN1?=
 =?utf-8?B?OWF0enp0R29rTTFxMTNxdnlVUG44dExnYmxEaytobk5mMHFyMk1qTE9QdXFX?=
 =?utf-8?B?OU84ZUd4dlNsZjJoTVVTendwaG5VTlBuVVRtMGphYW92YU1CaEZyQ1R3S01s?=
 =?utf-8?B?LzFMSU91ZGZrUXdubU5xZHFvM1JGVDErQ0NycStDeUdTbUdBdUhzVDNmOThi?=
 =?utf-8?B?RENveS9LYVRSK2M0S0dQeHFHNnJacEtxdXhyMlRsWEh5aThTenJ6WVBuUzRo?=
 =?utf-8?B?OVR1c251c2VhVlFUU005TnJCNnBFYlJ0U25OWlYxY05BK2NxQ2dkOHpsL1pV?=
 =?utf-8?B?bjBra1haMmtzWm5CbmtibHVOVXZMRGZpWDI1VkJ6SHRHUWV3L1pmelhXS1lG?=
 =?utf-8?B?d0o4eFpySENVUlFvM2ViUGxzaXA2UWpJS0ltWXFXcFdXbWpOR1Jxd2JnV0tj?=
 =?utf-8?B?NWVuTzYyNVExd2RIUWZzMlVYOEN6bThRVlRIUVY1d3VYUG5RM0d0bmRMN0VZ?=
 =?utf-8?B?YmlUdXFmZ3pNWExxelB5S1hPWkRsU1NyR1JTNk84OUtIUENpTklVVi92WFdG?=
 =?utf-8?B?Ym9sZ2ZxemZiSkZuOGJhS1RmN0g2SzRwU1N1SGM0L1EyOUl5M2xCQUs5YjZk?=
 =?utf-8?B?UzJjUTFWSHFsVDNFMkhPTUFEVkQ4RmpWV29BeE1ON01hL2l6WUg4d0JOYWN6?=
 =?utf-8?B?SDlTWDNSYjUzUzY4QVI0UlRKSTdPYW1vbVdXWkpaRkhmZmdkVkdxZFh1d2NL?=
 =?utf-8?B?TXdDL0kzTzRaU24xY05lT2p2WXpRVjRzblV5L2hGbDVmcGNyTDdSQzE4R0Nq?=
 =?utf-8?B?MGhsdmdsMmdGZmRMQlBCdlFZYzFYdEZ6bVphWE16VG5rUFRxTWw3VFRXM0FU?=
 =?utf-8?B?SWJsZzE5Vm41Y01JdURiUzhOaWF5RWs0OExrMVAvSWVvZ3hXWUdpa3o0T1BV?=
 =?utf-8?B?NHI2UnRuNTd3TlRjQ2hOUGVZd2hBM0NzQS9LSjZtcmdPQkhCc1VYNmpEbUpL?=
 =?utf-8?Q?1IJYMo+6sVWtJfCL3cOi6B4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <16A602F18CA4994EBDEDCBAEF70AB464@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2104a97b-5fb0-4287-c71b-08dda36c5bda
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 13:33:14.8906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oL5p0yW41hLm33OIfkTyRk5Ewv54g1Q7kNUVdHtej8MrZMntqS0boOA+7FbKvUk5LtjbhSCFUhP0rx5oBO2esS3p7qI0fr9YCLl3pYOA+GY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6207
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

T24gVHVlLCAyMDI1LTA1LTI3IGF0IDEyOjI1ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
VGhlcmUncyBubyBkcmFtIGluZm8gb24gREcyIHRoYXQgd2UgY291bGQgdXNlLiBUaGUgc3RydWN0
IGRyYW1faW5mbyBpcw0KPiBhbGwgemVybyBvbiBpdCwgYnV0IGJlIGV4cGxpY2l0IGFib3V0IHRo
aXMuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwu
Y29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1h
cmsuYyB8IDIgKy0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Nr
bF93YXRlcm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVy
bWFyay5jDQo+IGluZGV4IGY1NjAwZjRiNzc3Mi4uODE3OTM5ZjZkNGRkIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBAQCAtMzI1MSw3
ICszMjUxLDcgQEAgYWRqdXN0X3dtX2xhdGVuY3koc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXksDQo+IMKgCSAqIGFueSB1bmRlcnJ1bi4gSWYgbm90IGFibGUgdG8gZ2V0IERpbW0gaW5mbyBh
c3N1bWUgMTZHQiBkaW1tDQo+IMKgCSAqIHRvIGF2b2lkIGFueSB1bmRlcnJ1bi4NCj4gwqAJICov
DQo+IC0JaWYgKGRyYW1faW5mby0+d21fbHZfMF9hZGp1c3RfbmVlZGVkKQ0KPiArCWlmICghZGlz
cGxheS0+cGxhdGZvcm0uZGcyICYmIGRyYW1faW5mby0+d21fbHZfMF9hZGp1c3RfbmVlZGVkKQ0K
DQpGb3IgRGlzcCB2ZXJzaW9uID49IDEyLCB3bV9sdl8wX2FkanVzdF9uZWVkZWQgaXMgaGFyZCBj
b2RlZCB0byBmYWxzZS4gU28gSSBkb24ndCB0aGluayB0aGlzIGV4cGxpY2l0DQpERzIgY2hlY2sg
aXMgbmVlZGVkIGhlcmUuLiANCg0Kd2l0aCB0aGF0LA0KDQpSZXZpZXdlZC1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCg0KDQo+IMKgCQl3
bVswXSArPSAxOw0KPiDCoH0NCj4gwqANCg0K
