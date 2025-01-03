Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B76A5A00526
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 08:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E55010E814;
	Fri,  3 Jan 2025 07:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JiWX6TcY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66E4610E814
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 07:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735889747; x=1767425747;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sxVxqftN6ZuC9iHiaPXKG8NyGaYDaSlCKSGBLNec2eg=;
 b=JiWX6TcY8gCnZI6xYyfcfFQwxH7SO6zlxuOlV91ZXDGfirNnVYqRxYjS
 WOmzr6v0K3p7zlY/Z+0uHts1U1rfxX3l7JfGN1OsgGCV9Rokjrrrxn6EI
 Jh3FYeCs5S83dSVEkwC6bbRPBXNI8HbodpCQssp1TjQS1ANcZkncZJY+f
 sq5g6gumkEifzvi8ygVkJA4OUqoZgO5eHHfOLZ4eGVjWctM1+HiQpkDUD
 psYp40npEkUxlH1cY8xX6F4uWyrr4qhSypUIt+C1cOhi6y+TvlZxsJAxM
 GDANZN7QecskSCHux3/CNZ2siTYXlDfukxexAqmGsDOihrVLqJDno9NJE A==;
X-CSE-ConnectionGUID: Vnx3PSQ2S4Giu0A6oMvM8g==
X-CSE-MsgGUID: ahr+ZoWzTSeJUr8Ibi/cgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11303"; a="38962827"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="38962827"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 23:35:47 -0800
X-CSE-ConnectionGUID: c6JhvPn2TtmuR/lP00JbwA==
X-CSE-MsgGUID: HXt0guSgQ7WBr0B+NyYvbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101915535"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Jan 2025 23:35:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 2 Jan 2025 23:35:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 2 Jan 2025 23:35:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 2 Jan 2025 23:35:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iqfHM1COPE7ebpZqCnR1UPZcsOwL1uN99OomeyP7YdFM7QOmqpaNDHsanlhCqokwjEzAqQVjMj+F94epYe0Cij9JjsW5uygvZBf50vJ2bn3OXhxP76WEOhEocefkoZPGsIHDD92dGo+bRnWbb5Ok1odViXcKYpeuhhDu7pXxfowVdMlhrKaoLqufywNwgo+nVP6NNeAUC7iLpa3AbEXM0hx0G/84qSD3U3htfdxV+pCySjFtjoCcOJXWmMFZpzMOkQKTQxjZb6F7la1s8aHealH6hxsGp4/XRapFsqhVGqsMR54FuRbeCdNkil5YmN58T8NyMzuXVRvT8D3ifebkzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxVxqftN6ZuC9iHiaPXKG8NyGaYDaSlCKSGBLNec2eg=;
 b=NqBxtb/YBA8VKO45Ldek/NaPmnDFwmEyZmuIzfRLF38okxO5uQKulBbvnxsN+OyuN8loVcEWmcx8A53AzHAv7LTpol5L7Jxqd0uxvQQFBQwVlDQqorELS+lk2QmFajFOLGhq/I7NB4XqG/K0jSfFD+AuwpXjd566sVrAQ+AJk9/Pm8hLL48wOtI8+6fBDNkgEsdIYvx+QSZYO3Njg8etrlOrTdYA2Ay3kQjHnRDrpv/o5wcGnma9C+8SHHVJIaioNIfH9ML+MbFC51q8LQsp99mHkCJExR9X7xdo2+RAli0o29BEKMeFehtD+IcJM4kxZKE8xk46VtK+0Sf3V783+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by SA3PR11MB7464.namprd11.prod.outlook.com (2603:10b6:806:31b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.22; Fri, 3 Jan
 2025 07:35:34 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::7f3a:914e:c90e:34fb%5]) with mapi id 15.20.8314.013; Fri, 3 Jan 2025
 07:35:34 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CVUlMRDogZmFpbHVyZSBmb3IgUmV2ZXJ0ICJkcm0v?=
 =?utf-8?B?aTkxNS9oZGNwOiBEb24ndCBlbmFibGUgSERDUDEuNCBkaXJlY3RseSBmcm9t?=
 =?utf-8?Q?_check=5Flink"?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciBSZXZlcnQgImRybS9pOTE1?=
 =?utf-8?B?L2hkY3A6IERvbid0IGVuYWJsZSBIRENQMS40IGRpcmVjdGx5IGZyb20gY2hl?=
 =?utf-8?Q?ck=5Flink"?=
