Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B8799F4757
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 10:23:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37F2810E88F;
	Tue, 17 Dec 2024 09:23:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IV1Xwm5/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407F610E88F;
 Tue, 17 Dec 2024 09:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734427403; x=1765963403;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=UaxB8LKtX2eUaHKp0Ap4kDQcS4zpo1hm/wXi3+Rv8IE=;
 b=IV1Xwm5/JJsrCbA9kVRqbYhA1Pl2HCTnoTPeC8BoOW8Q6fFmVe7es9zW
 isMINDXSV/QZaQXMozsOGCstVEDn6E5ifQnMe4oVCF2ptT4oVqmjsNyxU
 vvqgJ053hn8sUYsQupHsQg4U4WhbxbTaXBd9qJAXz7P1cX7YHdpdmUTsO
 0hfcaXbYrm6Qxs1pEtA5c2kZ5Rm5tJY3BRaQvGblmanDJUtmGg0YudqS3
 q9wz4W9Q/PQoY42a5w2Qr8o32/AQKUYluBn2C6nZsranQoGlw5gDD42m9
 Yvuzoo2tJkiNHsmmras52fAu2ESAZXNntQKcYVpBef0C5WSKa2Yr4iwTk w==;
X-CSE-ConnectionGUID: gEYPoqXtSx+v+hjd5xXJ+Q==
X-CSE-MsgGUID: A6h3S0WIQtCAlgBHsdnZkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34165706"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34165706"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 01:23:22 -0800
X-CSE-ConnectionGUID: iTX6I9Y6RealEd1xcxlRPA==
X-CSE-MsgGUID: 8ke4M6nzSK660BfafKUOUw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="97922744"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Dec 2024 01:23:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 17 Dec 2024 01:23:20 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 17 Dec 2024 01:23:20 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 17 Dec 2024 01:23:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yf34JKNiiuTMV1iXuMH90dSTXj8HQhRg5N4SThNmqnPkhwd61opYCYbwBbxko4UH4+6sZYSRo0JQ1er8Rb+nYaGRYTTuXFXga5IPRjbEvdVthbiFqkRwXt0cKI/JB5h11o3y+IKXmih64UiaWuUmTOq/fFWWuAO8lYT3YS/oAtPVHioresvinj5+Mi3KMjnB5zJX61HUMei5TPgF7aBn15ULaJ4ReHl7q5jskvTcpgti8y1s42ITkscDPC1acbYIpLNpwrFu3jVkdaDyigPgtLaD0ojcjxeyV9PZ6zLPOZwcVWUFLwB+1AvIRCfL99IQfZyRZBlJfjwtB8jBVEFH9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UaxB8LKtX2eUaHKp0Ap4kDQcS4zpo1hm/wXi3+Rv8IE=;
 b=AitxAQ8Rb9suUO7TfWrPfGsZVhdnvf7kj2QPaLb2b1mwNzN5tXt0wGAydJ5oPn9scyrbUc5Ki3GHFT6WPXedgaYUZVMJIZjsv5TvUsRTsBYfnqPY7a286bo/FBRR1NIeKIeCCcTVP42+YY2kX5AgszmIZBeJPtLUpkr8MUlVzwVNI+monxPycgxLNy8UCd6bdS0BPXpTWjcRYgRskrd9WZBMmwRuyP4dm4lAfy38S177DbXX4X+HR4WfM/ITMovFJSn6mC2uUgXwmZULafDXsHO1s2sf9YGpRGkzPpu8tZPEaIPtaeyVcrH14yvD5IFe1B5g7QVzXs2nyuWlhRNfXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6782.namprd11.prod.outlook.com (2603:10b6:806:25e::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.21; Tue, 17 Dec
 2024 09:23:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8251.015; Tue, 17 Dec 2024
 09:23:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: Re: [PATCH] drm/i915/dsc: Expose dsc sink max slice count via debugfs
Thread-Topic: [PATCH] drm/i915/dsc: Expose dsc sink max slice count via debugfs
Thread-Index: AQHbTUFSs9OFvLQEKU+vdVAzoZfYZbLqMBgA
Date: Tue, 17 Dec 2024 09:23:17 +0000
Message-ID: <5fc156c887052cb35d13b0fc17fef3afed4d89f2.camel@intel.com>
References: <20241213093008.2149452-1-swati2.sharma@intel.com>
In-Reply-To: <20241213093008.2149452-1-swati2.sharma@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6782:EE_
x-ms-office365-filtering-correlation-id: 2470b251-3348-4ec6-8a37-08dd1e7c70af
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?ajhaVXVDVXU0Z0RJRUhid3k2WjdIa0IyZ3ZickZTSStGdVhTRENIQk9qYVcx?=
 =?utf-8?B?dVhnY1JKYkQ2dk52VGtkRW1zWFZhL2tKOE1kcXFoMzk4ZjRrWitYbjZZTC85?=
 =?utf-8?B?aWhrOU1ERzhta0xpY0RtSURsZ1c1SWEyenFnc3Y1VG5zaVJoL1IrUVM2UnBm?=
 =?utf-8?B?d1EwWk1NMHAyY0hiUkhKcWpEN3F0dU1GcG01NTFmZFBsNzhpamRZS0xoMkdu?=
 =?utf-8?B?dnFQZWJTYlAzZEx0UXhFWS9NOTFHZVhoUmc3RlliV05tcTdGaTg1QktDY2dY?=
 =?utf-8?B?Y2J4c3g5eVk4Y0xTWXdiZUl1a2tsQ01ZSzZ6YnNwbm53Si9uTmVvQzJrOU0y?=
 =?utf-8?B?NzZqaURxQ1c0NHVnaW5OVFNxMVJkaFdxTnZnV1k4emwxd3RzZU0zVGFoU0Jm?=
 =?utf-8?B?enFleWJueXQybzhCOUtmS3cvWmJ4bU1lek1VQzgwZGNqUWpnejZOK0ZiSnk5?=
 =?utf-8?B?WkEzQ2hQQmowa0MxM2RYQUdEc0NyS1lvQ2dPWE5DUzZyWHAxajBVV3EzREpl?=
 =?utf-8?B?eU15NnB1Ym9HNThuOTh5VERGUVVVTlF4SDZVVmxPSXN6MmRiQktwRzlJZHlR?=
 =?utf-8?B?QzU5STVlencxNDhVcVJiSktzcDMzMmgvRnlFYm5QMGpLS0hvaUxSQzVJQnJk?=
 =?utf-8?B?OUV2dkFuVUdBQmt1YXlVZVZ6dzcrdkpvVHdxb1VRa1RvcTFuZmhRMW5Dam1a?=
 =?utf-8?B?bllwN0xNQUlOT2lVKy9SdmlaSWU4cC9Fa2ViSGpoT2pjbUtnOFliY0M0UytJ?=
 =?utf-8?B?ZDd2dDMzY090U0dZeThVZDB4QmI3di9YUStOczdVU0hPQURTRytWcHNtL1ds?=
 =?utf-8?B?b1dObWRyQS9NbXlWWHdVbGtCWEVHa2ZscmJ3clpEN0xpNWJSR1Nta200T3hH?=
 =?utf-8?B?Q3pLTFdhTlF6TlUreWJRTThRWGpYbGl6WVBqcU1XTkNpYlVIWFcwM3NTSkNV?=
 =?utf-8?B?S3BCVjJ1NlNtZGovQUNxa2JEaEhqS05PdXJVZ2JLZUJXT2s1WUxjb1crTFRR?=
 =?utf-8?B?bGgvLytWVmhCZDZMMzdjZEU4RU4veWJESW1YbUtkQi9NM2s0aUV6UUEwUkUr?=
 =?utf-8?B?c3J3OFBTbkpRNEJVbUlNZ1p2QVVHaDIrZGs1SlR5a2IxN2NiR1NBTjJKcEp0?=
 =?utf-8?B?Rmx0QzVwb0JIVGNnc3V1bUxudE5WTS9oWUFjWDJoZDNmTVR6SE9aL0ZVeTBN?=
 =?utf-8?B?WmRHK1VLNkUrY2tIV0pUc085ZnNRMlk2YVNqckVxWEhXWFFSM1ZFbWdreUJY?=
 =?utf-8?B?TkF1WERVSjhEODYvUGxYaXJZQVlMd3hGamVsK1BNUDl4NHJYUmgrQ3F4L3Fm?=
 =?utf-8?B?NHA0OUpzVDBRc08vZkROSmRBUjh0T291QXpLUmNvSmM4MkkvOGQ5RmtvYnlT?=
 =?utf-8?B?QUNsWnhVYkp2Y2NVMVovQmc3RjNuay8rRVBJd05CcFpJckFXUFV3azdvOEJG?=
 =?utf-8?B?MU5jQVV3Umh5N0t3MGhRRnJXMVVYbHFMazN2SjY0THVaYTJpTmRsbXhNR3k2?=
 =?utf-8?B?a1N0ZFo5ZHlvNkdJT2xHMy9HNG5IVTNNbkNJZmU5NkFveU1jZ2F2ZGthbStL?=
 =?utf-8?B?NHM2Q3VhcFQ0aWdqblRudEhrK0wvNEI2VDZLT096T0tGT1RlS2I3N2hUa25m?=
 =?utf-8?B?bUhxVUpoSGpIL2p3QVVRV0VvM2VzVDl5Y2Fjak04d0xvOW9rcXhJRlZtcm1I?=
 =?utf-8?B?cW5UNnBYdXlGVVpHM2YzLzN4VVJBRWpFeGRYRDk0TWpBQ1o1cmJIZHBYL1pi?=
 =?utf-8?B?cXBENGR5SHpJdGR1UHJkNFpPLys0bnJSZTlXVHlwd2ppS25hMUw2QzdmWDBq?=
 =?utf-8?B?My8rYUltSU5kUHVNeHIxZGZGbDE1Vm9CVkVSZkpaRU9ZN2ZYYVI1UEVpSktp?=
 =?utf-8?B?NURBc1JJT0VZK0MrSlJuMEIwOXhDREtKdFkxa1RFZkloSlE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDl4UHR0SXVKR0I3eXI0d2pFSVpuTnRMYVMwMzdNd2tFQUdYMHhnajVSdEJ0?=
 =?utf-8?B?ZkxkRnRkRnFtSlNTVUxWMVlBS0hOU0RnOTVpY2Zuc3hNaWRmUjJKSFhGa1B3?=
 =?utf-8?B?UmNEZTJydXRNVzJBa3VDOStLVEJGVzNIVm5uZ1lkVzMyVU5MME9xbktWMDdp?=
 =?utf-8?B?Smo1TkNiOXp5Ujk1Tm5Hc0hZd3NvclFnUHhLelp1YlhmRFUyWEpiZW03Y3ds?=
 =?utf-8?B?anQzc0trQS8zem1KQlNteVg2a2Z2N1hsTjJrODd2dmZzSDdVWjNVclErdWFt?=
 =?utf-8?B?UjFLSXl0UWpyVVJhT0JFeUt6c2Y0K2VOUFFRK3E1YjBJWWsrMnZOQ2VyMjVa?=
 =?utf-8?B?c3BuZXpyZysrVW9hbkJGNTF5ZDZqeHhrSmQvNTJORFgwZGlRZysyczJUOVJJ?=
 =?utf-8?B?c1J4aHUxeWJoUzU5Y0VpQm5FZzNCVE80NzF6VTZaUFlENG90MzVBY3oreENR?=
 =?utf-8?B?U2ZFR0RJMnhmcStvR3NHam45RXFBM2hKVDZ2VlpWUmdnU01kd296N1J5a2pu?=
 =?utf-8?B?TnAwVWFranpnT2NwKzBiMmFMUDl6bUZIaDFqUnNTWDlobmpHLzlhQlBid2VR?=
 =?utf-8?B?ZE11c0RHT00xTlEycnBBNkhDZk5tSVE1NXdpc2RRYThFZFFMdndkc2M5SnU1?=
 =?utf-8?B?dHowbVg3UGU4aytxd0phRWo4L0ZKWURyVmJhRVljK25zY2s0aCsvU2JIaHlH?=
 =?utf-8?B?amlkRDhuaS9EUUQwS29kbTllaGR0alZaSkdCQldlNnQ1R283Rzd3LytIRjZ2?=
 =?utf-8?B?azh1RkNlZVVwUE9JY242SXhKUnRYOEtRcW84R1BOVWNRV2hCelc5eVJzMlRX?=
 =?utf-8?B?VGM0cFd6VlVUQ01tUXZrVFZnRW5ZRmViS20xYmVQNmxBSHE3Q0VoU3pzOFda?=
 =?utf-8?B?QmtRSDNBTUUzdlY0d3hGYkJSRmd3U2p0bXFHZDdBMWp0bmZ1TkR6MEVZSTY0?=
 =?utf-8?B?MXRrYkkwV3VoMVZ5ZTNVQzkyN3RQNlg3TUlWZllSMklWOFk1VjhVK2puaGM4?=
 =?utf-8?B?MU9pb1ovN2Rma1JrV3d2Mkd2dUNVWWwwOHR0NXFTczVwMTZLaW1LMHZFUTlL?=
 =?utf-8?B?bE9ubVh0TnpaT1NwdE1NaGlOaGYzem5oNS9CZU9JZituY3lNTkNyWXJWY2dE?=
 =?utf-8?B?NnZyNGt0ZUxPNGUvalFWTmFnaWNWdDNyTFJsRStyVElwajJETklScTQvbHFv?=
 =?utf-8?B?UmZURm1NZGZGaFZiV3VWbEdOVGtQYlVSQmxFaEpPRDVWTHRKRlFlTXNYL3po?=
 =?utf-8?B?Z0gyMXFwTzBxV2R4MUZUWWtVM2RiQXZKalNnYWF2L000QWR4NDV3dGpVdit0?=
 =?utf-8?B?a0kzUXJoS0RGbk5aQ0NtVkMwSVYrSG5EWXVwdURiTUhudFcrSWs1WmFVWEpj?=
 =?utf-8?B?bDdBVGd0cVFJcnhiaEY4Znc3UUFwNU50UE9tbjNkMnJXQVo2NW5TMHhmSXY2?=
 =?utf-8?B?UW95K1h5YTM3MUNGYjZoaC9JZVg3cU1FMEJ2RUdUN09NZzNzaHBvOXJ2dHhu?=
 =?utf-8?B?VlhaSXIvQTBXYkpwYlN0KzZpS2xOb3k3M0luL2RnSTN0ZzNBWWVqVEVCcUt2?=
 =?utf-8?B?NHVKZVRLeVFyaVNrbytTZjJsU1R3QkhsYWY1WW1rRjdUOTA0bllURGJDU3JR?=
 =?utf-8?B?RUFyK2k5U01MU2VzNGNWWXJHN1p4dkF2RmhBTUF0Q0ZQME9pWHFmQTYyb2R5?=
 =?utf-8?B?Z09RclFpdnRkYW1vQTYzMUwrVWYrTXVqYzRFY0VsRW1weTVhS0phWXRTenVi?=
 =?utf-8?B?YndQa01RMG5DMmNzWFMxOWdRR3NnRDFDNFdtenNZSUZKT2pIeXlLWWRNdjZC?=
 =?utf-8?B?MkUySXVkZkN6OEtCYktXK2dBNTdLV1VxL3lsVGtqbGhlWTh6NU05Z3JiTTVr?=
 =?utf-8?B?K1FrbURIK1RYWitvQysvbmhsYlVpWEN6MGluQ0NPdkcwb1VRQzZPeVRYZ2xD?=
 =?utf-8?B?cURGelFtWHBCOG9ORDlPTzRxdmRKZlZuWVhDbVRFc0pWVzdlaU16cHF6by9G?=
 =?utf-8?B?Zjg2dm1PQ2psQWFCbG05V1JZYnBxeDFoY1RyOG1DTFEyZWZWMU9iUE8vVSt3?=
 =?utf-8?B?ejg1ZzlHY3ZnZzVqUkMxSXRtOGJDbGJBQkIrVmQ0bDRjbGxGbGJrOE5xbjZT?=
 =?utf-8?B?S2hlOFFmaStzaEEwaytYK2h4WVdnZ0NCeU1mQ09LSXRuamxSZ0hwT0ljbmV0?=
 =?utf-8?B?Y0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C60D3B1A973B8B40B5F0445C4D216DB8@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2470b251-3348-4ec6-8a37-08dd1e7c70af
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2024 09:23:17.1341 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VdYgDU2uqzfC4WJYj94EeMqRLLbJZC/XhAIKG9nyWQrN+plm7q+BPk08MDSWMqifo9kMDgOQP4WxftRfxR1ws8YJlM8p8MN+fer/tQEtQTw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6782
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

T24gRnJpLCAyMDI0LTEyLTEzIGF0IDE1OjAwICswNTMwLCBTd2F0aSBTaGFybWEgd3JvdGU6Cj4g
TnVtYmVyIG9mIERTQyBzbGljZXMgY2FuIGJlIHNob3duIGluIHRoZSBEU0MgZGVidWdmcyBzbyB0
aGF0Cj4gdGVzdCBjYW4gdGFrZSBhIGNhbGwgd2hldGhlciB0aGUgY29uZmlndXJhdGlvbiBjYW4g
c3VwcG9ydCBmb3JjaW5nCj4gYmlnam9pbmVyL3VsdHJham9pbmVyLgo+IAoKVGhpcyBpcyBub3cg
cHVzaGVkIHRvIGRybS1pbnRlbC1uZXh0LgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIKCj4gdjI6IHVz
ZWQgaW50ZWxfZHBfaXNfZWRwKCkgYXMgdGhlIHBhcmFtZXRlciB0bwo+IMKgwqDCoCBkcm1fZHBf
ZHNjX3NpbmtfbWF4X3NsaWNlX2NvdW50KCkgKEphbmkgTikKPiAKPiBSZXZpZXdlZC1ieTogTmVt
ZXNhIEdhcmcgPG5lbWVzYS5nYXJnQGludGVsLmNvbT4gKHYxKQo+IENsb3NlczogaHR0cHM6Ly9n
aXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS94ZS9rZXJuZWwvLS9pc3N1ZXMvMzM4Nwo+IFNpZ25l
ZC1vZmYtYnk6IFN3YXRpIFNoYXJtYSA8c3dhdGkyLnNoYXJtYUBpbnRlbC5jb20+Cj4gLS0tCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwg
MiArKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jCj4g
aW5kZXggM2ViNzU2NWNkODNjLi5hN2M3NDQ2NTQyNzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiBAQCAtMTAx
Myw2ICsxMDEzLDggQEAgc3RhdGljIGludCBpOTE1X2RzY19mZWNfc3VwcG9ydF9zaG93KHN0cnVj
dAo+IHNlcV9maWxlICptLCB2b2lkICpkYXRhKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+
IERQX0RTQ19ZQ2JDcjQ0NCkpKTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHNl
cV9wcmludGYobSwgIkRTQ19TaW5rX0JQUF9QcmVjaXNpb246ICVkXG4iLAo+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHJtX2RwX2RzY19zaW5r
X2JwcF9pbmNyKGNvbm5lY3Rvci0KPiA+ZHAuZHNjX2RwY2QpKTsKPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgc2VxX3ByaW50ZihtLCAiRFNDX1NpbmtfTWF4X1NsaWNlX0NvdW50OiAl
ZFxuIiwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAKPiBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX2NvdW50KChjb25uZWN0b3ItPmRwLmRzY19k
cGNkKSwKPiBpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKSk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJGb3JjZV9EU0NfRW5hYmxlOiAlc1xuIiwKPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl95
ZXNfbm8oaW50ZWxfZHAtPmZvcmNlX2RzY19lbikpOwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgaWYgKCFpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQoK
