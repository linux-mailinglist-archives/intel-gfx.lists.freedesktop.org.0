Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Af4HDJNwmnvbAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:37:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B683E304BD6
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4499B10E484;
	Tue, 24 Mar 2026 08:37:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OuCCDwEK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B97C10E484;
 Tue, 24 Mar 2026 08:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774341422; x=1805877422;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NyWuN9gzACEbQmTac9onl9MLdtL0FDRcJBXgi9Mlw3Q=;
 b=OuCCDwEKY2uEnNZSO8nkS0RmaV25vMEK9axZxYkiJZPFzKPq1xdGgptu
 F3eV72YlOqTTmSNmCQLC5sZYFHnImZsaZbqG+6F+wltWlP/AxC6PPyaP7
 UnkD20kuQs3U8Tlp8CDtUTzPYgx6RJ5g0C0FCLMfDbHbHI5bmOoW/or3N
 vqDYBJEGpvyLYfLQxE9LnynyoIgHWiYYV6u9VLx6T5b+XAzuAEuwqXRHG
 CrR8RbTFid5ksuavPUe6zKf7ciAEZKx+mhvq9rmoZagEghAzPod7c8zVJ
 g7uoetNyn3BaXLc5c8s4B40KaAG3Gkc4TuhDU6GWTLaQnW85Ig9Awr9U8 Q==;
X-CSE-ConnectionGUID: UW6WU1lITiiM4RlY3l72Bw==
X-CSE-MsgGUID: sM4e8WSUTa+SYKm6cSAr7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86425669"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="86425669"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:37:02 -0700
X-CSE-ConnectionGUID: nhAv6tjZSlWBf8Uh67Ii2Q==
X-CSE-MsgGUID: R+z1e9RaRHOApbz6MoMWVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="229218804"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:37:02 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:37:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 24 Mar 2026 01:37:01 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 24 Mar 2026 01:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dBqgMQOdhWGVZA5b98tB3t0NbB6+LlX0mKJYvL381ZR8gfRVWCh++a3fOpArwcZBQpP6Buu4S5Kppd5pLtrvlQ7fM7l9iKtQGwt4SL7nCYKwl+iA0RN5NVB40zLySBat+bjLGXoNvXUOTpkYIpneLS0+MVNPd78n6Chv56Qllxj3n/oNljKhr7y/519fpaOM8I1TnuCRXeGLLoC8Ue0vtsdYTyNVIW/Gx9QrkmUfZ1W7zP8pId6nXjqL5l4AFjrTPkxJuvQ96+XGZLKiXhN4oDuazafIneZjnk5Hye6bYNr8L4DiwaxYwtCpX71viRU8WigFYoZYrGWWM9W3/cOfSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NyWuN9gzACEbQmTac9onl9MLdtL0FDRcJBXgi9Mlw3Q=;
 b=mZxl1WS+34tvHXMujohkg2DWjs40U2u+FbkRV5QkiMwnM2S3yvMh8lQjIXeStgrOh89j/GEOYImk2Fu9IQD/szaH8Gdy7TAQgxbVWyy4ljcYgKtCM4XyxePW01EHwgOzgyoViMXGz3/edieYbc16dd9RjljCdoFeJiTTZmDXdpOqGIzHJGQmVAdtiH/74qwMR0tU8ttE1NxAk5Q80alSIeJ4FGRTqO9LCde9ntYIdeC3MOyYyR3dYlvvAVKz8U22iOXiHuqH8u8gexc//rR7HRSHDmFmvdV1USDuKHhJQYmI4ZAGcMUEsfaE2sAqvxpkEvjr6xMsm62zyjOoehSgDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9745.20; Tue, 24 Mar
 2026 08:36:57 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9745.019; Tue, 24 Mar 2026
 08:36:57 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Topic: [PATCH v8 2/3] drm/i915/display: Add hook to check optimization
 support for Intel platforms
Thread-Index: AQHctrlcjV4Wld4Ke0SvtQb42JzHErW8HaSAgAACeoCAAURYEA==
Date: Tue, 24 Mar 2026 08:36:57 +0000
Message-ID: <DS0PR11MB8049E02720332249E047E342F948A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260318085642.3621166-1-animesh.manna@intel.com>
 <20260318085642.3621166-3-animesh.manna@intel.com>
 <c7a00eac4f5fc2d606db15d631c0ceb2b769edd4.camel@intel.com>
 <a583e5c76b0569111442005062d39f8a9db72cdb.camel@intel.com>
