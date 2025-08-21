Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D13B2F590
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 12:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15A2610E924;
	Thu, 21 Aug 2025 10:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JKgsH2q/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 572F110E924;
 Thu, 21 Aug 2025 10:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755773102; x=1787309102;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=46DrYm/WMHUDjXL1dcrS43zbmQ3aigWgeQ336uD4fVs=;
 b=JKgsH2q/GUPpgFtFXYvQWioes+Ue3g+WCXjUH8HFPu9w+YtZGhM+KC/d
 9WGI3w5ko2OFpYS6WyzqPHiR0jRd+QH9HbMvukyJfvB7p/F7du+9XryNm
 NazmfjE590ah2JQQPvM4mmqOJKBWqxDJ5GDMepAH+Rm/JpUJD+lfN/IKj
 hS3lNoMRuL2O/zBUGMNP5hmGytiUuWqDlD8dPmed5T1j+ZYcZnvzL+DaS
 Cssa4fyndnrdy9jJZlhTCQTZ8zL3eXpTPZAm3d31vC1dP7EsyIJP2ivDR
 WOGOMJegBb6UA5bahjWkUh5rDsMbypSOZAsys+pk+IQcAJCZObl/3s3Ot w==;
X-CSE-ConnectionGUID: Ca3+EgeJTLu2ioTQ/n4upg==
X-CSE-MsgGUID: AYHBAbIDQxuwLrOne+H1QQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="83477973"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="83477973"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 03:45:02 -0700
X-CSE-ConnectionGUID: TPgNcM9ARECQNbMG4ytJVg==
X-CSE-MsgGUID: 4JbWdvnLSxGR63xJhGqJ5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="199254637"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2025 03:45:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 03:45:01 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 21 Aug 2025 03:45:01 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.58)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 21 Aug 2025 03:45:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zOtXWVVO/4FJ+q5mObiBwBpPQalCeiqUXRbSIAmybQ5POP1CFgg81cKI6CR2V4zm81PYELk/MWgLDHuGh7F5DzKfenfiWgHEkEGwPPDmkcF1aSG1kpn7K5fFml1YHk/9Hc6VsjqAKhat2T+vZRqO0GwyMBfmdILUqM2eRtne/Nqpb4jHmnXUHZ0/W9FzlgIq09P69/bBxvt8ZAn+UXM8e9KpU/DVqDdiE21XkRcuQoUzMSzIPZfynIk8t8cRDgiF2FyN3ps8LJ5aM/IAJ6KZpmGzLejp4zUDYyfvb49y6yu5Edm7t+ympEvaEk/8+ZM2z2OcTBFGgslRbw6HQEjk/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=46DrYm/WMHUDjXL1dcrS43zbmQ3aigWgeQ336uD4fVs=;
 b=OFbYNUfOVp7XhGj77y+Vc6jnV942SFXoc/+HHFoTK3REWk3JnvOJJPufYR/Y4UUQ026PHq4bTbvvwHMN8SWiOwTJ3GKiNqZwjCI06I0XrsdCudk9Zc3acQwUoynK3loUSjJBg9CqSL4SclY5b9pvNgnJAXXiXGEY1ai8yUyHQtQFKdK3kBD2hCFaxvaPa8ejBblQJGW4f99XcOVGsxgJTM7WBuG4ULQ+rBm8F3hmHSalZceWyaxpcOsku5ST16sd9ZYm/FKw296LC0BMkjpf6IZOM3j211UmjV/Ma3JsK/lzh7+Yko2HIvCPtqlx+eH0OAIwgBPKI0BZvQ9RuPhSjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by DS4PPF0084F97E3.namprd11.prod.outlook.com (2603:10b6:f:fc02::4)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Thu, 21 Aug
 2025 10:44:53 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%5]) with mapi id 15.20.9052.013; Thu, 21 Aug 2025
 10:44:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/psr: drm_WARN_ON when activating disabled PSR
Thread-Topic: [PATCH 1/3] drm/i915/psr: drm_WARN_ON when activating disabled
 PSR
