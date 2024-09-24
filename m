Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD5A984615
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 14:45:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CAE810E2B1;
	Tue, 24 Sep 2024 12:45:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l2JNRAg4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517FE10E2B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Sep 2024 12:45:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727181912; x=1758717912;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FmTiXf6FvXKF3jj6XrZgkVd2WSsSf3h7AzsgSR0HMOM=;
 b=l2JNRAg4+GO5KF0RcYpO6Dwf83UHDIHcAZT8tzxtBKLUrHSc2lT+xjaq
 jQXG4iBzk+RAHaMZQUTPA5fZbPKGs7nlatQT2qGCZY5AiXQa9spWL10Q5
 Aksma2vNf1fK8VplWbCtV4VE5C0UWReHFcc+GuKKTyv90G0pJKytSZ1a+
 aF9aG2nasQmyN4LJkPgnjL5qPKhmhF1jgNL4MVHGnZ8WcUDyyRw2icRXh
 sCcAvdpofEzFDkaRaDKRSjXUpKcj3X7B5wVRhD1lLFxCNNYtIpbMvMjFq
 uAnVAOtKfH2rmHkITw06yLkOwTpW258Jrh0IPzhGH+eyeavC++EpJMHjB g==;
X-CSE-ConnectionGUID: qnTFKQdRQASQrzN5aOGVOg==
X-CSE-MsgGUID: ycYS2zj0QJmxYhSWjakzWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="43694230"
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="43694230"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 05:45:12 -0700
X-CSE-ConnectionGUID: ajQ66Oh6QOiwSVHRrTuHXg==
X-CSE-MsgGUID: XJi2/5KiSyuvvcW6O4NuFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,254,1719903600"; d="scan'208";a="71539751"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 05:45:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 05:45:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 05:45:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 05:45:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 05:45:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x54/UFxH0VAr817PRS2aFMXiZWRvQunvC3LmoeLAntECnv/aC55jtTYQ3L646Rj4O+th1lJGSJjcjXXBTWIXQ76/PjZmFRKCB6cF6txpw9Q4fagyL3JI0zZCddiSH9yrAa/sTj5HTz7b0D3YAXsw6tTLprnIUkzkH5kZc21t6iIfqYZKdl1bEUkiXxpB5gjuBAwMdM9CUF7aHzJw60ikpb9Qv7tfSL/96dmM32eE05Fr3YBa0vh4iBvQ1JOFDzWjHLPUuCbHflb/JmXqkc3jCHTTJhSaFiid+x3PI4Pqf8jxrYobe0CpnLNzLVRO7+yQfX+ttxL63yAT+BF+Nhvxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FmTiXf6FvXKF3jj6XrZgkVd2WSsSf3h7AzsgSR0HMOM=;
 b=IyQzXV+UXe1/gyPbeFCzboBnYxIFlaXPMQGzADU7Rl1mURObbFwspDtpex8ignVOLrTjOHSXXavQieXl/fq4DTWh2WgWgT0i/I0tA1RQoc+CwASfwebXFasy7+jxf2MDu/WNRy4XVJmUg0ymkKoH/EeisBgnmEOrk3phyahSORZo1tsbB1kHtmIcZ0J/Ss+jf7eprctBHdCw+60+6N5yrPjxzDPHr5aZIpLuC6fW/PxKBdrA03XgazNj7ZI95a9r0OxxuNb2hMWMQ3PX2cD0toPzVZRS2ulJqLtDQsIrD8NGW7Hy8V8gI1sb83M+8amIH0WSUlCz51GnLmcVeHcUbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH0PR11MB4952.namprd11.prod.outlook.com (2603:10b6:510:40::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 12:45:09 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.7982.022; Tue, 24 Sep 2024
 12:45:09 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/2] drm/i915/psr: Add new SU area calculation helper to
 apply workarounds
Thread-Topic: [PATCH 1/2] drm/i915/psr: Add new SU area calculation helper to
 apply workarounds
Thread-Index: AQHbDXGhaG7WYbUot0eZe+SBAdSsZ7Jm5C6A
Date: Tue, 24 Sep 2024 12:45:09 +0000
Message-ID: <MW4PR11MB7054AC3CE048241F11E3E508EF682@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240923043205.2016070-1-jouni.hogander@intel.com>
 <20240923043205.2016070-2-jouni.hogander@intel.com>
