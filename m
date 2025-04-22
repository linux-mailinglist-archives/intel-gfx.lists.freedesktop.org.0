Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C57A95D26
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 07:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0554710E165;
	Tue, 22 Apr 2025 05:00:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f8Uxwa61";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C99010E165;
 Tue, 22 Apr 2025 05:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745298012; x=1776834012;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=d9xSZ+gdFerYlLq+Rabd3p9cxh6svbwsu4BYVEpR9Ic=;
 b=f8Uxwa61d04EcLltAPnZhTTqpaeCddlkUqxBuJN9vz4bKXHES9HbflzU
 XF2RkM4KDEHtO26DZWpvhWXBins6wMprO8qnwbV53a5y6lXfk0hAkbwx9
 e3z8akg+Fq1UDAs1A3WBQGULOOC74FS67sn1m2KSE3z2Agq6enmC99/Xw
 3kKBKYMGJi4hGgggRyUa3Kezr1eRT/qLRhsHxhOCnBwrQ1cbHLsY9B4it
 t3w1poctLqE03ER0+S9eLQTm0X11W0Pnu0S4krllFwc5SgNtv2pfP+YXP
 fadtKiG1ksjXsI1qRjXfIxRZwXXgSUKIS51xAWAuzYQHXPFnvktlRE3d4 g==;
X-CSE-ConnectionGUID: dbTgy4acTBmqFpaqV+/T4g==
X-CSE-MsgGUID: CVi3Yq6zQwKG24LwxX8z+g==
X-IronPort-AV: E=McAfee;i="6700,10204,11410"; a="50505100"
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="50505100"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:00:11 -0700
X-CSE-ConnectionGUID: qv94fjsqTZu/Vlc0ZcvPLw==
X-CSE-MsgGUID: zrDegGS1RwWDArGkJm+r8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,230,1739865600"; d="scan'208";a="132441342"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2025 22:00:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 21 Apr 2025 22:00:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 21 Apr 2025 22:00:10 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 21 Apr 2025 22:00:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ImzuZUs5T6lcWCD2v/pZwfJO1CoK90MJZQLhRCCWcU2Mmfn45mfXLpKnB7BmWKtr6Kym1yWfNRNF9SMYGOdBDtEbgGmb6rIU8fBSrg2bFaVNUNjkKafDmAvZnnlraxMUv9MyTl9Akgsd02L/nmaw/Kju/Yjbi/rPbfoEsALfypRjdlznY3Sla+Bp7bFWzMclPop0AeUjfZGHEbrBinxe610JyqTLyWfs9EKmPodMB594Wjh42XtEtbXRRBUg31IlzT91g4bzToL9Duo//r+d8aZMvetBp6LZz8qhsW25WR+ExXMZmpF8UdCbFehINroQt3u5IKTujH1sDOwkFnmJqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d9xSZ+gdFerYlLq+Rabd3p9cxh6svbwsu4BYVEpR9Ic=;
 b=Bi2R0LJLlScf2vWzok2uRe4G4HzLLt4o3CghxEduaHlRq9B8iYZdalKe+3BYzAvGvCBgtWRW/KbQsbnPzTO3amMEoGK1gPeb6lSyVUMR8eQEvsmDzeOpBaovdF71yjYQVqEzDE66njhLH/keIjRVvuvh5QoUpgN5jfBAKZ3zKGYNtSKQVZM20nZCCF8pTJraoB0gHmb/umNYV6r9K9taFg0jNnaCL4kgSWIiF9KB43eqPUV4+SHpA2jt6sfmRu8vjgLnB88mNjs8JO8YeMMOxrf1uKKZ956oGSZyAvK4Z4cG91exES00LQzk/VWRYXJFSI4zqVKTvIPC0DatTu6BMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH0PR11MB5298.namprd11.prod.outlook.com (2603:10b6:610:bd::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Tue, 22 Apr
 2025 04:59:27 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%3]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 04:59:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Topic: [PATCH] drm/i915/display: Ensure enough lines between delayed
 VBlank and VBlank