Thread-Index: AQHcDcHsiRahqCF1T06TXxTk9QBKq7RrXHEAgAGZSgA=
Date: Thu, 21 Aug 2025 10:44:53 +0000
Message-ID: <69c60c0394bd8919f5d7b5a36923c036a8159f3a.camel@intel.com>
References: <20250815084534.1637030-1-jouni.hogander@intel.com>
 <20250815084534.1637030-2-jouni.hogander@intel.com>
 <DS4PPF69154114FF5F5FAC649E054503BFFEF33A@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114FF5F5FAC649E054503BFFEF33A@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|DS4PPF0084F97E3:EE_
x-ms-office365-filtering-correlation-id: 2776877c-a545-43d0-3ef4-08dde09fc323
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?WGhCTUlvNDhNcDh2cHo1OTlhNzJQUStGTVE5cjBnYSsyRlFpR2x5SDh6Ykh1?=
 =?utf-8?B?QmVhcnNzZ3pZVE8vekpsbGRyc29iTHFqaEpFd1FsRHcxYmx4NEFmYnBsVzQr?=
 =?utf-8?B?SjUzS1NrQ1VRR3dwOFdKcEc1akM5KzVRMUdTZWhsSHNueEJCRjdHNVQwRllo?=
 =?utf-8?B?QXNEWkJ2QkZzRmE0bVcyVUtjdzhwM3R2R3pTTDY2UWx6aFgweFJlYWE3TEtu?=
 =?utf-8?B?Q1dodGJmMjNKNjdnMWRMamJRUVhxVXQrRjgrVVYycnNuRnBjbSt3eDlZdUMx?=
 =?utf-8?B?QitEQ2FjRW1PMkx0UmRZZ3VFSkRTV080NnJtRkdML3N6SGh1eWp2cmt4VHBu?=
 =?utf-8?B?OVQxQzNvWVc3M0lPeWJuWWdlRlRBb0lZRVozL0tjSGM2MDZTMEUwRXR5aUZw?=
 =?utf-8?B?QTdidVFmc1FMOTUrblFLTkpjS0pid05UTitMNnkwSmx6dG8zVjNFTkZneGNj?=
 =?utf-8?B?SUUxZ3lzWS9ieHJCZjRyYkw5MnI4Y1I0bzBZdUV3YTNnb3RzS0cwOERPQllz?=
 =?utf-8?B?NkU0ZzYxbkcvdUtEVjFZcWE0S1FmSHdYNWk4OEc5Z2ZDM0xxbFZqU2g3K3JS?=
 =?utf-8?B?THh1SUNZalREc05Id0poTUNtU1QrRVR4bmxBbFVJZWUrcHliOXVOUVVSMjkx?=
 =?utf-8?B?ZU4ycWZGYkozMUVSSVVaQzdyRmlYWi80eXE0Y1ZtRUtSN2dpM05adnV0cW1Q?=
 =?utf-8?B?RWVHMmU0OWZhK3RKYkxldUVaTGt2aHl5NWh1STQvOTUzOWo5a1hEc1E3dWRT?=
 =?utf-8?B?SzFONlFCMlpGeEFvTjYrMVNJL0I3L1ZFQnUyQlhsWDdIRkVDUDRFQkkxMDkz?=
 =?utf-8?B?aERDWFozNnY4dE9wM2twQlkyTlZPbzFWZDJVTXpCbTdTaXFuU1FLNzQyK2l1?=
 =?utf-8?B?MjBWUzgxYXRpZUJMbTIxays3RXY1SkJtMUp5cEsrQU1hYzVVcGNSazFqWmpW?=
 =?utf-8?B?bElGNFBkMlh2UlN3KzJLbjRWdm9KOTNQdXUyUFIvN2MxMXFuS2Y0M1hVSmc5?=
 =?utf-8?B?T0FKUjhVNzRIUi9DdUxpaWJ2K3pmN0JCeWtlclZ2UllnaXVweTBRd251OVpQ?=
 =?utf-8?B?LzBHd2FMSktnckVQOXl1Qm1iSFNvd2VybXp4WWg2ejJocFd1WS90bHRuQStL?=
 =?utf-8?B?UGFkSEkrYncycTRpakF6MWVvY2ZCLytvUWRvbzd6Z1RCa2F5ZHUvTEFlemdy?=
 =?utf-8?B?dlQ3cy8xbkw5ZVhralVrZWtqRzBXeDZvNkZSWVBYK2ovUVJVMDU4WitVa3FU?=
 =?utf-8?B?SlMxV2x4aklBdElpY0tPd3ExZE1lbkJhZ1hOQlZMNGtDMzR5U1ZPWDZJUVpt?=
 =?utf-8?B?ZlVVaG15U1N2ZVpZcEhhTmxrMEpLMFNVcjdicDJUV2Uvd0tTZ0o4alI5NmNn?=
 =?utf-8?B?eTRZcnlrQmJORjhNWFhxSzJNQlpYOTBoUGhPaGJSVFRNcHh4Tjc4NHp5Z2oy?=
 =?utf-8?B?UkIzUnVuWWNTa2h0ZmFWbm4yNVV2bDVjdDdTeThjWnVFZnpLNUtMUE03Mno3?=
 =?utf-8?B?OWsyTFliWjh6S0FEdWx3R1V2VXBJaEFBdXMrajcxQThyMXNKNXFmbXVPMmlv?=
 =?utf-8?B?ZTVWeHEzQ3dxNlN1ekhvdVFLMXAvb0ZPY2ZGWnhLUllJQ3NBS1ExUlZ0aVJB?=
 =?utf-8?B?NXdQRnNESUNVc3NTSXN6VkRXYldIeWt6UlFYSngzRmJCWmNyWmM2Mk5XenpP?=
 =?utf-8?B?TkpwR2g3Vy9TYSt3b1lRMDNZSVU2MkpNVk1WYXR5WG1UUlc3VVFBb0lkY0F2?=
 =?utf-8?B?VnJVSm5ibnhpT05WYzEyQmFXeWF4R2JJc2k0dnhpQkNmMmRSTXZoK2FyYUdt?=
 =?utf-8?B?cG1UaFFENWlMa0RlcVVvZkhaUm1oT2FieHdLNjR1NzlPbkVHN0x5V2lFdzQv?=
 =?utf-8?B?WkdHQW5IWHdqd1VrMnFBWU5ZbmNjRVpOVTUyem9zYlRENTJPeWttWmhzbDE3?=
 =?utf-8?B?b1dHSjJqdWI3dDVUeVVtTmJxUUtvL2pkM3dHcjk5bjk0YnozOEFjOW5SdlNU?=
 =?utf-8?Q?6gylny0mGS584Q8Xhz0D52AvKctcO4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(366016)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3I1R002TkhZRXFpNE1hSzRvbFhNbjE1NTV3YnpiaTM4Q2QvaDdYU0x3TlhQ?=
 =?utf-8?B?b2dXbjRaOWxpY0M4K2VSQnp0emRvckVsMlFOQ2k1cDFjdVAzcS80NVRsZU4w?=
 =?utf-8?B?TUtsNHpwNHFSaDZDTWFPT2tleUZ1TXdDcHJDemdQNjdRU2krYjJhdmdqaGFL?=
 =?utf-8?B?RGcyRCtuaGUxSlRmbmNuWlVxVlUydDdMOWJiTHZpYlhicm01N3MvekkwckNq?=
 =?utf-8?B?K3JJa1JBbGgzMkRjZm8zRHpPYnoxNXdjNG5ZOVFEZURYWWNERXVtb3k2Sk9B?=
 =?utf-8?B?YUF0TGxrdXBnOVZpQnVBTXdQTGhJRHNuQWlnaWd5dmoza09nQnkyUkxTV2FM?=
 =?utf-8?B?di84aVRPZktXcW51WllVNDJPWGQwL3RYWTRmRGFsRlVvSExHeHFKaHNPZUtL?=
 =?utf-8?B?enhVb2M1NGxSck9jQlRVUXRpOVB6ditXZ1h2RFVoNE1nbzRMRXJyVm5Sdng4?=
 =?utf-8?B?UEVNUEdNNTlCdUVoRG8wTzhYUHB6bFgrZ2RwYk5vRmkyaVRtQ2dWRmRuRmVE?=
 =?utf-8?B?cE1LRFJCNlBkcTZLVENxTFAyanV5QjErTER2VUsyU0RORWU0bExONFBEK05K?=
 =?utf-8?B?eXlPb1ppZEU0bmZGY0xwMVJld2JSanNveGZMZlNWazNhUldIU21GcC9ZSTJE?=
 =?utf-8?B?eUtXaHo3NGJ4Z1hzMWE3WTl0RmM2Y2ovSDJ2NTlGR1pPcUZ6RWExZWs1dkgw?=
 =?utf-8?B?Tm9YVVd0OUNGVllrKzNpdFRobG9UajdGVzRGSzI3b0NFRDBWT1V4enVlTjJq?=
 =?utf-8?B?cVhWZ1dDd2lqb2VRRGFZOUJRRy9qWGV6V01sZEJHcWJWMlJiY2pNdVJ3WXdR?=
 =?utf-8?B?VmFySlNjWkJCbDN6K0RMdUs0VDNqeUcvaEIycFVRa1NoU0lWRXo4eEFuWHdh?=
 =?utf-8?B?cTBDVGhhMVpnNko1bDNhcEQ1SEVoMHRzYlVvbno4NmR1RXRYWHcxMGFrNGts?=
 =?utf-8?B?V0pxNWhmSkFHaExZTjZCbFgwUWc3SVNnTTVQMXh0OURCOVpNSnFRODJSTWJP?=
 =?utf-8?B?V21qUW80T1NGKzh3UzhOb24zSDBQSEtXSUlBdEtaMXNRWjNoRFd3cVdkSHdQ?=
 =?utf-8?B?MjZqRE1OU1V5akc3NE9objJidmkvR3kyc1dZOFBwRmhXTTQyYkxyb2VESnFr?=
 =?utf-8?B?QkxHTHMzd2ErWmxWMlZHN0FTVElla1lkM0VQSXpHUFJFQ1BpU3BOdTZLdFZl?=
 =?utf-8?B?NmtIaUlVWFlPOGl4emxQeURDMzk4M1JnbzVXRUtZZE8xYS9GQUlIZC9nbjNV?=
 =?utf-8?B?STVxWThZb2gvUW5ZVVdnZjFwOUU4K1p1ZGFadTNRR3NucjB6eXZRUW1kRXc5?=
 =?utf-8?B?T21PQ3NoYkVIZk9idit0RUltakpqSDcrNDRiZEo3bFZEaXlUQ0dXYVpkQUdC?=
 =?utf-8?B?SExuSWxwSk1CK2xWM1ZFMENuUGI3NzR0ajBrRWJuQnBON3ZwcTQ3dDY3RHZO?=
 =?utf-8?B?dTdKK1dZR0tnbHRYWHBMTmhVV3VYTmhDcEdrcnJPZlhVQVdLUGpJc1J6azRj?=
 =?utf-8?B?ZmExbzNQemhjdDdtVDFXUnRyRC9XcjVZREJPUHR0QUNmVjg1elNlQ3dvQXhw?=
 =?utf-8?B?Z0FnS05TUnVzUUxnbTMycDkrRWtCU25wT09FOEowbUcvWStON3IrZTRTc2Nv?=
 =?utf-8?B?K1hiQlRNenVhKzhGQnJhTWJLOXdKZERMTER4SmxvQURjR21aWnNuMDRrTjll?=
 =?utf-8?B?QVQvUk91RnluWkRhbVlNTTVjYVM3dVdaVW5nSm1sMGMweGF1WDlBbnRBa3h5?=
 =?utf-8?B?ZTRUbWw3cVc2UjM2aks0SmJOWktYWVh5QnB6eUs0QUtzMU1BZml0Y1RLMzRO?=
 =?utf-8?B?MlkxbERoc0dsVGJ1dTNVeUxPL2p4SGJibW9EYUtaUUYvdk1XL1ZhUGcyYm1S?=
 =?utf-8?B?RkZKRUFUdTdlZWh3WDZ0VHg5L2VKdzRvS2ozTlZBRG5xWjlZR3Q0ZmJuckFw?=
 =?utf-8?B?aDk1V1kyRGxSR3lHR3VkUTV1dlVlY2hEcTNJTWtDcW1FcUxkZm8xeE1xaEsw?=
 =?utf-8?B?WWd1UUdrVVlIWDRKbkxZS1NFbmNESXNBc2VERHVxelh4S05ZSllWWTlmdEVl?=
 =?utf-8?B?aUhybS9Lb0QrNjNqSmMxVnhtUzJuRnFtTVBncXczaEV2MlRvUU5ZMWxoQWU4?=
 =?utf-8?B?c3daQWFDWHdQL2thTnB3b2FIZjIydm9hUHdvcnUxeUlwQ2dJREI4Y2NWdDMx?=
 =?utf-8?B?c0pQRm1MVmJqYUxCc3BNWEtPRTQrMzN4MXFWeWJyTHV4SjFWa3llZDNDblZ1?=
 =?utf-8?B?ZkpxL2FyZmxGU2d5ck9GSElaeGNRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4B53EE15952BD24CB59180593AAB88A5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2776877c-a545-43d0-3ef4-08dde09fc323
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 10:44:53.4665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LkiZYPWPl8O5PO/ZfwqgCPvXnQjiAi4oLwxYXzoAAIYx2EflvzFqX9gMi3r5pvMn0lC7zWSis+gEFTU3oYWnpTjgS28KYp44rT9KudaX0ks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF0084F97E3
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

