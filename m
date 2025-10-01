Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34D7BAFF27
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 12:01:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A77910E366;
	Wed,  1 Oct 2025 10:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWbgwmej";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC3EC10E366;
 Wed,  1 Oct 2025 10:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759312899; x=1790848899;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xvJeTuJh0NbUNZHfiotIPgKCgplfsUZrO5y7SulyIb0=;
 b=WWbgwmej7Wpok4QW7uMz+gBQ38ChBODA8Coy3Wwcm+PiIUEv+q03ceub
 aMXloIwKk1IT5Ptt2BTdh7zu41+3AYc220JUo9Kcy7Eevmo8BpLzTUfzn
 OohdD/8SpM/pK1/GJtHPsoY+xVHYt7sppb2q5vNP4I3HTjblRxObH+6FE
 UIB9sG3zzgBLVkxcELCoNkQkgheRS+1fhwGL92qVgXJp707utMeuA1VeE
 no7w8gT6NQ1EeXKvX0J+DClGF1ACZvjIk22i5C9512O3WFffjXFnNDYvJ
 Edg0yoGi9UGYhCaAyJDNoV41ckccN1KmwfGdqWHTNvEDD2b8ZCW3UYbzG Q==;
X-CSE-ConnectionGUID: At/jHUG6QHyXpimMxGtGMA==
X-CSE-MsgGUID: 9Hj/T+AoRwyw19pTt6Ekew==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="64202490"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="64202490"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:01:38 -0700
X-CSE-ConnectionGUID: ARHiCb7dSI+ehi52zTGmEg==
X-CSE-MsgGUID: C+2MBjh4RtGUjPMXoV4l/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183934551"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:01:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:01:37 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 03:01:37 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:01:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZZjoqwOTjBSoK79kPluOD3gPkkhwR7YYX+DMbtF1p0S05RWwqIlJn1us6Xw3lozrdEqkRlwoLVSwioJV8M4msKr1/3MYg5/6AhCmhcTJtlYPDH0A+opmfn4AWaOoOoXZYlNf/83vbxZr7Pi1BwriA4LLnc/6Re8va2gOp6xLr9+UUdNFr6gwhua7fvh991ju51/0EOvMuJLCPs785p4R0b5ZJVF1fH8cBXOumY5PL7x0WsyUfo3Hl8HphztUuGsQNj0+tqYNIJRH/yFnLD7y2yqxCxzGoHYwndcrD1Ywi9FV7y1q2v046cM1Uc1jVdmh2gMszSXHSoAN9e1B+b+wBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvJeTuJh0NbUNZHfiotIPgKCgplfsUZrO5y7SulyIb0=;
 b=QcC8DY5mCuArXjOvVK+NAjjb5LRu+nhsvy5qTgUzvlJwfm37/pIZ94R7ENB2nkZp6AOPNruTzQFZ7vI3D4GGkYGARwc8OqTR4pdjIfsMKCQ1QTiF2NiFB+62kJYyXZftSnxOdeeyufAYNp89HtnJVItUXGgrCE+NA/gz7ldBdID1NdqPKnLwQr5ZbrYv/mjpvjlJ9Eq56UHMMsA38hKylLW6MFaDmmn0FybXUV6Mt4C0+FYPRwwVGSZytycJ6IyBjnyfjkOExOGy4sW3FPp+vX+OzSejR0XwEgWoBh/BRJmQMi90L4iG5pg9ENyrXUZNvJtcGPrnvsI6pwhT94fLSA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SJ0PR11MB6814.namprd11.prod.outlook.com
 (2603:10b6:a03:483::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.17; Wed, 1 Oct
 2025 10:01:29 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%8]) with mapi id 15.20.9115.020; Wed, 1 Oct 2025
 10:01:29 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, "Jadav, Raag"
 <raag.jadav@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: RE: [RFC PATCH 01/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE field macros
Thread-Topic: [RFC PATCH 01/39] drm/i915/display: Sanitize
 PHY_C20_VDR_CUSTOM_SERDES_RATE/DP_RATE field macros
Thread-Index: AQHcMq7TY15FC5wVNUShqfNGIxIKD7Ss/AYAgAABlICAABCjgIAAAJGA
Date: Wed, 1 Oct 2025 10:01:29 +0000
Message-ID: <DS4PPF69154114FC3C0F295CBBA29D60DFEEFE6A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-2-mika.kahola@intel.com>
 <2112bdfc2a73a2e90b393871d31fc24cbb27eaac@intel.com>
 <aNztFxlDWeuc13nn@black.igk.intel.com>
 <da513f4b6dfc42b4e85de69ce25666d0b1447c73@intel.com>
In-Reply-To: <da513f4b6dfc42b4e85de69ce25666d0b1447c73@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SJ0PR11MB6814:EE_
x-ms-office365-filtering-correlation-id: 2aa74f48-541b-4a38-50d9-08de00d17de8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?b3dnS3M4VUxWM1poYVJ4UmQ0N1g2eXg4WUZOd3RLQmdqT25wSFVKQ1VHV05o?=
 =?utf-8?B?VDczT2VYWFdlSWc1ZmsvT3JPOGpMczBVdGtiVmVseU1TQW1DRHdkR05zOVUv?=
 =?utf-8?B?aVN4U3JUWktzR0RlbXU0cjdadDFCTzVLUFNLYlVCeVN0NjN4M2FaR0hpWEJR?=
 =?utf-8?B?OVh1UXl6cVk5U2tpOU5iaTdJVlo5Q0FtdHFMMU5QdEJaNHRsMmRpMEN0UkYz?=
 =?utf-8?B?b00rTlRWNGQ4dTloa1FHbzZkcTRPTXZIaW03WE16M3ZiK0VyLzE4TU5iMXdK?=
 =?utf-8?B?clpoUFJaVkFqK1JDVk15K1BBWGlCRTJqWkZucWNPNFVGZWRKeDZ2bldKNGpn?=
 =?utf-8?B?SHRuSHFYM0hNRjRwZ3pHbEJNcThHZjg0a211QlNVNGpKS0duU3dleEcrcHQ3?=
 =?utf-8?B?OHE0RGVkTmhyYUl6RUZsYVNrdEtVK1B2WjhJY3h5WUR6eFh6QXFPSHVlSkNz?=
 =?utf-8?B?WUI2dGlTWXZRTEloMzI0VW9KazNnVWdKNlRJa01LN1dPY251Q1UxWHdabVk2?=
 =?utf-8?B?RUN4QnVDbVVGOS9jSjVzN0xGYzB5QkgzdEhHM0V4MHZaT1EreVAyYmpPVlAv?=
 =?utf-8?B?U3NzQ3Zrd05XSVF0Tk0yL1hZemVvOW1TRmFDbWJFNS9DSjBJcUVIOHh2SE9o?=
 =?utf-8?B?Vi9pTURFYUhXaks0VGRjcHV6K3FhUVFDaStXak5JcXordzRrbjdkVTVZL3cr?=
 =?utf-8?B?eFVMcEM1MWF2SjFvWTNnVDJBUmFnTHl5VVlEWkk0aHRnZEpvQ1B0ckxHK2Ru?=
 =?utf-8?B?UGphTGVYU2RTRkJyUDJ0UWhKM3ZJRFpwVkwwUnJuMmIwelFVZlJTMFo4a3BX?=
 =?utf-8?B?OW9neWRGQ3ZuL2hoQmYxMU4veStrRHd1Z3lBU2EzRTRNUi9pL2ZHUE9LSWt3?=
 =?utf-8?B?ekVZWFlWQVorT04rUm5KU3c4WG1wWWplV2YzTzJHdWpSZGE2L1BRNVUzMXdI?=
 =?utf-8?B?TVV2aHhNeVltYzlLZm5KOUxjY3c3K05ENXVhM3RKbnBKMU1tN01wUkdRQWgw?=
 =?utf-8?B?UXJWZWJ0S0FuYzlDK0llelowYmJod0JJODFYNVdvVWVuYjdTZUtCd0VvcUwx?=
 =?utf-8?B?R0lrd051SGROQWRrc2V6dmt3R0ZETHJLb042VHZpaXp2TkVNQ2QxUnZRSXJD?=
 =?utf-8?B?NFlLOVl1WWs0QjFpLy9PeThCRGhkSWQrRXcvbnRoRkJJdS9NREdUUGRZSmZI?=
 =?utf-8?B?R2NZZ2x0L0MrbWRsZll3YmFKbEdGcmIrMHloOS9XWTI2YXp2SDVGZVhrbEJP?=
 =?utf-8?B?dkI1VVcrMzU5cVF1QjUvc29kd0E1elN3dWZlV21lcmJBOHhLMTJmb29EY0tl?=
 =?utf-8?B?b2JRaE95YnR5VDJMUUdDK2NsUzNrRmZPaU9lc3NjZk5ZQmZ1anBneGp4elRR?=
 =?utf-8?B?a0pRblZjZlZRZE5iMDUzcW9MdG1CV0JpaStpVXI2ZVViejg3dEJaalB4YkJa?=
 =?utf-8?B?VTJqemR6V3BaNmRJU3VHbUVNSjEwM0ZZb1ZzMXpnY3I5eTdWZzNZYXNSR1A0?=
 =?utf-8?B?S3J3Rlk0QURieXRvdzV1SEZ4c1liT1NIejY4UmFXbEhDSUNHQXJQYkxlenBE?=
 =?utf-8?B?UUFuTk1iZWk3SXNvVW9qaFMvMjB5VVBjRVVCRkRGcDQ2NVhDeGxHL2M4d25z?=
 =?utf-8?B?Ykd4elV6SVFIS3JxUFZDTEJndjNKdjhwMkhrRXgxTWJrSFRreEEwbU1xeGhD?=
 =?utf-8?B?SjNDTUpOYWlkRjBVZnpKU3o2UG0zaENWUVpoaUtmemNxV0h3bmk0MkJhSG14?=
 =?utf-8?B?bWJ0b0ZHOUM1d0NUL2E5UVhQZGQzVFprRG9lZTQ0VkdGN0s5RjRKVlBKalE1?=
 =?utf-8?B?NDg0NUpJSkFrK2R3aWJCT0k5ajIwdDFGVzNIVmg4TnpKOGFKcDdLb3RSSTcr?=
 =?utf-8?B?UVZXalhaUkhKbE96L0U3VDQ4TElUSWM1RS9vRDhZZWE4MXp5QjZKamZMRFk1?=
 =?utf-8?B?azBVY3hvaDcwOHNxek53NnJRYXYvdW1FZVRXMW45dGJYY1ZEVWozczZ2bE5I?=
 =?utf-8?B?UnlCTmxrRGFBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N0gzOXMvb3hlU2Z2VXZEZnA5WkIxZ3c0OEpDOXd4NzkvUVFFTHFLSVQ0RHNX?=
 =?utf-8?B?MXIxVjdOZTRMRGJyU2JSL3htNGNSY3R3Qndmd2tLUnh3VGNEcUdPSzRDVE5j?=
 =?utf-8?B?LzVjVWlKK2NTQWlrNE1SWnIxSVhKZ1F4K0pzVWZaNUN2TTFzTlltVHRFVkZr?=
 =?utf-8?B?Uk9jTURSaU1SRFJsajNUSDNtSWNxZ1U1L0NMUkpoM1A1N1hwdWFLNEo4Q2Uz?=
 =?utf-8?B?bEN1QXlIYS9NMThuRlRDa01va1dteGl5SllZQzliRVloS0VIT0hKVXFCYnpa?=
 =?utf-8?B?L3hLWklwNFA5STZoSWloWnBpS0M0ZjhtcWhPZVZMaFF2SUVlK1JTeVJtNlo3?=
 =?utf-8?B?cHU4blFVWGYzTWhsM2I3cmJzellQazd6eVZpQXoxWW8wTHpvalJWUVpVVTk5?=
 =?utf-8?B?d1llQmdKNjJGM1VCYlVueGlsYldhdHU0c29oMGl4U3ZRdDU5dkZ5OWFBTEd6?=
 =?utf-8?B?RU9uM2xwelB1S2p3RmpQSUxobjJzQWNCdDI1SGNCaHE0dzVOTmY1eUVEVWpi?=
 =?utf-8?B?WXlObmM5aldkVkR0bzRxa0RWcVZCYmUyYi9HbTdxeDVJc2VwWW03U2tLblYr?=
 =?utf-8?B?eFdCNlZ5WDVNcVAyUHBoazRRWVlQaGlyZmprbDUzZ2VSa1lhZUJQVUNTaWpJ?=
 =?utf-8?B?eHloQVNxMlV5OHZsQ01TcDd5ZXVkS0VSbGdkWWd3d1Rxc2twb3piNmtiZ2Y5?=
 =?utf-8?B?eWExNFF3UVgzOUh5cDZnSzZrcDZRbDdHVzllZ0MvR0FQTzlsR1lJZndUbGFa?=
 =?utf-8?B?YlRKRUx5N2lYT05qbDRZaUJNZHd2TEdXMkYxYkozTk0zdWNqVXlwYjJSTldo?=
 =?utf-8?B?SmxVbEVmQXZwTzFvRWI4SVplQWVBOTUyaHYyeTlEcGtqZnRlNHpyK2RFSVFG?=
 =?utf-8?B?cDMrOUZBZGFQa2t3Rnp0Wkx4UFVxVWk2MEl0dGx6SldreW5ab1FLazJEQWhU?=
 =?utf-8?B?ODJIMWZoZnl2UTRWSnA0d0ZsZXdOY2t1OWNEemZoRVVzVDE0cEUyMjgyN0o1?=
 =?utf-8?B?ZWpCS01FN25Kd0wveG9oeng1U2VmQzVlZis2cGdJRCtwOFU0UTI0WTFoeTRn?=
 =?utf-8?B?Z25pbEhnUEx4dHpJMUszcGdwOXpJMzBwbGo0RVZ4QmVJT3pQdmVkTVdhTm9z?=
 =?utf-8?B?UHBhSzJsZFA2T1p0dDFxN1JxVUJ1SENTUlAvbWFsQXRmZHpRdFVBUGhXYS83?=
 =?utf-8?B?eTFuZEJibDBFVVV1WWNUcExlQjBpeFhPdHB5UWZ2OTRrS1RObS9UTkpZekZX?=
 =?utf-8?B?RldIRHVENk1Qd1RLWlZNUm8rNG0rM3E2VlN2MGlmT080N0FGMmtGRFR6WFND?=
 =?utf-8?B?dHJnSXZDTWtlV01GMXlqS1o5M1ZSVEF5ekdxdmN4eUl6aDhLK3QxRis1VWY4?=
 =?utf-8?B?MUJRTUllSFFUZ1FQZldtTVBPakVPQllVcGFBQndlR2VDcEdhQytoUWlnWlF3?=
 =?utf-8?B?UHBmRmszNVVyTTF4NmJqRUdSUDNuTFV0RlY4R3VNdWJuOXBQa3UrdXo0aWNP?=
 =?utf-8?B?d3greU1kUnFTQ3BpQ2dHOTYzOUNBVm03cHIwL0ZlenBJV0NRdUF6MVVEMU4z?=
 =?utf-8?B?Y1NrU25FUTVBK1hNcW1nK0FWZklvaWtRUDF2cU5mT0dTOXVCZ0M2Uk1NUld6?=
 =?utf-8?B?b1B0dE5XYzFVNkRyRTliKzFIVmNnN2pubmg4dzRJZU1NTFAwSlRoVjM2d0gz?=
 =?utf-8?B?YXk5TktDd2JGSjFEbGNTTXNZbHJaVkJ5eCt5T2p1dGpxU0Q2am9ZSldMZDBl?=
 =?utf-8?B?cGRQSTlzaDF6d2NobVQ1c1ptcWdGZnBBc3BHZjdBTEs1WTdxYlhOaDUwQ0JZ?=
 =?utf-8?B?b2t4WG5vOVl2RFk2eFh1aHZKcHpTMG1OOEQ5cXNTaWJvSTIvQVN6VGpvREhT?=
 =?utf-8?B?cjNzVFpkSHdzT2NKNE51WFFWb0pIOEFub1kycWhrbUwzNy9JY3RkTlpqOEZN?=
 =?utf-8?B?Y0FESkFRWW1ZSCtERUVaa1NxZWFBNTRNYzBibERURm1TbGJiTG8weUV4WVJJ?=
 =?utf-8?B?VkdyTnA0S0pRaU0zVnZNZ2pSaTF1SFMzNUhzM1A3UDIzVzJBdm5KQ203bWx5?=
 =?utf-8?B?cEVZUDFoWkUwSXcwVzZIamRXajdnY2pRcDB4NXF6Vi93Q000Y0kvMXVMRktL?=
 =?utf-8?Q?Zm3leCHpOIBmfHW3W0hkMSG13?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa74f48-541b-4a38-50d9-08de00d17de8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 10:01:29.3094 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Jg4MfXZAuXS18SlfLMcCp1KGyz8zP//wGfqnORex5+ULOdqu48KuQ03k6m5ypSA4iEOCNamZ4dbwBwFflDZZGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6814
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDEgT2N0b2JlciAyMDI1
IDEyLjU4DQo+IFRvOiBKYWRhdiwgUmFhZyA8cmFhZy5qYWRhdkBpbnRlbC5jb20+DQo+IENjOiBL
YWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgRGVhaywgSW1yZQ0K
PiA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtSRkMgUEFUQ0ggMDEvMzld
IGRybS9pOTE1L2Rpc3BsYXk6IFNhbml0aXplIFBIWV9DMjBfVkRSX0NVU1RPTV9TRVJERVNfUkFU
RS9EUF9SQVRFIGZpZWxkIG1hY3Jvcw0KPiANCj4gT24gV2VkLCAwMSBPY3QgMjAyNSwgUmFhZyBK
YWRhdiA8cmFhZy5qYWRhdkBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IE9uIFdlZCwgT2N0IDAxLCAy
MDI1IGF0IDExOjUyOjIwQU0gKzAzMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+PiBPbiBXZWQs
IDAxIE9jdCAyMDI1LCBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPiB3cm90ZToN
Cj4gPj4gPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
ID4+DQo+ID4+IFlvdSBuZWVkIHRvIGFkZCB5b3VyIFNpZ25lZC1vZmYtYnkgd2hlbiBzZW5kaW5n
IHNvbWVvbmUgZWxzZSdzIHBhdGNoZXMuDQo+ID4NCj4gPiBJc24ndCB0aGlzIG9ubHkgd2hlbiB0
aGUgc3VibWl0dGVyIGhhcyBtYWRlIGFkanVzdG1lbnRzIHRvIG9yaWdpbmFsbHkNCj4gPiBhdXRo
b3JlZCBjb2RlPw0KPiANCj4gTm8uIFlvdSAqYWx3YXlzKiBuZWVkIHRvIGFkZCB5b3VyIFNpZ25l
ZC1vZmYtYnkgd2hlbiBjb250cmlidXRpbmcgdG8gdGhlIGtlcm5lbCwgcmVnYXJkbGVzcyBvZiB3
aGV0aGVyIHlvdSB3ZXJlIGludm9sdmVkIGluIHRoZQ0KPiBkZXZlbG9wbWVudCBvZiB0aGUgcGF0
Y2gsIG9yIGp1c3QgaGFuZGxpbmcgYW5kIHRyYW5zcG9ydGluZyB0aGUgcGF0Y2guIFNlZSAoYykg
aW4gWzFdLg0KDQpUaGFua3MgSmFuaSBmb3IgYSBxdWljayByZXZpZXcgYW5kIGNvbW1lbnRzLiBJ
IHdpbGwgYWRkIHRob3NlIG1pc3Npbmcgc2lnbmVkLW9mZi1ieXMgb24gcmV2aXNpb24gMiBhcyBp
bml0aWFsIGZlZWRiYWNrIHN1Z2dlc3RzIHRoYXQgd2UgbmVlZCBvbmUuDQoNCkNoZWVycywNCk1p
a2ENCg0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+IFsxXSBodHRwczovL2RvY3Mu
a2VybmVsLm9yZy9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5odG1sI2RldmVsb3Blci1zLWNl
cnRpZmljYXRlLW9mLW9yaWdpbi0xLTENCj4gDQo+IA0KPiAtLQ0KPiBKYW5pIE5pa3VsYSwgSW50
ZWwNCg==