In-Reply-To: <20240923043205.2016070-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH0PR11MB4952:EE_
x-ms-office365-filtering-correlation-id: e0582d85-5405-493e-0742-08dcdc96b948
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TzdtNitJTUdhWGRrSmxGVGtIUm9SUzcwRTl4NG1HVGtsNU44alV6SU9oSld2?=
 =?utf-8?B?V2VxUTIxSG5iMEt0Sjh1cHRFYlBpSHptUDJtMWxlMnZ5SXNwcU40TlBzYXda?=
 =?utf-8?B?ZmVxaFlRTytHdmpqdVFQOHh4WXE5RkxIK0VwNWthU1pGdE1iZU11bStxZTJu?=
 =?utf-8?B?WE1ndWtmQ1FUTk1xU0I5M1pCeHEwZmJQV0E1NlY0alR6ekc2bUcxckt3R3hF?=
 =?utf-8?B?clEvRXVOc1lDMWZKNVd5a015NUNnRklRU29GWjRhREcwTzluVHNuTnBORGZK?=
 =?utf-8?B?cWtjMXpKMzNTVWkyK1dCZkNYbzhSQ3RaUDlnWDVhbHpWTUlLQUtDS1Yvd2xr?=
 =?utf-8?B?a2ZEUXp0ZzFOWkhxUU9LR0ozYTNvb0dUcTZZU1NpWXVkWGRWSWZOblRieGhO?=
 =?utf-8?B?aU53eWFVdW0wWnc4d1pLNkcyY0MvTC93NENTQkpFc3RhckNmcWZ4QlRiemFz?=
 =?utf-8?B?aUZaQmlEb2xqcEVSeGt1OWlvYndTM093eUpjTGpQTHRlbXBkdGg5ZVZUekFZ?=
 =?utf-8?B?bDVLNm55cGdCVXN1WmtldEd4L1p4MTIrZlhDT3RndnJFRVVlSy9mQzJGbVRQ?=
 =?utf-8?B?djF1TElvRjhjNnFza3ZtRzN0UDN3eTM2YkNMZnJsYWRFckh2RzhKalFSa0g2?=
 =?utf-8?B?anpnWnMvRzBJTFFmVjBLZ3pXQ1lDTVhERUhjOWdMTW9zWXl0N1dqNkV2QkJu?=
 =?utf-8?B?UzNqRUR3a2dmQ0UrNCtxSUlnY21jZTRCQS9UWVZvNUtQMkNEbTF5S25wNFVw?=
 =?utf-8?B?OTZlTG4zSzRFNWhaZTd6WGtIQk11UytZYnZqWENHYjE4VW4rbWhMcmpNWS9j?=
 =?utf-8?B?b3hEMk1kTklwZ3J0SGlyekN2b2wveTZxdU83ajBtOXlJa1F0Q1ZocEVMYy9Z?=
 =?utf-8?B?RWFyMHl5cEZWdjNUWXpJUkRZbndyanZabC82Q09PRjVVeU9yRWcrZzQyL0pQ?=
 =?utf-8?B?Z3FNaWpLalM5YlJEalpWV01PQUc1YkprN2FGVHV5WGQ3OGdPRy9WMHFnY2t6?=
 =?utf-8?B?Y05UN2ZKN1MzMHJJeDFhSHo3eWNEOXU4NC9aZEFXRnRZa3oxcW11Tzh1d0tp?=
 =?utf-8?B?UUFSV1lCbEtmaG54TGhJaW00N0p5NENQZTdZOXcyNnpmU0s4NmU3eVI2aVJx?=
 =?utf-8?B?cklSSktOMEVQR1N6ZGR3SUJVUVFTcWU1U0xhOHNxRUUyakhSN054M3pjWlJD?=
 =?utf-8?B?TkVYYjZpRUtFdHluSnJkWUdibFdPRXYvdUFPalBmM05yU2J0YXNPUWpCY2Rk?=
 =?utf-8?B?clJ3NnRyNENEREVlRU9xQkJTVTJNN3B5QWQ4dGRvZHIzeWUzVnB2dUZvTUZN?=
 =?utf-8?B?aEtQK2NCZWZiWjFmYVVSeXl4MjQ0NG9PbWZMNFVZNW9TdjdWWkw2dFNYbmp0?=
 =?utf-8?B?cXRKVnBYVXJXcGRzbDhDNkgxT2tOWnY0V21GRFJ0dkdpUEtJUEsxZStuOHd3?=
 =?utf-8?B?WUdGTFM1MTZBcVBHMFpGcnFwMkc5Q3V1bTkvSWROTzVWSU9pWGNuS2ZKdzBm?=
 =?utf-8?B?ait2TTdaSkxzZnVab1ExUmtnclhPUlFvcks1Q0Z1ZitGNGtqWXB3REl6MFdU?=
 =?utf-8?B?cjQxbEtieXBRazlvRjRmNnpLdHhINGZBNjY5YnJoSmdPcVFEQ0hPUWFYcVZ0?=
 =?utf-8?B?ZVFqWjdvQmxvM2JZU1FCeVRhSnA5T3BTcmowR3RsKzE0SzlxUGNWNWFFRnlY?=
 =?utf-8?B?aEJTdG1sdWdUbXJxWmlxZDZqUldHTGZaVmVZbk5VRyszVzZHTXg3eE9oTHgv?=
 =?utf-8?B?NUlTUU1walBKcHRWdDVvdWswZWM4NjdUdW9aZmU1SnEyQy9rVW00OUVIMXFH?=
 =?utf-8?B?K3gzaVVtOUs5TzNwdW5xaVNZWHdCWmFoa2JGRDh6cjVDNVdmT0U0b3lBdlVH?=
 =?utf-8?B?VFBPZVBVMnE1NmZTU0djRWc2QWVYSjJGaWdET1hNbjEwZVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OGM4WFZsanY0SGF3SUNGR012WThpK0F2SnNZQlpBQStGRXNEa0VhT0p5ZjJq?=
 =?utf-8?B?aDRtcXArcng0WVBwc29hMGc4RjhyaFB2UTZET2plblgvTmZLd1lLSXMwVUkv?=
 =?utf-8?B?b2Rab1NXMDNKOHc4RUs5SjNidlZMVUNjUVpiRmJOVGNxRmd0cXpOUWErVG84?=
 =?utf-8?B?VHduYmZ1ZmdhMlJELzJjZVNLaHFoZUdJT1Y5ekhsU1dGa3diOUtmTHJxdENE?=
 =?utf-8?B?eU01RGZhU21DaXArQ01yK2M2UXNFV1NIQ045UVpiQUw0YkhXWWcvYmltWXVV?=
 =?utf-8?B?K0lsRUxkVDgyVE1mOEFoUUJTcjUzOEFJYk1aa0JPT3orKzlpZ2wxZVZleUV3?=
 =?utf-8?B?TDdJQXduNlRsOTAreFArdDJWL2VJUTg2cTFNZG1BTmxpVmwyb1hLeGdFQjRJ?=
 =?utf-8?B?YWhKOEhGWlcySWhhTDI3dlhZN2xIenpOdkFXRkxMVnpRYzA4NkMvNDVhZUh0?=
 =?utf-8?B?WFlXSGRSRE9SaGNRRFdBcnFoUHJLU2RzU3dMeVh3R0VJNDZyU1Zma1oxUnB5?=
 =?utf-8?B?eGJzY3Jna0syT1d4UGJlUVNWNS92N3VYWkNtR2FNRjgzYlV4Ui9kcEdBYnBD?=
 =?utf-8?B?WFhkT1ZGUmd1TDMwSDI2bzdISXNZd2VHbExJbXJyaWhEOFZNYXN3SGhrdVQ4?=
 =?utf-8?B?RHA3Nks0Yi9PN2xoV0pWa3pwci9oY3lodTVqSG1uNWdMc0RiS1l5bStzOTBK?=
 =?utf-8?B?dTE2NlhPSjVDK0hxQTRqZXdnb01ZNEV3NnhGUEgvaWhPa2ZMUjRRVyt5QnZX?=
 =?utf-8?B?bGt1N240dkVvUktjR29ZbC96LzhJS2xNcjMyMXJHZ2U5aDJoTUJrZi80YVZm?=
 =?utf-8?B?a2owcjZGV3JUOTlxSytXUTRmaUYvK3hRQlorYmE2NjQ3Z0VaWGJwbDd3c0p4?=
 =?utf-8?B?S3NDV2NQYUdobUNRYnV4YmJvdnJ1eGVNOGNLRklzOWJzRFNpWGNzL0xVcVJL?=
 =?utf-8?B?WmIvekRuN0ZERVBBSU1DemZFd2JibS9zdFZnWk1MTDYrVFlXSlExWHRRUjlw?=
 =?utf-8?B?dTlmbHlwV1g5elN3cVdVb1doZUpBaHB3c3NVL25zSW1pREtnazA3S1BmMjZD?=
 =?utf-8?B?blJqUUFzaElucCtpRGUvZEYvQ0p3cDNFNWU5NWsvSW4yK1Fvc2tJZFdWVGhl?=
 =?utf-8?B?dWIrN0YzWE9mYjErLzlGN1h0REY2aTI3ZzNhbDJod2Rrc2s1b1BhWVhOcW1L?=
 =?utf-8?B?bTIxS2k5TzkwRmNPOU1GR0cxSnRlTUFob3dvK1Fuc1R6SXZwL0UzZFZQbDUz?=
 =?utf-8?B?T24rN0tLQThhUm43VmI2YVpMM0FmT05ObzY4dE9YWitHdWphRW1UbFNPTGJk?=
 =?utf-8?B?dm9EQ0lKdkZyanZSSEF0ZnhtL29LOVFUcXMyVUUyTWEraGhHZ1M3QjBhZ0Na?=
 =?utf-8?B?NHJaZVZXOTRrNTRsY2gyMWtuUUYrSFVFeEJvK2krNEdRbnZmamxGZGZCZ1Vt?=
 =?utf-8?B?d0g3WTQ0dWo1UVVERlA2Y1l2S3lrVHV2R3htZTRUUWlYdDhMZFF5S1JQS2w5?=
 =?utf-8?B?OTNLNXJhemg3NFc4UDZudXR2VzZqUXVjRVJrd1BxRklHbDlDdEdPWEkrcFFD?=
 =?utf-8?B?RXNJOUJXSjZKT2FSNlVLNzhTdWM4UUV6aGYwNmJlelR6SDVjUWhhOWtBRjkv?=
 =?utf-8?B?dUM2eGhYcVNoNFVDOUMxNEMwOEI1ekhXYXUrK0hVcUZXNld5R1VEbi9RVHVJ?=
 =?utf-8?B?Y2Fodm9NaWwxYkl6SDgwUlhkc3JzTW00b0RNb09IdVQ2eGQrUHgxbFlQRThC?=
 =?utf-8?B?SjdJZEIvRXFOQ0plaTNkOXpoZzRDN3BDTUtPVXBDTGp6S2dkWU9oRFA4Q1RN?=
 =?utf-8?B?Z1dLaGx4amlJeDJCZXpvQm5KRmcvUUsxRFYwVG12Z2g1L0YvRmg4Uk9BaXBG?=
 =?utf-8?B?NU00MzRyZWtrcU4vdDVVTkJTU3U3M0JsTUFGN0VGL0FFZ1BRN0ZWTFNRWFRu?=
 =?utf-8?B?Qm0rUHdmblpLNkxYOWV6c0FOK3NmNmNtckdPajVRWXNNOE5reDlLQURwZTFq?=
 =?utf-8?B?U2FsVmsxbjZxOEpBUTFLUnBCbDFnM3cyTDVwMkM3STBnaW5HRkJockd2cjcy?=
 =?utf-8?B?VFRiR0tKUlB1S1F3dE5naENld3ZWOEtFN0NrSk5DMlZKSHRNTDRtbS84d212?=
 =?utf-8?Q?acvKtZR1QNW/IZCKRaEYvF4Cw?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0582d85-5405-493e-0742-08dcdc96b948
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Sep 2024 12:45:09.1304 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zkJN9FTENhMtiaiGRPB54OvqYb/v+sTbKHv0GgTsS9/I/W5t/mAwauGgMl0CmOqq2uXxp6LlaF7ik9jLwLN0lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4952
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pDQo+IEjD
tmdhbmRlcg0KPiBTZW50OiBNb25kYXksIDIzIFNlcHRlbWJlciAyMDI0IDcuMzINCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggMS8yXSBkcm0vaTkxNS9w
c3I6IEFkZCBuZXcgU1UgYXJlYSBjYWxjdWxhdGlvbiBoZWxwZXIgdG8gYXBwbHkNCj4gd29ya2Fy
b3VuZHMNCj4gDQo+IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZSBpcyBhbHJlYWR5IHF1aXRl
IGxvbmcgZnVuY3Rpb24uIE5vdyB3ZSBhcmUgYWJvdXQgdG8NCj4gYWRkIG9uZSBtb3JlIEhXIHdv
cmthcm91bmQuIExldCdzIHNwbGl0IGFwcGx5aW5nIHdvcmthcm91bmRzIHRvIHNlbGVjdGl2ZQ0K
PiB1cGRhdGUgYXJlYSBpbnRvIGEgc2VwYXJhdGUgZnVuY3Rpb24uDQo+IA0KDQpSZXZpZXdlZC1i
eTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5
OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMjIgKysrKysrKysrKysr
KysrLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKyksIDcgZGVsZXRp
b25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gaW5kZXggNWIzNTVkMGEzNTY1Mi4uZjdkZmQ5NDM1YjU4OSAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0yNDg4LDExICsyNDg4LDI0IEBA
IHN0YXRpYyBib29sDQo+IHBzcjJfc2VsX2ZldGNoX3BpcGVfc3RhdGVfc3VwcG9ydGVkKGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IA0K
PiArc3RhdGljIHZvaWQNCj4gK2ludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91bmRzKHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICsqY3J0Y19zdGF0ZSkgew0KPiArCXN0cnVjdCBpbnRl
bF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjLT5kZXYpOw0KPiArDQo+ICsJLyogV2FfMTQwMTQ5NzE0OTIgKi8NCj4gKwlpZiAoIWNydGNf
c3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgJiYNCj4gKwkgICAgKChJU19ESVNQTEFZX1ZFUl9TVEVQ
KGRpc3BsYXksIElQX1ZFUigxNCwgMCksIFNURVBfQTAsIFNURVBfQjApIHx8DQo+ICsJICAgICAg
SVNfQUxERVJMQUtFX1AoaTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSkgJiYNCj4gKwkgICAg
Y3J0Y19zdGF0ZS0+c3BsaXR0ZXIuZW5hYmxlKQ0KPiArCQljcnRjX3N0YXRlLT5wc3IyX3N1X2Fy
ZWEueTEgPSAwOw0KPiArfQ0KPiArDQo+ICBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRl
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQkJCXN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9f
aW50ZWxfZGlzcGxheShzdGF0ZSk7DQo+IC0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9w
cml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlID0NCj4gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0ZShzdGF0
ZSwgY3J0Yyk7DQo+ICAJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpuZXdfcGxhbmVfc3RhdGUs
ICpvbGRfcGxhbmVfc3RhdGU7DQo+ICAJc3RydWN0IGludGVsX3BsYW5lICpwbGFuZTsNCj4gQEAg
LTI1OTcsMTIgKzI2MTAsNyBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCWlmIChmdWxsX3VwZGF0ZSkNCj4g
IAkJZ290byBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsNCj4gDQo+IC0JLyogV2FfMTQwMTQ5NzE0
OTIgKi8NCj4gLQlpZiAoIWNydGNfc3RhdGUtPmhhc19wYW5lbF9yZXBsYXkgJiYNCj4gLQkgICAg
KChJU19ESVNQTEFZX1ZFUl9TVEVQKGRpc3BsYXksIElQX1ZFUigxNCwgMCksIFNURVBfQTAsIFNU
RVBfQjApIHx8DQo+IC0JICAgICAgSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpIHx8IElTX1RJR0VS
TEFLRShkZXZfcHJpdikpKSAmJg0KPiAtCSAgICBjcnRjX3N0YXRlLT5zcGxpdHRlci5lbmFibGUp
DQo+IC0JCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9IDA7DQo+ICsJaW50ZWxfcHNyX2Fw
cGx5X3N1X2FyZWFfd29ya2Fyb3VuZHMoY3J0Y19zdGF0ZSk7DQo+IA0KPiAgCXJldCA9IGRybV9h
dG9taWNfYWRkX2FmZmVjdGVkX3BsYW5lcygmc3RhdGUtPmJhc2UsICZjcnRjLT5iYXNlKTsNCj4g
IAlpZiAocmV0KQ0KPiAtLQ0KPiAyLjM0LjENCg0K