T24gV2VkLCAyMDI1LTA4LTIwIGF0IDEwOjE5ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwt
eGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+IE9mIEpvdW5p
IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IEZyaWRheSwgMTUgQXVndXN0IDIwMjUgMTEuNDYNCj4gPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+ID4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwu
Y29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCAxLzNdIGRybS9pOTE1L3BzcjogZHJtX1dBUk5fT04g
d2hlbiBhY3RpdmF0aW5nDQo+ID4gZGlzYWJsZWQgUFNSDQo+ID4gDQo+ID4gQWRkIGRybV9XQVJO
X09OIGZvciBzY2VuYXJpbyB3aGVyZSBQU1IgaXMgYWN0aXZhdGVkIHdoaWxlIGl0IGlzDQo+ID4g
ZGlzYWJsZWQuDQo+ID4gDQo+IA0KPiBSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCg0KVGhhbmsgeW91IE1pa2EgZm9yIHRoZSByZXZpZXcuIFRoZXNlIGFy
ZSBub3cgcHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVy
DQoNCj4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgMiArKw0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygr
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gaW5kZXggOGJlYTJiODE4OGE3Li4yMjZkNGQxYzdjODIgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTc4Nyw2ICsxNzg3
LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2FjdGl2YXRlKHN0cnVjdA0KPiA+IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gPiANCj4gPiDCoAlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIGludGVs
X2RwLT5wc3IuYWN0aXZlKTsNCj4gPiANCj4gPiArCWRybV9XQVJOX09OKGRpc3BsYXktPmRybSwg
IWludGVsX2RwLT5wc3IuZW5hYmxlZCk7DQo+ID4gKw0KPiA+IMKgCWxvY2tkZXBfYXNzZXJ0X2hl
bGQoJmludGVsX2RwLT5wc3IubG9jayk7DQo+ID4gDQo+ID4gwqAJLyogcHNyMSwgcHNyMiBhbmQg
cGFuZWwtcmVwbGF5IGFyZSBtdXR1YWxseSBleGNsdXNpdmUuKi8NCj4gPiAtLQ0KPiA+IDIuNDMu
MA0KPiANCg0K