Thread-Index: AQHbUp8+wPgpg9vxs0+6kKaPrDPzmLMEvRLQ
Date: Fri, 3 Jan 2025 07:35:34 +0000
Message-ID: <IA1PR11MB62662E3B33980D62B023353DE2152@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20241220050153.3053540-1-suraj.kandpal@intel.com>
 <173467214356.669528.7955072928099578035@b555e5b46a47>
In-Reply-To: <173467214356.669528.7955072928099578035@b555e5b46a47>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|SA3PR11MB7464:EE_
x-ms-office365-filtering-correlation-id: 9b02cf24-8079-4b39-cead-08dd2bc935c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?eFJFNzRZbmdSUmhEdlZrRGcvRHI0ckEweXJSSmRzMUhZN3JEU2k2clJoU0M2?=
 =?utf-8?B?Vk0zMk4xVmNwVXBTTWFkYlV0NlZsVDFqZ1NvY0xiNmhPbkRTc21UemxXZWs3?=
 =?utf-8?B?ZFRWc2tQaU1oem04WFR4K2lEelR4YXZxM2N3dnJnRFdGdDk4K2lsNWNXSGl2?=
 =?utf-8?B?dS9IMzNLSEtVOGtiRXcrWkZ6ZWhFaFY1VFBVOEZ6VitqaEtlY1dJYXNoNUpF?=
 =?utf-8?B?YUxEV3dEMHdtem5wbGk5dHk4YjB6STdMdXJEQ280ZDA2NGZsTlU0YktWWGhk?=
 =?utf-8?B?bGRSQXZHZW05UWIzL21RWXdNdnN4MXVMNjlobzFJUUlweGlsR3NkTGhlZUZN?=
 =?utf-8?B?L3RZYllQcWF2N0xwN2Y5eFhPTWt5elFtU2xQai9jc0JzRnYxdVZmdWJ2Zi92?=
 =?utf-8?B?dk12Y2I0WkRTeUl5Tjlhc0xyVGZUZVVNVUdnU3lVYlRDMTJhUldmc2FuaUdu?=
 =?utf-8?B?OE9kM044UHozbnJyOXpUeW9lOXZUNUZxVE1yclZoRDJsVWo3RXd0QnpXM0NX?=
 =?utf-8?B?L1kwMDBtajlqajhxbTVUUTRYU1FndzBLa0JGTm1yQVJPbkRvb2tWbmQwU1l6?=
 =?utf-8?B?ZkJjdzZYWm5qdkk3Y3dackdtc1dFOGZIZFBVWUlPY2t6RGVZbjlxeGRNMzBJ?=
 =?utf-8?B?b0NYb3dxeDFjQlpvNFpoQzVLTTBLamdtbWlNaXJ5UVB1N3R5QzgzSEVpcUF0?=
 =?utf-8?B?YndVZWFpa0o5elpHN2tMRlNVYk1hWHZtOVdZMk1qUlFDek91Rk8xYnI3K3U2?=
 =?utf-8?B?QUREcnRDQjhlYWMvZDlpcG9rNkVGMUVJbWVzS05McjlwSE95ZXoydGdxVXZ0?=
 =?utf-8?B?TEl2NzVMMXFxcGNNTlg0MkZCcjRxQjZRUEtmMmpjd3RHd1NDbWlGb2hIdDlK?=
 =?utf-8?B?R1dUSituZ2o2MDY1WDF1ZDMrMU5HL2FrRkVRODNWQnVKdU50UzJZUkxHQWhK?=
 =?utf-8?B?cEl2U3Y2Ylc3T24vYWNvL3lhTFRQUS9rU0lyRzZoYkZlMlV6QnRIMmE0amNk?=
 =?utf-8?B?VzUwNHR0YklqemdlN0t2SitRWkoveC85bkJiOGxhenhGTWUvWkZjTG05bVdN?=
 =?utf-8?B?RUpqeTA3cGh5c3lvUjJUdmF0b1MwL0JqQVlsMERJV0R4STJ5WExWaStFcmpD?=
 =?utf-8?B?U3dqY2FOVGlQbWNtN3ZnRFQwdklpdU5BSWdYMk1ITm9RRGp4NnJPS0wrSTZq?=
 =?utf-8?B?QmhzSmhzeUdDaXlWUDhPdzZzSXBERVV3Tlp5bDhZV3lFMGFaUnRSK3dsYlZB?=
 =?utf-8?B?cXdQWURWQ0tYeUc4cHJhK3lvbTBsMmhJV244R0pKeFJmUk9EaDl0Qzl3Q2NO?=
 =?utf-8?B?ZjZxY3hrUDZ6cFBSOWp4dXJXNnRXODFvNExVb0hmREhRWVNEcm9pYlpmRWpj?=
 =?utf-8?B?Uk92bWlsQVlCZ0N0cGRqMjBycnZ1V1JjN3lBemNCQ3RBYW5QNmZOdjBCSi9v?=
 =?utf-8?B?YTMzMU5kT3JIaWJ4VEdPMXVaSWpCSTJ6Yy9BTU1DQlEvZkVzUUJNMXJFc1NU?=
 =?utf-8?B?NjdDTVZvSy9XZlBsbFlvODZWT0dMNU44M3I1SHVOZ3R5Q3hMNFFsb0pVQjdQ?=
 =?utf-8?B?em55aVZMV0lvdCtMSWRrbXQzVlhaYmNZeHR3RisydERwcGJLalhVTFRnSG5N?=
 =?utf-8?B?R0g4YjdNOWF4MkFCb1lzd1NxeXFic2x0TGxiQzNQYStBd2hNKy9meEFSUmVC?=
 =?utf-8?B?NHhWeG8yZ3FoWWk0aTcvUGxPOTV6NjJYMndHNUxRZHYydUhTRk40QUpkN0Nl?=
 =?utf-8?B?WWJ1dllyOHdhTFVyVXdibnd0NlA4M3gvUitFcmhHYTlPUUV6c25iaDJMTllI?=
 =?utf-8?B?Wi9CNSs1NU9oYmtmZTBtZW95a3hYVDgvYmZhR2ErL0NJSmxKRko2UlUwVGc3?=
 =?utf-8?B?aVd0MHEvYVF6Tk5OcTQwZGZTWVJ1cCsyYjRHY1dLMllaZnc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S2Fuc1ovR0loZ1VqKzkzMnQxQmJRaVhyZU45bENHd0t0YUdwb0U5MmJWT2x1?=
 =?utf-8?B?bk8vUXRWMXFlMVpEMDN4QXpvVXQ2TU9vT3VpNjUzQVFFT1YrU3piMlpTcWht?=
 =?utf-8?B?WWxvOHA0N1BoSzRpdHN2ckxOdys2ejlicFBpUnRxdVJxVlQzN081bnRaYnZX?=
 =?utf-8?B?RHlVd0txcGxDSXN3WGowcG9tbjVqeFJUa1ZMOXh1VVk2TUxwaG51UzYvYitk?=
 =?utf-8?B?bnIvR0U3TnJYR2k0NjUySTM3MDlEWVIzZjQ1OG11VDBBcmJ3emxaa3V4KzIy?=
 =?utf-8?B?UFN3bWpTR2VDWnpzS3JJSDRRb2VZTExVYkxlRUdiZ3lpbzJVMUw3VXIzeDJD?=
 =?utf-8?B?d3gwWDVjVVU4cE8rN0p1T1VuazhoakYwVml5eTJETVNuSzZOWUU5NHRwV1Rl?=
 =?utf-8?B?dGUwUHcrS2FkVjdzNWNEaklIWXNWNmc4MENqMU9qWWVsdkdpMVpoU0pCOXBP?=
 =?utf-8?B?VFRwQmhwV2N0Wm1ON1JlSWlGNGZaMDVYQlBDb0xHUVhpN1pXZGQvRHh0Lzdj?=
 =?utf-8?B?dGVOYnFHOFc4UVg0OHZPUVo5QWNhM2Q2QXEyZnMvZmFMOEorYWMzK3hxaDgv?=
 =?utf-8?B?di9pcEpvRzJHNjZ4UFRRY3hRNUdVbjBUUERiTXl3NDZqSnRJczNBRlhxSnEw?=
 =?utf-8?B?OUxyS25kT2M5bC92WG0rcUMzQVlQRXUrdVhiMmxJVm5rTHhyQ1E5VGVEU1hx?=
 =?utf-8?B?cUcvcCtrR1pFNXArR01URTFPd3hScnVDa2RmaDFVRnNoSjIwN0dxTUN3R3RJ?=
 =?utf-8?B?aUgwYm1DYm1vd0hsZlFKWk5pNzJVWWlEaU5MeVlOUTBxS2ZmYU5ialhTL0k3?=
 =?utf-8?B?YnNVS00zMDBCZWxqUkdrSk5HbVlnQ0lheGw4b0VGWWgvQnFmOXlIRW9pVDBr?=
 =?utf-8?B?R3U3SjdNVDc1Z3pocWtCdjJKdHFlUHpIS3pzOUxtUVEwMVNGbm5UOTIyZmd4?=
 =?utf-8?B?dW5ZdXdTSEJLQXFJeE9CUExPZ25ybi9JZWNMSzlzK2dPN3NxY2ZhM1oxWDhV?=
 =?utf-8?B?K1pXVGZ6M0M0UHdsS0hhYUx4bmRNbjlHMFZxTU10YzBTTzU0R1FvbkgwVXN4?=
 =?utf-8?B?RC9LTUhDcXpseFlCRUJ6d2RjTTRQZVN4cXR5ZWxjcnl2L0VRa2hORk4xZE5Y?=
 =?utf-8?B?b2lHZDRuMFNoOUhnM0N1WUhqeml1bFYySzRTREg3bTM1SUtiektPaVhOKytF?=
 =?utf-8?B?M0ozTDhmQ0dIbnJtYVVEcmlqQUdkUFo3aERxT2hxRDFrMUhsRmlyanNkVU8w?=
 =?utf-8?B?UzlFa2lvRkNsVXJ0Yk9CVmJYaDRjM2Z5d3BVNVJkenJ1cUNYUC9Fc1VCMVcy?=
 =?utf-8?B?REU5cmhQRFZCQlVZT0RpanFwTi9ZcktocWZMREhFQ1Z3alBwOXBBeHFPRmVT?=
 =?utf-8?B?bTlGZk1KTVg1RE40L2lKWEI3Y1U5ZEpFTEJnWW1SREJsL1B1eWV3QzZ1YkU1?=
 =?utf-8?B?bGFZM3oxSDA2ZUZYbFBGYy9sc2hNckxlbnBKVldpbU9XQWloVlc2Nm5CcEJQ?=
 =?utf-8?B?ckNFNEZuTk9tOEtQRjRML3M5ZXovenlodVBIdzFiQkQ1ZmJaaG03WDhKNWU0?=
 =?utf-8?B?RVo1Wnp4eEY1dXZUcGxWTC9NWEFVbm55R3dwNFYwNzlFVFVEU0N3Z0ZUWm9r?=
 =?utf-8?B?NXEvMEEwbGxUT2VOeHRlVFB4NlZjTVRPdU5MK2VEVWg5OWhxMnZIdUFuTmNB?=
 =?utf-8?B?VjJUbzVsN2NpQm9Bc0xzNjd1WnlqU3UxbmxqOTUydEtTajN4aFpXa0g0N0hC?=
 =?utf-8?B?TEo1OXVTclJEbkgxWVZNUUxLT0FkME5Cazg3NFljZnN6TnordlpVcUhHZmpD?=
 =?utf-8?B?T3JFYXRRZWtnekw0Q3JaTHV5R1VZZzV5WlRLTW8ra1EvYjV2YTdSTndia2h0?=
 =?utf-8?B?aUZHTUduRXhTSGF1Tm5GcmR0L1grblh0VHBsdkxtVXViUWU4UUVIMlg0Qnk3?=
 =?utf-8?B?TktXSnVCR1BjajJBcWZneXJxMWdVeHNVamZCOTBlODNQRHFxdFJ0MlZKQzlE?=
 =?utf-8?B?NVArQWE5V2dKdzcyWFFVMEUrR0pzNUtScnpBdHg3N2pxZHZud240Q25EM2Nv?=
 =?utf-8?B?Zy9qQzE3WnVDT1RiRkZiSHAyK0t2Nk1jWmlwbzZTZWFuVkZyM0hBOGJaY1Mr?=
 =?utf-8?B?R04xMmZLZnZHQ3dCQUFUWjFySnZvOWRhbXZlZUxmRWpwaVBUblRJaENZUzN1?=
 =?utf-8?B?VHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b02cf24-8079-4b39-cead-08dd2bc935c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2025 07:35:34.6521 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tqkG3L6h7zY+c8d+ApG8PwVIkYSuqz3LElVJ+3vj3RQSbbPhTKRAd4zCUDWjSgMj7GHBww9Ucvmu0ELJplwTNrtn2rbhaeyeQ8kHQqnFKm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7464
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBQYXRj
aHdvcmsNCj4gU2VudDogRnJpZGF5LCBEZWNlbWJlciAyMCwgMjAyNCAxMDo1MiBBTQ0KPiBUbzog
S2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiDinJcgRmkuQ0kuQlVJTEQ6IGZhaWx1
cmUgZm9yIFJldmVydCAiZHJtL2k5MTUvaGRjcDogRG9uJ3QgZW5hYmxlDQo+IEhEQ1AxLjQgZGly
ZWN0bHkgZnJvbSBjaGVja19saW5rIg0KPiANCj4gPT0gU2VyaWVzIERldGFpbHMgPT0NCj4gDQo+
IFNlcmllczogUmV2ZXJ0ICJkcm0vaTkxNS9oZGNwOiBEb24ndCBlbmFibGUgSERDUDEuNCBkaXJl
Y3RseSBmcm9tDQo+IGNoZWNrX2xpbmsiDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJl
ZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDI4NzEvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0g
U3VtbWFyeSA9PQ0KPiANCj4gRXJyb3I6IG1ha2UgZmFpbGVkDQo+ICAgQ0FMTCAgICBzY3JpcHRz
L2NoZWNrc3lzY2FsbHMuc2gNCj4gICBERVNDRU5EIG9ianRvb2wNCj4gICBJTlNUQUxMIGxpYnN1
YmNtZF9oZWFkZXJzDQo+ICAgQ0MgW01dICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkY3Aubw0KPiBJbiBmaWxlIGluY2x1ZGVkIGZyb20gLi9pbmNsdWRlL2xpbnV4L2Rldmlj
ZS5oOjE1LA0KPiAgICAgICAgICAgICAgICAgIGZyb20gLi9pbmNsdWRlL2xpbnV4L2FjcGkuaDox
NCwNCj4gICAgICAgICAgICAgICAgICBmcm9tIC4vaW5jbHVkZS9saW51eC9pMmMuaDoxMywNCj4g
ICAgICAgICAgICAgICAgICBmcm9tIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRjcC5jOjEyOg0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYzog
SW4gZnVuY3Rpb24NCj4g4oCYaW50ZWxfaGRjcF9jaGVja19saW5r4oCZOg0KPiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYzoxMTcxOjI2OiBlcnJvcjog4oCYaTkxNeKA
mSB1bmRlY2xhcmVkDQo+IChmaXJzdCB1c2UgaW4gdGhpcyBmdW5jdGlvbik7IGRpZCB5b3UgbWVh
biDigJhJOTE14oCZPw0KPiAgMTE3MSB8ICAgICAgICAgICAgICAgICBkcm1fZXJyKCZpOTE1LT5k
cm0sICJGYWlsZWQgdG8gZW5hYmxlIGhkY3AgKCVkKVxuIiwgcmV0KTsNCj4gICAgICAgfCAgICAg
ICAgICAgICAgICAgICAgICAgICAgXn5+fg0KPiAuL2luY2x1ZGUvbGludXgvZGV2X3ByaW50ay5o
OjExMDoyNTogbm90ZTogaW4gZGVmaW5pdGlvbiBvZiBtYWNybw0KPiDigJhkZXZfcHJpbnRrX2lu
ZGV4X3dyYXDigJkNCj4gICAxMTAgfCAgICAgICAgICAgICAgICAgX3BfZnVuYyhkZXYsIGZtdCwg
IyNfX1ZBX0FSR1NfXyk7ICAgICAgICAgICAgICAgICAgICAgICBcDQo+ICAgICAgIHwgICAgICAg
ICAgICAgICAgICAgICAgICAgXn5+DQo+IC4vaW5jbHVkZS9kcm0vZHJtX3ByaW50Lmg6NTg4Ojk6
IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDigJhkZXZfZXJy4oCZDQo+ICAgNTg4IHwgICAg
ICAgICBkZXZfIyNsZXZlbCMjdHlwZSgoZHJtKSA/IChkcm0pLT5kZXYgOiBOVUxMLCAiW2RybV0g
IiBmbXQsDQo+ICMjX19WQV9BUkdTX18pDQo+ICAgICAgIHwgICAgICAgICBefn5+DQo+IC4vaW5j
bHVkZS9kcm0vZHJtX3ByaW50Lmg6NjAxOjk6IG5vdGU6IGluIGV4cGFuc2lvbiBvZiBtYWNybyDi
gJhfX2RybV9wcmludGvigJkNCj4gICA2MDEgfCAgICAgICAgIF9fZHJtX3ByaW50aygoZHJtKSwg
ZXJyLCwgIipFUlJPUiogIiBmbXQsICMjX19WQV9BUkdTX18pDQo+ICAgICAgIHwgICAgICAgICBe
fn5+fn5+fn5+fn4NCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmM6
MTE3MToxNzogbm90ZTogaW4gZXhwYW5zaW9uIG9mDQo+IG1hY3JvIOKAmGRybV9lcnLigJkNCj4g
IDExNzEgfCAgICAgICAgICAgICAgICAgZHJtX2VycigmaTkxNS0+ZHJtLCAiRmFpbGVkIHRvIGVu
YWJsZSBoZGNwICglZClcbiIsIHJldCk7DQpIaSBTdXJhaiwgDQoNClRoZSBpbnRlbF9oZGNwX2No
ZWNrX2xpbmsoKSBjb2RlIG5vIGxvbmdlciB1c2UgJmk5MTUtPmRybS4NClBsZWFzZSB1c2UgdGhl
IGludGVsX2Rpc3BsYXkgc3RydWN0dXJlIGluc3RlYWQuDQoNClJlZ2FyZHMsIA0KRG55YW5lc2h3
YXINCg0KPiAgICAgICB8ICAgICAgICAgICAgICAgICBefn5+fn5+DQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jOjExNzE6MjY6IG5vdGU6IGVhY2ggdW5kZWNsYXJl
ZA0KPiBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlvbiBp
dCBhcHBlYXJzIGluDQo+ICAxMTcxIHwgICAgICAgICAgICAgICAgIGRybV9lcnIoJmk5MTUtPmRy
bSwgIkZhaWxlZCB0byBlbmFibGUgaGRjcCAoJWQpXG4iLCByZXQpOw0KPiAgICAgICB8ICAgICAg
ICAgICAgICAgICAgICAgICAgICBefn5+DQo+IC4vaW5jbHVkZS9saW51eC9kZXZfcHJpbnRrLmg6
MTEwOjI1OiBub3RlOiBpbiBkZWZpbml0aW9uIG9mIG1hY3JvDQo+IOKAmGRldl9wcmludGtfaW5k
ZXhfd3JhcOKAmQ0KPiAgIDExMCB8ICAgICAgICAgICAgICAgICBfcF9mdW5jKGRldiwgZm10LCAj
I19fVkFfQVJHU19fKTsgICAgICAgICAgICAgICAgICAgICAgIFwNCj4gICAgICAgfCAgICAgICAg
ICAgICAgICAgICAgICAgICBefn4NCj4gLi9pbmNsdWRlL2RybS9kcm1fcHJpbnQuaDo1ODg6OTog
bm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKAmGRldl9lcnLigJkNCj4gICA1ODggfCAgICAg
ICAgIGRldl8jI2xldmVsIyN0eXBlKChkcm0pID8gKGRybSktPmRldiA6IE5VTEwsICJbZHJtXSAi
IGZtdCwNCj4gIyNfX1ZBX0FSR1NfXykNCj4gICAgICAgfCAgICAgICAgIF5+fn4NCj4gLi9pbmNs
dWRlL2RybS9kcm1fcHJpbnQuaDo2MDE6OTogbm90ZTogaW4gZXhwYW5zaW9uIG9mIG1hY3JvIOKA
mF9fZHJtX3ByaW50a+KAmQ0KPiAgIDYwMSB8ICAgICAgICAgX19kcm1fcHJpbnRrKChkcm0pLCBl
cnIsLCAiKkVSUk9SKiAiIGZtdCwgIyNfX1ZBX0FSR1NfXykNCj4gICAgICAgfCAgICAgICAgIF5+
fn5+fn5+fn5+fg0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYzox
MTcxOjE3OiBub3RlOiBpbiBleHBhbnNpb24gb2YNCj4gbWFjcm8g4oCYZHJtX2VycuKAmQ0KPiAg
MTE3MSB8ICAgICAgICAgICAgICAgICBkcm1fZXJyKCZpOTE1LT5kcm0sICJGYWlsZWQgdG8gZW5h
YmxlIGhkY3AgKCVkKVxuIiwgcmV0KTsNCj4gICAgICAgfCAgICAgICAgICAgICAgICAgXn5+fn5+
fg0KPiBtYWtlWzZdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6MTk0Og0KPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3Aub10gRXJyb3IgMQ0KPiBtYWtlWzVdOiAq
KiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDQwOiBkcml2ZXJzL2dwdS9kcm0vaTkxNV0gRXJy
b3IgMg0KPiBtYWtlWzRdOiAqKiogW3NjcmlwdHMvTWFrZWZpbGUuYnVpbGQ6NDQwOiBkcml2ZXJz
L2dwdS9kcm1dIEVycm9yIDINCj4gbWFrZVszXTogKioqIFtzY3JpcHRzL01ha2VmaWxlLmJ1aWxk
OjQ0MDogZHJpdmVycy9ncHVdIEVycm9yIDINCj4gbWFrZVsyXTogKioqIFtzY3JpcHRzL01ha2Vm
aWxlLmJ1aWxkOjQ0MDogZHJpdmVyc10gRXJyb3IgMg0KPiBtYWtlWzFdOiAqKiogWy9ob21lL2ti
dWlsZC9rZXJuZWwvTWFrZWZpbGU6MTk4OTogLl0gRXJyb3IgMg0KPiBtYWtlOiAqKiogW01ha2Vm
aWxlOjI1MTogX19zdWItbWFrZV0gRXJyb3IgMiBCdWlsZCBmYWlsZWQsIG5vIGVycm9yIGxvZw0K
PiBwcm9kdWNlZA0KPiANCg0K