In-Reply-To: <a583e5c76b0569111442005062d39f8a9db72cdb.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SN7PR11MB7113:EE_
x-ms-office365-filtering-correlation-id: 596b1f02-ebb6-4599-9df3-08de89808293
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|22082099003|18002099003|56012099003|38070700021;
x-microsoft-antispam-message-info: BT/pD7O/rjfNLp/0DcVPgfwwuEvQPJrBx0cG4+0xIiUPLTV5KqeHVOffFcvbFJDGdIogtbvXhqARqw3MsWg8IkZPTyfOXgro59MXQPZzokacahF3vSTVg/N5TAOk37oOGhCS+6E1He2z+bUVqlMlGOVdPDOKTdyLJGbKkGNcHsZal7Ph1av1QKJQX7IdW0c56zKOkY+G1+ifL/ttehiYbhaB5QsBp2MX10jBOVJf2oQ9f/diPsc8siZSTVVhi/oxpqOqA9WNfqXpbvx2SdGVS6L93dhlfhjo6B6DM3BhwvPA+zLalxgTKmvrzXwhYePqyyOamjrUUuS8I6zE/MTpCJPtc7z80pBcKabs65pU6KIeNmA1lWN5YR2wiY2yWcj/p1BkHushd76Cl6ZV67cwVa7oCh81uXQg8ErzIYEuyzZ+mHt2UIOPPmo3fXMNj85OjqN8ml0yH7qlrbf2mwyg9CaOEQWscNH5zg7bOY2HuNtp8fswsr+q8Li+umFgrMArPiy1F1hZaxpztXY6oYG2Z7FarykwR9d7lleh+hwRyWt8FARCT80TxCMhhKqEqR6zlQ3QEvlHsLtTc7zTVl4WFYHOUUeW5fN9oaZuSW3/XkLFCcWLToeBYQIK9huizE8JtkvqD99QztGcO2c3g/osbiuqRM73tgw7/YZ7BwNp7+VH792/R+t8f5URIJUdSKN9PWKsKc2wMDjq1qAgCEtKl+ySPTwkBbjnz8oeWrLcoqS3hBQ20hEFRzkqWyZ+Y6uul5bWI9iE3nf/AtqShh8B2UtskUfJjidH1peZAWBouEg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(22082099003)(18002099003)(56012099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L1l4SU4xWS9rZ0RscXE2b05RMVRlVnNVTE5Fb3B4dDB3TWNoeWhBTTJITllx?=
 =?utf-8?B?L0FoZVp6aHdTL1QzZldUc1ZNWnBINkNhc0t5cFVLSEJ1SEQ0c1I3VFk5RHY5?=
 =?utf-8?B?NjRZZjhhRDVsQ3g3a2dYTlg4dG5JRHFzQWxEd0JHdGpJTmMxWk11MlpYYUFZ?=
 =?utf-8?B?b0xzN1NWUWRzL2pTdTFOdEhiREhDeWc0c1JkNklwT0o1K1lHMC9IU0xxM05H?=
 =?utf-8?B?TWx5S1dEZzUvUmRkWFRVaGxRL0pZdGRmdHorbHl6UmtPb1pnOHg1TXQvbDNt?=
 =?utf-8?B?cFJLK3FjUFlkb2hPMzBiRWVYZnlGS2JyZlNIZGtHZVdIbDNmY0E0dlI5aU1X?=
 =?utf-8?B?Z0ZUdExuZDFvc0VpVGQ2TzhFNlhud0ZYOTdXM0NOd3B3ckJsS2hCNyt5a3FD?=
 =?utf-8?B?TmU1TVZ0RGZXUytGeENxQWt3d0ZpYjZHM0N1c1ZuK1lsQ2IrbjFxWUdQWkdl?=
 =?utf-8?B?Mit3MkNiL0F5VnpuY1BXMXZQWEdndThCNThUejE3UjhwcHlTdUZ0RkZ4RzBp?=
 =?utf-8?B?b1dMMCtHQXo4ZlBxWDRZVmlQSVVXRTUrRjZBUDN0d2tQY0FHZTVsRitiSDdn?=
 =?utf-8?B?Y09iUTJQaE5VZjJaQ0ZLRzRycXJIU1QxZElwbXNmYzlhSFppRmhIb1llUDZL?=
 =?utf-8?B?UGJJZmxKdkZkZWQxUUJHTXNMVzhYaUtqMWk0U2N1SVhYUVFFZ2Z5R285TGIv?=
 =?utf-8?B?Z0FHcXUyVktuN1lCblNXZkpicm91WSsxMkJzSzd6UXR0UXBsWDB4SGhFRFVT?=
 =?utf-8?B?WTVjU2N3VnJGOGxSQjlLTGtYYTB5UHBWM0NweFRnMC9WNWRCN01odnN2TzlY?=
 =?utf-8?B?ZUhqR3lEbEhGbWJvbmVQRllPdmNIaHBxRlRJUk9XYzBROW9EN1JteXR4UzQ5?=
 =?utf-8?B?ejdZa3R2N0JrNHBZeHFWZlVRZE9wTE82d3RCVUlUMHNOaGorRzFuSjJpeWNC?=
 =?utf-8?B?SXZNcmZmVjhBZ3dnamYvdm95YkVnZnZFZzhETFpTY3J5c1hkUXAxVnNHVGRU?=
 =?utf-8?B?M1czVDMxa2t6T1dTZVhSUWZtTDdGUWhOWHlQSzRnY0NJUjR5R2JwWUU2djBn?=
 =?utf-8?B?NXdvVFVBbG5IRjlGaUpkQmVWMmVzOUdsaHJWSHliY0MwSllHNXRsSXQxMjIz?=
 =?utf-8?B?WVArNnhMc1BvVVhoQUFCNnFtZVVTMktEL0lWOUhkNUJ4QkhFVHhLYmxjRERQ?=
 =?utf-8?B?Y2pWZ0dLdE85TC9LRHlITVRMWEhBK1hzOWhoMUVyYlRZRm5oTDlGcnk1ZWE2?=
 =?utf-8?B?ZjgyQnc2MnE4OUZsYjBkbzltWTlVK1MxNTNiaTcvbWRWTk9IdDlWeWp4ZWdV?=
 =?utf-8?B?ZDZJOE1ONnEyclNDQ3JsdVZqUVFkaTVUYXpHRStHSnU2c2hBYlg0UjlaRHFm?=
 =?utf-8?B?ZHJoaHVrWTRsbnVQb3NLOVNiQXM1eHoySUVaQWRVOXkzK1o5VGpWQmt4MXlN?=
 =?utf-8?B?QStHTVBLc1NOSG9ISndOY1NKUytROTU2d0Y2Mm1wU1lXU2dXQnRqYzZjbmdU?=
 =?utf-8?B?UHdSQTVwaUFCa1hrMjZ0ci8wMDl4ZlU4R2VZV3dtdiswdEhwd2c0b04welM5?=
 =?utf-8?B?LzU5dWJFN3FkdWppL3RUNFQ1U0xiR3dMVU5yQmRIWlNlR3hPME1GeWdLckw1?=
 =?utf-8?B?b3dmYVF4NTlPeUhpcGFTU1A4Lys3SS95dVltbnpobEhKdVdWVnVJL0RrRi96?=
 =?utf-8?B?ZTB6ZGhRbVhMYTE5OHFveTc3MDFPN3lGc0FkcjVYa3NuUkV5Si9JTk13WXEv?=
 =?utf-8?B?YzdOQUs4aTdFV1h2amZiQ3oyenBrNlAwT3ZRdlJMZEJIUnRCNGVmOW41Yjlk?=
 =?utf-8?B?Q3VWazdKNVdFOFUxRHRPWXFEaWZpTk9kbGdDNEVRR2FQenVYazJTRjAwak5F?=
 =?utf-8?B?QXp1VDV5eHRwS0VSZTN4M0ZVbjBHNzZJNlJyQnpEVFBSVk96dklBcEZta05m?=
 =?utf-8?B?OTR2anlQQTdIanRXbWttS0Vva2paZk1Rd2hiNmVuMXE5dEVGMmZoRytYY1pW?=
 =?utf-8?B?ZWxWcHRtYXI3aEtNcUJCM1ZjdFg5aDk5alhUNlZzNzN2bkNRbjRralJ1UlhE?=
 =?utf-8?B?T0xCd0IzdElGdmtrdUQ5ck9Yc3lSRktPN094OVB3THdDWXlrUWQzdUpia21F?=
 =?utf-8?B?Vm1xdVJnaWJKYUgzV2VKeTdZaE0raEJFQTFmNlRzV0RPTW1RdXdmN1pYVXdG?=
 =?utf-8?B?ZHJXUklNRjhvU2RkeUk4aDFCdDlwRG43bzRlSXdJUThGRE9sRWdZejhUeGc2?=
 =?utf-8?B?Uk9relE2K251M0dOSjErb2VlUExvMzVmUXFyUVRqaGo2RjJlVUNleStEenRn?=
 =?utf-8?B?ZmZFRTcrUjFWaGdGN2ZxRkY4M2plNG8yMnRlZW9XUFcrWkR0MzUydz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eGxtzykW1ggLPa3NadoApFIaRUDL74amWjiwdViMNMIi1RcflKsrU6P+SPFXe8k7waFsHhxCmp4Y60RLC9UtzhKsE+olPsSp4KSMhZ2WgyC4VUndpuJxo414DmHQ3R/7AsQeLSztGV/amZZLgI+PH1A0cHP/5TTw80t+imvsDaBOHcoG3mgnJFHXYZjSBKtnC3Rs9RwLyPSHjb/xbl97w/XxktLJhYO8gwOcOI7P56qIygQoqNoRtcJaByGeulecIsNkD01I6KhcXfhfNt2HEAxp8+3tsUwtjO2/lTKcJTc5sJ17ZiWAEmSzC1W+JKPPE/iy2UH29iO1dmzLqRYa9Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 596b1f02-ebb6-4599-9df3-08de89808293
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Mar 2026 08:36:57.2283 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: P5DKWL8r0aeOzjAKgCwByo97oebaelgsQoepXbTS48EEDSBEuoyv8udbEp9IZel7S19xYiibDcZns76hzudfVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B683E304BD6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgTWFyY2ggMjMsIDIw
MjYgNjo0MyBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBNdXJ0
aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4gPGph
bmkubmlrdWxhQGludGVsLmNvbT47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjggMi8zXSBkcm0vaTkxNS9kaXNwbGF5OiBBZGQgaG9vayB0
byBjaGVjaw0KPiBvcHRpbWl6YXRpb24gc3VwcG9ydCBmb3IgSW50ZWwgcGxhdGZvcm1zDQo+IA0K
PiBPbiBNb24sIDIwMjYtMDMtMjMgYXQgMTU6MDQgKzAyMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90
ZToNCj4gPiBPbiBXZWQsIDIwMjYtMDMtMTggYXQgMTQ6MjYgKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6DQo+ID4gPiBBZGQgYSBob29rIHRoYXQgdXNlcyB0aGUgZHJtIGNvcmUgdHVubmVsaW5n
IGZ1bmN0aW9uIHRvIGNoZWNrDQo+ID4gPiB3aGV0aGVyIHBhbmVsIHJlcGxheSBiYW5kd2lkdGgg
b3B0aW1pemF0aW9uIHN1cHBvcnQgaXMgcHJlc2VudC4NCj4gPiA+DQo+ID4gPiB2MjogTW92ZSBE
SVNQTEFZX1ZFUigpIGNoZWNrIHRvDQo+ID4gPiBpbnRlbF9kcF90dW5uZWxfcHJfb3B0aW1pemF0
aW9uX3N1cHBvcnRlZCgpLiBbSm91bmldDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4NCj4gPiBSZXZpZXdlZC1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4NCj4gPiA+
IC0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5l
bC5jIHwgMTgNCj4gPiA+ICsrKysrKysrKysrKysrKysrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oIHzCoCA2ICsrKysrKw0KPiA+ID4gwqAy
IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuYw0KPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+ID4gPiBp
bmRleCAxZmQxYWM4ZDU1NmQuLmI4MWFjOWEyZDcyNyAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gPiA+IEBAIC0y
OTYsNiArMjk2LDI0IEBAIGJvb2wNCj4gPiA+IGludGVsX2RwX3R1bm5lbF9id19hbGxvY19pc19l
bmFibGVkKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gwqAJcmV0dXJu
IGRybV9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChpbnRlbF9kcC0NCj4gPiA+ID50dW5u
ZWwpOw0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4gKy8qKg0KPiA+ID4gKyAqIGludGVsX2RwX3R1
bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkIC0gUXVlcnkgdGhlIFBSIEJXDQo+ID4gPiBv
cHRpbWl6YXRpb24gc3VwcG9ydA0KPiA+ID4gKyAqIEBpbnRlbF9kcDogRFAgcG9ydCBvYmplY3QN
Cj4gPiA+ICsgKg0KPiA+ID4gKyAqIFF1ZXJ5IHdoZXRoZXIgYSBEUCB0dW5uZWwgc3VwcG9ydHMg
dGhlIFBSIEJXIG9wdGltaXphdGlvbi4NCj4gPiA+ICsgKg0KPiA+ID4gKyAqIFJldHVybnMgJXRy
dWUgaWYgdGhlIEJXIGFsbG9jYXRpb24gbW9kZSBpcyBzdXBwb3J0ZWQgb24NCj4gPiA+IEBpbnRl
bF9kcC4NCj4gPiA+ICsgKi8NCj4gPiA+ICtib29sIGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6
YXRpb25fc3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKQ0KPiA+ID4g
K3sNCj4gPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+ID4gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+ID4gPiArDQo+ID4gPiArCWlmIChESVNQTEFZX1ZFUihk
aXNwbGF5KSA8IDM1KQ0KPiA+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiANCj4gSnVzdCBub3RpY2Vk
IGluIEJzcGVjIHRoYXQgdGhpcyBpcyBhY3R1YWxseSBzdXBwb3J0ZWQgYWxyZWFkeSBvbg0KPiBE
SVNQTEFZX1ZFUigpID09IDMwLg0KDQpUaGlzIGZlYXR1cmUgbW92ZWQgZnJvbSBQVEwgdG8gTlZM
IGR1ZSB0byBsaW1pdGF0aW9uIGZyb20gc29jIHNpZGUsIHRob3VnaCBkaXNwbGF5IGVuZ2luZSBp
cyBzdXBwb3J0aW5nIGl0Lg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4gQlIsDQo+IEpvdW5p
IEjDtmdhbmRlcg0KPiANCj4gPiA+ICsNCj4gPiA+ICsJcmV0dXJuIGRybV9kcF90dW5uZWxfcHJf
b3B0aW1pemF0aW9uX3N1cHBvcnRlZChpbnRlbF9kcC0NCj4gPiA+ID4gdHVubmVsKTsNCj4gPiA+
ICt9DQo+ID4gPiArDQo+ID4gPiDCoC8qKg0KPiA+ID4gwqAgKiBpbnRlbF9kcF90dW5uZWxfc3Vz
cGVuZCAtIFN1c3BlbmQgYSBEUCB0dW5uZWwgY29ubmVjdGVkIG9uIGENCj4gPiA+IHBvcnQNCj4g
PiA+IMKgICogQGludGVsX2RwOiBEUCBwb3J0IG9iamVjdA0KPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmgNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuaA0KPiA+ID4gaW5kZXgg
N2YwZjcyMGU4ZGNhLi4wM2UxNDc3MzZiNjUgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oDQo+ID4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5oDQo+ID4gPiBAQCAtMzIsNiAr
MzIsNyBAQCB2b2lkIGludGVsX2RwX3R1bm5lbF9yZXN1bWUoc3RydWN0IGludGVsX2RwDQo+ID4g
PiAqaW50ZWxfZHAsDQo+ID4gPiDCoHZvaWQgaW50ZWxfZHBfdHVubmVsX3N1c3BlbmQoc3RydWN0
IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gPg0KPiA+ID4gwqBib29sIGludGVsX2RwX3R1bm5l
bF9id19hbGxvY19pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKTsN
Cj4gPiA+ICtib29sIGludGVsX2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKHN0
cnVjdCBpbnRlbF9kcA0KPiA+ID4gKmludGVsX2RwKTsNCj4gPiA+DQo+ID4gPiDCoHZvaWQNCj4g
PiA+IMKgaW50ZWxfZHBfdHVubmVsX2F0b21pY19jbGVhbnVwX2luaGVyaXRlZF9zdGF0ZShzdHJ1
Y3QNCj4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpOw0KPiA+ID4gQEAgLTc2LDYgKzc3
LDExIEBAIHN0YXRpYyBpbmxpbmUgYm9vbA0KPiA+ID4gaW50ZWxfZHBfdHVubmVsX2J3X2FsbG9j
X2lzX2VuYWJsZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcA0KPiA+ID4gwqAJcmV0dXJuIGZh
bHNlOw0KPiA+ID4gwqB9DQo+ID4gPg0KPiA+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbA0KPiA+ID4g
aW50ZWxfZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoc3RydWN0DQo+ID4gPiBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gPiArew0KPiA+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4g
PiArfQ0KPiA+ID4gKw0KPiA+ID4gwqBzdGF0aWMgaW5saW5lIHZvaWQNCj4gPiA+IMKgaW50ZWxf
ZHBfdHVubmVsX2F0b21pY19jbGVhbnVwX2luaGVyaXRlZF9zdGF0ZShzdHJ1Y3QNCj4gPiA+IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpIHt9DQo+ID4gPg0KPiA+DQoNCg==