Thread-Index: AQHbr8X8SY5Z1DUMf0Cb+1KoOgHrhLOr2ykQgANIJACAAAJa4A==
Date: Tue, 22 Apr 2025 04:59:27 +0000
Message-ID: <IA0PR11MB730782CA0A0EC63ADBECD1ADBABB2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250417182356.169593-1-jouni.hogander@intel.com>
 <IA0PR11MB7307ECC591508B0B1B8AB50BBAB92@IA0PR11MB7307.namprd11.prod.outlook.com>
 <c33fae44e17f35638cc5129d19d8e8124d1ec1dd.camel@intel.com>
In-Reply-To: <c33fae44e17f35638cc5129d19d8e8124d1ec1dd.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH0PR11MB5298:EE_
x-ms-office365-filtering-correlation-id: 5ed927d9-7b45-4aca-d56d-08dd815a754b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZnlhMUNDL1F3dG5DKzFEK2ljYXJ4cWxtQllCVVFiYnBTV0hiMFZIeWN0QnNU?=
 =?utf-8?B?Ri9icUhtbE51OGE0WnFTVnVjbURaZFRuRFZNdXNsckNWZUtPVXVrL1pFWnh0?=
 =?utf-8?B?dU5nZktXQjEzeGFvUlhkRmVvR3F3RFh0WTBtREw0R1lOT2wvc1dscXp6aStT?=
 =?utf-8?B?ZzZmQ1dTMlJUMEtGSkVicStpdGRVU1pFR08yUVh0N0VEbnJYWmd1R3pYWjF0?=
 =?utf-8?B?eWlERmZhbWZ0OExaaGd5VVNKVjNISTRhMXowN3VXMksrR0FYN2FOZk9DSms1?=
 =?utf-8?B?alozY2hyMmcybHFPMmRrZ0NQSWZpdXZ0SkhWek42R3ZNcDk5NDdjWWllZ0Ri?=
 =?utf-8?B?eFBBVEtyNnY1SkJwUWFaeElVWE9ZMUROY0YrVFRzWUpMdWh0QjVQUFF2QlRF?=
 =?utf-8?B?K1BYSUVZYjFKOTlFaGFBL2UranIwc2UzNlU2bzFCQ2hXYWN0S2djaExXTmtQ?=
 =?utf-8?B?RnlXaUdXaEhuUUhlYjN1RW05cmgwajhLemZMbkZ0UUJ5SnJ6S3NkVEx4MGdJ?=
 =?utf-8?B?Sk9zY3Y0ZDVBa3ptTW9CSXRzY1dXbjlTUmtZUDNEaExoY3Z3UzIwM2k3cXoz?=
 =?utf-8?B?S1VCVldTdWtGcmV2cGVhakJUMWtSL2JuSEVLamh4aFY3ZDNnTElEU291ZTgz?=
 =?utf-8?B?bTlrU1dKQ3BKSDRiTDhEZ1A5N3JyMS80YnBvVHZVczVMYVR6MEprVjRzYmRn?=
 =?utf-8?B?MjlteS9zTDh0alFFQkp6L1RiVlNOMXVicyttOXk0Y0dPd0hmTzZLY3RqZitj?=
 =?utf-8?B?U0lvMWhxODRaWkp1Nno2R284bXZiNTZiZW1IUWJWTitiVnRpNWc1RFJLdlND?=
 =?utf-8?B?YldWZmZXb3pFRjJia1dMSFR0RVlSczZKRVdIMmFLTll0d3E2MGU2YlNaMGxS?=
 =?utf-8?B?UjdrTEpra01wdExwTy9HMkVLVFlYdUFoQVlFVGNYNm5VV29xdWxWWWVLdVNy?=
 =?utf-8?B?RUoxVk1EeUNGdW9zSGRxdnc1NjdNK0JpNjNiNldNUnNtN0Z4eWZGSms1N3ow?=
 =?utf-8?B?WUVna2Z4RzduSGtINlphVTEvc2VaUkU0N3NKTmJsTUVJNXY2RnI0ejFpZUJl?=
 =?utf-8?B?M3VmNGQ3UjJMTGc2U3YzZWJyNjFHMnBPT0Q2M3QzN3pmRGhWZ3VCRHdrUzMw?=
 =?utf-8?B?bFBLcmpJWnRWN256dlFyMEhnL2RMZXE0T0JCQXNuZWlBR01sOUJrd1VNa0d3?=
 =?utf-8?B?OGFMbndPaHpEdVRWNXRsemRMOWREaW9MTEpWU1FSbVVSKzh5MnVmTmZRYXUw?=
 =?utf-8?B?VWhOdmptNUU4NU5ubW1TRzVlYVpKTk1aV0lUc1VWdzFweUhwUjJ5aDUrM3lv?=
 =?utf-8?B?UTNxanVGUEgxTTVPSVUwUHFvM2FDblc1T2R6alRFVStFdURyTGkwVjBqVjUv?=
 =?utf-8?B?YlhkLzB6VzV5NFBaN005bVdyNjNOOVFhOHY1eGliQjR4WVdPWnVVNHpVakhh?=
 =?utf-8?B?aUlXdWNWTnViNTAwcGo1T2luejBLbVNUK1dDaTNMSUlNcWx1UnljZTZ2aTFD?=
 =?utf-8?B?ZGxJVm5wOXE5cnZLQzZuakZhektIUm4wQnZLZ1hPN2FHSjQzS3lYOWIrczY2?=
 =?utf-8?B?VVFOYzB4QS9tNEZ3clpQOTJXd0Vlc2diMlFRa052RFlEM09ya3NmZzd6RUN5?=
 =?utf-8?B?cHV4SzR1OXpoTjlub2JqMWVVb2VtekF0ZTEwT1dsWXpyRkN0b2JTa0VUelVk?=
 =?utf-8?B?azJBZURtY1RCVDB2YS8yRmxyMm1oZ3drUzRKeGViK3pYbHByMTRhaFU3eGVa?=
 =?utf-8?B?Z2dBNURKUW4zKzR1eFZEaHlCL3pHNDFUMVZua2ZaUnNIc0N6VDlXQXZUWFdB?=
 =?utf-8?B?aFk3NkdVN3hJR3FmQVU1T1hRTVNXUnpRQzBCTDJXNUpUQjBPcVZYeXBIZlFF?=
 =?utf-8?B?Nll4Z29SbUllWnFGbXRwUEhob1A0NUFMNHk0ektmTCtONkkway9OM0R2SjR0?=
 =?utf-8?B?NXhnZ3VraDhQaGFWZHliWTBDRGQ3UWhhMFFVME9KK2czb29tNXNqYzUxZXdo?=
 =?utf-8?Q?wBaa/URUG5v/YW5HMAfSL8tS/UjoYg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3hLaFU4U2txRHZCOGRXdmhJSGI4Y3BMRVVmSXpMZVZIK256UHdJSGtjbE14?=
 =?utf-8?B?N2NMV3c3S2FDTitYZjVkVmxxeElxUnBXbGV4ZmpqdjBnN3MvNzRjWlFNbGxv?=
 =?utf-8?B?Nm1EcEJhbWFIRjhBUlplRHc5VkY0RlNjL0dnand0aGR5SUNGSHpDS2xQZHJN?=
 =?utf-8?B?ZVp2WG5kcmZwS05Lb0J2cklON05wc29FdnI0eDBUOVJXRXpueVZJb1Y4Vjl1?=
 =?utf-8?B?ZTNVNWd4bjJzRFBtMGlUYnpZZEMzY1h4bmplWVBOUzRrOHRhTEoxbUZYcXds?=
 =?utf-8?B?NlhYM2JvTEdrMVdUek1STVd5WGs5MmdQblZHaVJlZ2JSTDhzSHBCaVV0ekdR?=
 =?utf-8?B?S0N3bTRkS1hPOHBmTGZEYU1kRjhpVzI3Z2dyOE1RRnZUT0dSTUNTM1crbzFa?=
 =?utf-8?B?ODhzc0NpV1hJTWFIbVk1WWFmUGYwV0IvVStNYTg2VnNyamxuVE9KV2pxUC9L?=
 =?utf-8?B?WVFQckhpT1JNZFd1V3QzMCtibTdnT29DMkxQYzV2YmxtcWZMUDQ1QXNpUzNy?=
 =?utf-8?B?L3lGdmVEWXNHNTBjZjZ0eUxsUUczdERQMzNvaTJPQmZUT2xtYm9sRzY0WmZp?=
 =?utf-8?B?SDFLNXpKZzF4ampGVFlxaU01UUdzRWY0TWMrYW9COXlHdVZJc0w1OHlkeXFM?=
 =?utf-8?B?Qi90TCtZcnlrejFHUEhjMVhuL05QMUp4cjZ3elNjVmRmTGdnYlBsMTdlV1pm?=
 =?utf-8?B?U2xaa2x2aVhFQ0hGcjFPWWZIQTdTaG8wY0tSdFNTYW0wQ2xUdWgxNkg0dDRD?=
 =?utf-8?B?TmxXL0NvR0FxTVJZRlNscTY1alRGR2JlMGUvS0ZQcmptTDlGL3JIM1B3VW1t?=
 =?utf-8?B?SzBCZmhLZWo5MzRNeXVCY3pscjJsZ3hDc2xmMVpHakloM1YzV0NDTm81V0li?=
 =?utf-8?B?dng5UTFPcWVZaW4yeGVSS3d6c1B4WFdiSzRONGl6aDkxYTdVSU5DT2pDQ3hB?=
 =?utf-8?B?bG0zb2JBTEpoeHAvUDZ4cFByVis2ZzI2V1VwUTFPNmV0SnJrZkZDYWdTR1pG?=
 =?utf-8?B?OHB5dG5KR3BKZ3FtQ29JYllTSmhTTGpNKzFOL0lleCt3emROWU8yUlFlRUNG?=
 =?utf-8?B?UklCaUdlMit0RllZQy84SU5oZE5NUW1VbTN1MTF6bkJNcUJFWTZqOFVqak4z?=
 =?utf-8?B?NTZNci9tTEdkSlVLdjN5V1ZKYkc3S3R1T2FPNHA3MTA2WUwwNEVBVGF4dnBD?=
 =?utf-8?B?MWRzNVMxRXRGL2d1RkhmYUUxL01Md0pNZGFyNEpJL2t0THNFWFJ2dFdCV0Qv?=
 =?utf-8?B?WGt4cGVkTUQrMnpndXRmWFFSM3V1dHNJRy84WjlnZk5Ec2c2UFBFSGtkTHNs?=
 =?utf-8?B?QktKWlM1eUZwenp6dEVlNmw5dW9wck9nRVBOdUw2Q0ltSlZNMys3NmVvblhJ?=
 =?utf-8?B?My8wRnpuNG40WE9wUlRBMmlRQzRsWnErL3BmY1RRbkRZN2h1T0NxNEFjUVVQ?=
 =?utf-8?B?SkM0Z0xhbkV5eEdYelRGTHNGUnlDMlhoT1E2cVBiMVRXcVdkNXNXcmJWY29v?=
 =?utf-8?B?RVlhK09KRUdObTg4VzQyTTdJREd2VFJaS256R1dyNXVYNkp5T1k4ZWUwaWpL?=
 =?utf-8?B?Y2lmUW1DcG95eTJ2eGZnVSt5ang3ZHVobWg2L0tkK1NKN09DSm5qbmVpTG5L?=
 =?utf-8?B?R1NEU1YwVUlIKzlHaW93dDJlYndyWjdiOVk3ZzMwREZRM0JINVl4MUkzeGty?=
 =?utf-8?B?WnpBVzN5STB2aFd5RGFqaTVnTFRZZ29NcG1CZm1HQUhIaE5ma1Mvdnl6bFpi?=
 =?utf-8?B?bkpJVmdLRSs2MUdOclcvQzQ0RytzaGRvTlhreHd2dXprM25raHJoQUpSQkFV?=
 =?utf-8?B?TjV0TkpKR01GSXBQcWxaa1FBdHVLUTRIdFNPaEpFVm5Dek14cmJER3pkY2Va?=
 =?utf-8?B?NlU2Q0JxNzNDWndseE1MVlBFdWI3dGtzODIxT2k5WE1wSG1CVVJqTkFIRDls?=
 =?utf-8?B?QkVCbjlJVC9HV0FVUTJBb0luL0VjL0lmRGlEWmtvZWpqekQzeDRWakdJMmMx?=
 =?utf-8?B?SGppVC8wQjlPLzd5d2NqNHd0bzlEL0pEWGdROEtCNEk2cW5WUWUwK0QzV2Fr?=
 =?utf-8?B?TVNLQmdSWDUva2ZNNnVXTy9JTkdpNUU2WXVNOThuTkkzVkpIOFZuY0gwWnp2?=
 =?utf-8?Q?UzTaNCobvqExdZ9bwg5+7Wg+N?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ed927d9-7b45-4aca-d56d-08dd815a754b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 04:59:27.1109 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +XamPhfiuDEBTxjisHDtkRd+5iKJHSCbmGIDyhKpWypoZTgeQcTZ4Quyru+gM0rCul8fAGaAwzAnpzhpGymzmQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5298
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2RheSwgQXByaWwgMjIsIDIwMjUg
MTA6MTYgQU0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsNCj4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIXSBkcm0vaTkxNS9kaXNwbGF5OiBFbnN1
cmUgZW5vdWdoIGxpbmVzIGJldHdlZW4gZGVsYXllZA0KPiBWQmxhbmsgYW5kIFZCbGFuaw0KPiAN
Cj4gT24gU3VuLCAyMDI1LTA0LTIwIGF0IDE1OjUwICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90
ZToNCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRlbC1n
ZnggPGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+
ID4gPiBPZiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+IFNlbnQ6IFRodXJzZGF5LCBBcHJpbCAxNywg
MjAyNSAxMTo1NCBQTQ0KPiA+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogW1BBVENIXSBkcm0v
aTkxNS9kaXNwbGF5OiBFbnN1cmUgZW5vdWdoIGxpbmVzIGJldHdlZW4NCj4gPiA+IGRlbGF5ZWQg
VkJsYW5rIGFuZCBWQmxhbmsNCj4gPiA+DQo+ID4gPiBUbyBkZXRlcm1pbmlzdGljYWxseSBjYXB0
dXJlIHRoZSB0cmFuc2l0aW9uIG9mIHRoZSBzdGF0ZSBtYWNoaW5lDQo+ID4gPiBnb2luZyBmcm9t
IFNSRE9GRkFDSyB0byBJRExFLCB0aGUgZGVsYXllZCBWLiBCbGFuayBzaG91bGQgYmUgYXQNCj4g
PiA+IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24tZGVsYXllZCBWLiBCbGFuay4NCj4gPiA+
DQo+ID4gPiBFbnN1cmUgdGhpcyBieSBmb2xsb3dpbmcgaW5zdHJ1Y3Rpb25zIGZyb20gQnNwZWMu
DQo+ID4gPg0KPiA+ID4gQnNwZWM6IDY5ODk3DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBI
w7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDExICsrKysrKysr
KystDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdnJyLmPCoMKg
wqDCoCB8IDE4DQo+ID4gPiArKysrKysrKysrKysrKysrLS0NCj4gPiA+IMKgMiBmaWxlcyBjaGFu
Z2VkLCAyNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+
ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4g
aW5kZXggZGI1MjRkMDFlNTc0ZC4uOTQxNTZlZmE1YWE5MyAxMDA2NDQNCj4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gQEAgLTI3
NDcsOSArMjc0NywxOCBAQCBzdGF0aWMgdm9pZA0KPiA+ID4gaW50ZWxfc2V0X3RyYW5zY29kZXJf
dGltaW5nc19scnIoY29uc3QNCj4gPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjDQo+
ID4gPiDCoAl9DQo+ID4gPg0KPiA+ID4gwqAJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDEz
KSB7DQo+ID4gQ2hhbmdlcyBsb29rcyBnb29kLiBCdXQgcGVyIEJzcGVjIDY5OTg1IGxvb2tzIGxp
a2UgdGhpcyBjaGFuZ2UgaXMgbm90DQo+ID4gYXBwbGljYWJsZSBmb3IgWGUzKw0KPiANCj4gSG93
IGFib3V0IGlmIEkgY2hhbmdlIGl0IGxpa2UgdGhpczoNCj4gDQo+IGludCBtaW5fbGF0ID0gIGlu
dGVsX3Zycl9hbHdheXNfdXNlX3Zycl90ZyhkaXNwbGF5KSB8fCBjcnRjX3N0YXRlLQ0KPiA+dnJy
LmVuYWJsZSA/IDEgOiAwOw0KPiANClRoZSBmdW5jIGludGVsX3Zycl9hbHdheXNfdXNlX3Zycl90
ZyByZXR1cm4gdHJ1ZSBpZiBkaXNwbGF5ID49MzAsIHNvIHNob3VsZCBpdCBiZSAhaW50ZWxfdnJy
X2Fsd2F5c191c2VfdnJyX3RnKCkNCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRo
eQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gYWxzbyBndWFyZGJhbmQgY291bGQgYmU6DQo+IA0K
PiBpZiAoaW50ZWxfdnJyX2Fsd2F5c191c2VfdnJyX3RnKGRpc3BsYXkpIHx8IGNydGNfc3RhdGUt
PnZyci5lbmFibGUpDQo+ICAgICBndWFyZGJhbmQgPSBtYXgoY3J0Y19zdGF0ZS0+dnJyLnZtaW4g
LSBhZGp1c3RlZF9tb2RlLQ0KPiA+Y3J0Y192Ymxhbmtfc3RhcnQsIGNydGNfc3RhdGUtPnZyci52
bWF4IC0gYWRqdXN0ZWRfbW9kZS0+Y3J0Y192ZGlzcGxheQ0KPiAtIDEpOw0KPiBlbHNlDQo+ICAg
ICBndWFyZGJhbmQgPSBjcnRjX3N0YXRlLT52cnIudm1pbiAtIGFkanVzdGVkX21vZGUtDQo+ID5j
cnRjX3ZibGFua19zdGFydDsNCj4gDQo+IFdoYXQgZG8geW91IHRoaW5rPw0KPiANCj4gQlIsDQo+
IA0KPiBKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4NCj4gPiBUaGFua3MgYW5kIFJlZ2FyZHMsDQo+
ID4gQXJ1biBSIE11cnRoeQ0KPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiA+ICsJCS8qDQo+
ID4gPiArCQkgKiBDb21tZW50IG9uIFNSRF9TVEFUVVMgcmVnaXN0ZXIgaW4gQnNwZWM6DQo+ID4g
PiArCQkgKg0KPiA+ID4gKwkJICogVG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJh
bnNpdGlvbiBvZg0KPiA+ID4gdGhlIHN0YXRlDQo+ID4gPiArCQkgKiBtYWNoaW5lIGdvaW5nIGZy
b20gU1JET0ZGQUNLIHRvIElETEUsIHRoZQ0KPiA+ID4gZGVsYXllZCBWLiBCbGFuaw0KPiA+ID4g
KwkJICogc2hvdWxkIGJlIGF0IGxlYXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24tDQo+ID4gPiBk
ZWxheWVkIFYuIEJsYW5rLg0KPiA+ID4gKwkJICoNCj4gPiA+ICsJCSAqIExlZ2FjeSBURzogVFJB
TlNfU0VUX0NPTlRFWFRfTEFURU5DWSA+IDANCj4gPiA+ICsJCSAqLw0KPiA+ID4gwqAJCWludGVs
X2RlX3dyaXRlKGRpc3BsYXksDQo+ID4gPiDCoAkJCcKgwqDCoMKgwqDCoCBUUkFOU19TRVRfQ09O
VEVYVF9MQVRFTkNZKGRpc3BsYXksDQo+ID4gPiBjcHVfdHJhbnNjb2RlciksDQo+ID4gPiAtCQkJ
wqDCoMKgwqDCoMKgIGNydGNfdmJsYW5rX3N0YXJ0IC0gY3J0Y192ZGlzcGxheSk7DQo+ID4gPiAr
CQkJwqDCoMKgwqDCoMKgIG1heChjcnRjX3ZibGFua19zdGFydCAtDQo+ID4gPiBjcnRjX3ZkaXNw
bGF5LCAxKSk7DQo+ID4gPg0KPiA+ID4gwqAJCS8qDQo+ID4gPiDCoAkJICogVkJMQU5LX1NUQVJU
IG5vdCB1c2VkIGJ5IGh3LCBqdXN0IGNsZWFyIGl0IGRpZmYgLS1naXQNCj4gPiA+IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92cnIuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zyci5jDQo+ID4gPiBpbmRleCBjNjU2NWJhZjgxNWExLi4z
YTI3ZGVkNDVlZTA0IDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92cnIuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF92cnIuYw0KPiA+ID4gQEAgLTQyMiw4ICs0MjIsMjIgQEAgdm9pZCBpbnRlbF92cnJf
Y29tcHV0ZV9jb25maWdfbGF0ZShzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpDQo+ID4gPiDCoAkJcmV0dXJuOw0KPiA+ID4NCj4gPiA+IMKgCWlmIChESVNQTEFZX1ZF
UihkaXNwbGF5KSA+PSAxMykgew0KPiA+ID4gLQkJY3J0Y19zdGF0ZS0+dnJyLmd1YXJkYmFuZCA9
DQo+ID4gPiAtCQkJY3J0Y19zdGF0ZS0+dnJyLnZtaW4gLSBhZGp1c3RlZF9tb2RlLQ0KPiA+ID4g
PiBjcnRjX3ZibGFua19zdGFydDsNCj4gPiA+ICsJCS8qDQo+ID4gPiArCQkgKiBDb21tZW50IG9u
IFNSRF9TVEFUVVMgcmVnaXN0ZXIgaW4gQnNwZWM6DQo+ID4gPiArCQkgKg0KPiA+ID4gKwkJICog
VG8gZGV0ZXJtaW5pc3RpY2FsbHkgY2FwdHVyZSB0aGUgdHJhbnNpdGlvbiBvZg0KPiA+ID4gdGhl
IHN0YXRlDQo+ID4gPiArCQkgKiBtYWNoaW5lIGdvaW5nIGZyb20gU1JET0ZGQUNLIHRvIElETEUs
IHRoZQ0KPiA+ID4gZGVsYXllZCBWLiBCbGFuaw0KPiA+ID4gKwkJICogc2hvdWxkIGJlIGF0IGxl
YXN0IG9uZSBsaW5lIGFmdGVyIHRoZSBub24tDQo+ID4gPiBkZWxheWVkIFYuIEJsYW5rLg0KPiA+
ID4gKwkJICogVGhpcyBjYW4gYmUgZG9uZSBieSBlbnN1cmluZyB0aGUgVlJSIEd1YXJkYmFuZA0K
PiA+ID4gcHJvZ3JhbW1pbmcgaXMNCj4gPiA+ICsJCSAqIGxlc3MgdGhhbiB0aGUgbm9uLWRlbGF5
ZWQgVi4gQmxhbmsuDQo+ID4gPiArCQkgKg0KPiA+ID4gKwkJICogVFJBTlNfVlJSX0NUTFsgVlJS
IEd1YXJkYmFuZCBdIDwNCj4gPiA+IChUUkFOU19WUlJfVk1BWFsNCj4gPiA+IFZSUiBWbWF4IF0N
Cj4gPiA+ICsJCSAqIC0gVFJBTlNfVlRPVEFMWyBWZXJ0aWNhbCBBY3RpdmUgXSkNCj4gPiA+ICsJ
CSAqLw0KPiA+ID4gKwkJY3J0Y19zdGF0ZS0+dnJyLmd1YXJkYmFuZCA9IG1pbihjcnRjX3N0YXRl
LQ0KPiA+ID4gPnZyci52bWluIC0NCj4gPiA+ICsJCQkJCQlhZGp1c3RlZF9tb2RlLQ0KPiA+ID4g
PiBjcnRjX3ZibGFua19zdGFydCwNCj4gPiA+ICsJCQkJCQljcnRjX3N0YXRlLQ0KPiA+ID4gPnZy
ci52bWF4IC0NCj4gPiA+ICsJCQkJCQlhZGp1c3RlZF9tb2RlLQ0KPiA+ID4gPmNydGNfdmRpc3Bs
YXkNCj4gPiA+IC0gMSk7DQo+ID4gPiDCoAl9IGVsc2Ugew0KPiA+ID4gwqAJCS8qIGhhcmR3YXJl
IGltcG9zZXMgb25lIGV4dHJhIHNjYW5saW5lIHNvbWV3aGVyZSAqLw0KPiA+ID4gwqAJCWNydGNf
c3RhdGUtPnZyci5waXBlbGluZV9mdWxsID0NCj4gPiA+IC0tDQo+ID4gPiAyLjQzLjANCj4gPg0K
DQo=
