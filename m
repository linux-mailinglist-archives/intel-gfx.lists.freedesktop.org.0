Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B9CA26BC
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 06:49:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D683C10E00D;
	Thu,  4 Dec 2025 05:49:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U6aSPclU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DF1E10E00D;
 Thu,  4 Dec 2025 05:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764827353; x=1796363353;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=MdpQB0AFQgRoQ1TCuoDqsaPhNSQnpet+EZJeV9+gr9k=;
 b=U6aSPclUvbZUeeHF6f2D2o6e4aIdU+thkQWTcuz7uuKqcKL2oJUpCiYC
 wVAKfwjXscIsv8hXZbpfAwrfnod18RtNaDR1dDLEojXx62ytd0lowyKSa
 dhtr1489iuddwNHwB6nmSHIyFofv/zSVV3xZXRslY9uzWBblQv/o3vr4s
 H6698yKVyEpuzAMcmTdtcj1T98KdD09Ebhrik3CMpPA/iD59kJSL9HocT
 rcOwt6ZvOPUHtFHH2o8iHj2+LItb5mQQu1PPXXdaKwnUJ4lQG6hoT1Ukc
 t/r7+M2PiwLQmTuHJtcdf+AUXnSW1OwVeJ+QFZhZZ3z7dBf9s6VZRTf40 w==;
X-CSE-ConnectionGUID: xj+jKi6jT1+91KEFmvDdvw==
X-CSE-MsgGUID: OxhFwSSHTyi00aokeHeAmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="92316752"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="92316752"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 21:49:13 -0800
X-CSE-ConnectionGUID: LxK4d9KoQtGS3+rZ7+wvxA==
X-CSE-MsgGUID: BpSa9/GiSPWQAd8JHuEp6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="194999120"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 21:49:13 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 21:49:12 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 21:49:12 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.30) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 21:49:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s3+SIL9sza+GGEw9Ud8nasKtgb5pnNhVE6W8AS23MFWzDDrXzTXRMorqczwGznn4H9WGDRMDczAlH7yNRjcjaJTXoTjAMTrCBtD3B+VRHV0XcJtKosSClPaQvbYOpG8G5VGU10CM9GalOAa5Kcfyc3eU6DysZqkhx0W6aE3OuZbntxUXU2NaY7eYjz0tR9IWwHq/e0jm566NjjO/gO8v/Ooe0FLMivN3/2OAJQsm17pPkcsMdNzMcOHHKQxyjzE17rRtLvidGlJlv2MMI9GDu27yc1Ry5rHBg6wqF6f6Gf11zHN5GBOF3jls7vMysXhhvQt+FgW9/dlmgxGfX6+nYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MdpQB0AFQgRoQ1TCuoDqsaPhNSQnpet+EZJeV9+gr9k=;
 b=CilgIVZRVHnXm/QXzORuA7mCOjVupwsXod0bQqXe7YoK8WGN3haOjlTfl1eJLB0PoKkTIzU7NUyt+9II7AvOtO0HIk8geVdQklgh9P9SnEbi2jrQR94FgNLzW5sNxgdO73rXxrasQ51nrmIs8fJdBdbwYAhi7WydGofx1wYjA7hdDx/og4ekXQWoF40/9kA6BT43sdyhnKmlFBEqErQVMQ2qfqICcEYj6TaM1ZMkf0U7UhT3NzGkNPJ4wYF5ksmLu4MbhMcwuyoE+HrWGuStnel1QUwfA3uVwd6LUojltYhB3a+UBh2YFZ7aqC+niIihX4do/OO7LsdiFMVgMij7aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB6671.namprd11.prod.outlook.com (2603:10b6:a03:44b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.9; Thu, 4 Dec
 2025 05:49:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 05:49:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Thread-Topic: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Thread-Index: AQHcYsX3eH13XTlaVUuD+7mgCXSyxrUP6iSAgAAKFQCAABOLgIAAAVqAgAAL9wCAAOjHgA==
Date: Thu, 4 Dec 2025 05:49:09 +0000
Message-ID: <1dbdffcb15dba549d0b2ac3f61244279e081aeac.camel@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-3-jouni.hogander@intel.com>
 <aTA5icuJ6UeHdH6g@intel.com>
 <ccbbcdf01c45dba368a8b98cd1fc19ffc90aa0f1.camel@intel.com>
 <aTBSYy78qNjFoOOt@intel.com>
 <d1465eae2faf7545fbb16e8038b802f981606274.camel@intel.com>
 <aTBdjlMn1WAQqtYb@intel.com>
In-Reply-To: <aTBdjlMn1WAQqtYb@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB6671:EE_
x-ms-office365-filtering-correlation-id: 86586ce3-beb8-4699-7cc2-08de32f8d82a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OUZMM2hlbTFmdUpoNExIaUxJcUxXR3UyZjdQSUpJeUswUWdyUnhMNytueEZF?=
 =?utf-8?B?WHJUUFR2QkVlRDcrS3Eva2hZR0JkU1NxYXRZazVObFZwMmY1RUIrb1h5Y1dF?=
 =?utf-8?B?TkR4eFM4cVd5emNyeDIrZzFqdURrQmhnZzN1QW40bXlhMVpqZFNYcTcrZVho?=
 =?utf-8?B?N0ZaME1hNkorNGUyZHZER3F6QjVUemozM1NwTjEwMmRDWWVRdTdzL01QQ20z?=
 =?utf-8?B?TUhUQ05qYzY2eTJmSnpnM0hlSi9FRHI0YlhpRHgyTlNPaDVlUVNtUG1HcGpX?=
 =?utf-8?B?N2NycWpldlNraThVdkdRWGRzWFlVYWVsVzNLOUdua21abStKTndpR0t1N2lN?=
 =?utf-8?B?eVBrelRBaTdoWkZHbklnTXdid0UwcS81ODlTbndUek1LRDJ6YSt6anF6TENG?=
 =?utf-8?B?UzdjZHFoQUlqd2hpSExlYUJaM0gva3VINTRzdmRuYWozRUZwN3VCNm1hdFpW?=
 =?utf-8?B?aVlPY3BWeUJHdjVWVVNKakowYThyK0dQcExnOThpSmcxMnFUN243eWx5a1dK?=
 =?utf-8?B?UVBjVnlyU0V6Mi82Y25yOENtVHc3WjFzd082YXpoWFpOWFJLZFJtbE1XQkVX?=
 =?utf-8?B?aU1sSVpzNjVTR0ZQWEU3VVNmRHRnb0MvQWZNdzJqa3gyc2FWbjJ1ZXBCa09k?=
 =?utf-8?B?R1E1Tkdxdm45SzV5RXk4aDZrcGljd3BqQ0xLSUVhTWFYUEV3ekpXUWJRYVZK?=
 =?utf-8?B?TjVHbzh1bVBPdmgxMXE2Zmp3eFQ3cjRVaVVYN0pPcjNWbFZZYmJaaW03enNB?=
 =?utf-8?B?UEExZUZxM3pwdHJuUEQvaUdYMjlRdjRETHRUa1E2WHFQM2d2VDNabW1rVmJz?=
 =?utf-8?B?RVZIelVSZVA1eklRZlNvaEJldjdpUCtBVlhjK2FJeE1zT1JxbHpPNVdQQytY?=
 =?utf-8?B?SXF4amhjbk5HenpFMnFnOTIzVXZoTSswaWpBVTJKdWtiS1ZpTXRVd1UrTVB1?=
 =?utf-8?B?dDVpVlpUZlhESDZsRVhMbm9lV3BaNkFaWTNpQWE3bjJkckRwUmtKbE9ZQ0N6?=
 =?utf-8?B?RytVTVNtSDlIZmpGTU1ORHE0U3Q2dDFRWlkwU21JckZPR003RWo4WjgyMjRw?=
 =?utf-8?B?SnA2OHVza1U2U1kvMFk4Tk9mYnZZV3E5R2JLVGQ0R3lZQVZBb1M2TURnbUI4?=
 =?utf-8?B?YytZMUFwNDFCT2I5ZE4vbGZWU1ZJTlI5VWZ1NlZCS1RNZTlia0MvZUw3ZEJv?=
 =?utf-8?B?cGZ3bkVLVFRhcmZnMEZ6UXZOZmExRGl5YXNKVERRcEM0bWkrNFNUUENWNkpp?=
 =?utf-8?B?UTllRlc4ME93dmo0UDkxWWY3aFVXMUYvOStGT1hGQ2d5YzBKVDRHRkFFSStv?=
 =?utf-8?B?R1FIT1J4NGJBQjBIZktlc1VocDQ5dzdJTWVsc2lCZXJyRmNhS1U2T3MrdUpq?=
 =?utf-8?B?cW1KaHoyaThGck4rODQ1a1dDTkd6UDhQZjN4OEFPZFhRQjNHemdsdllxaGUz?=
 =?utf-8?B?SmRPdk03VCtGQ1hjNExXSG5CblNody94WDhicXdqWmtVbFJBajVYZHltRE9V?=
 =?utf-8?B?dEliL3VHUS9rQzV1alc1MVNMcEhNK20zUTVZMzR5SDdxL0YwTzFXMGhueGx0?=
 =?utf-8?B?RVl0NVVPNk9kMHNVTDVoS0htMU52MTE2STNuT1R1YWhha2g2aDNIMEhybHJa?=
 =?utf-8?B?VWJBaytLR0lBcXR3UWwzbDhRVXlEc1lyL1pTRFE3TFBtZ3ZMOGVqMXVEM3Z5?=
 =?utf-8?B?bFhkZUZrWUhBSTdnS0lWSXVPK0lRNUxHNnByYzhnUXBvZStBZjlJZ0JDRXlu?=
 =?utf-8?B?eEd0OHgyWDVieXFtc2ZhZ0FudjExNDh6aDlhUjFjcGtQdEovUW5XUGxDWm9z?=
 =?utf-8?B?ZFFrNndrOVRPTU1JUUQxVkg3czV6ZkFaV3lXczN0NjNYZUljelAzcFdvdnVL?=
 =?utf-8?B?RlNwS3VpemZYamo1RElBeVRaUnZUVmxmZmxXNzdFQlRlUjAwUzBBNVBrZ2dV?=
 =?utf-8?B?VEZKYTNWQXdDSWY0akhJVWtQMnlDS3lnTE9rSkN1SHVSbWVLZnhLclZ0RnNq?=
 =?utf-8?B?MTc1YXZxUnlFYm0zZDIyQ0EyUkJoNmlPa2p4b2JURmI0K3pFbEFKNjk0bE85?=
 =?utf-8?Q?rdV787?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bUVCTGVDZkhhYUNWTWRlOFo1TUNtNGg4cGFMUll0RlljakxZRnc2UU5xL2w0?=
 =?utf-8?B?Nlp5QnVwY2tSbjdjQjAreVNBVWs1c0tjMmF6L1R5Vi9ZUzdNTkMrUlNjanl0?=
 =?utf-8?B?UXA5STVQa0pOVVRTQ3NmbjFXN0JlRGM3cWtqSzg5U3hqdjlacnJuY0hBVXk3?=
 =?utf-8?B?SUpjWEpXc3BiVjErUW83L3NVaFMyRUE1dWtPcDF5RjdwOWE4T05zdS8yUEJo?=
 =?utf-8?B?V3RGV21YTDBUZGhlYzgyTVRQdXA1bVdOeC8vSFJwM0VYWHdZSWlwaU5TUmlo?=
 =?utf-8?B?QkpQcWNNbVZjdnp1bUxDSzlybUZXYkx1c3U0RkJmbzE2cG04MDlFOWhxVWl2?=
 =?utf-8?B?R3BHdjY0Q1E5QnhhSFo1U2ViQ01qWTlVN3hneXdwbUd4SjhyKzQvb0s5ei9v?=
 =?utf-8?B?ZjdsMnhWNjMrcVJwcHhGd1kzNzNFMis2VlBnZStqS0R6MXM1NFhjQ05JODIr?=
 =?utf-8?B?YldhRHl4alR5ODhFSndIODRLNXJhSDhjWEg3Q3BnWVdEcHl0Zi9DN1I1dFM5?=
 =?utf-8?B?SDNab3N0YlIwVmVKWWZJZUpRL3RjMFFSMnpjbnZCMEQ3SUd0YWR4c3pSdHVH?=
 =?utf-8?B?ditRV2JlNFRLNnJub3ZvY04vaEdGYzBVRkpXSGdMTXZGdGp1cys4REVKcUtL?=
 =?utf-8?B?NWVrNkhtd0l6R2RkTlRRdXY2em95NW5HOUhaZ0ZlU1BUdTBoZkNaWnFvK20x?=
 =?utf-8?B?VXZna3pKQjFaWjFhUkxEVXpqUzREQjBnMktocUgxQThIdHNmajFXUUt3b2sr?=
 =?utf-8?B?bTRGL2FwaHE5Q3NLVkFMNnkwZWZqK2lYbEdSeFNsNVJDbWswenpTVk1yZEFx?=
 =?utf-8?B?ZmQyZEdxQ3lRelRlRTladlg3YnVqNG0xQVRxSW4xT1ZkWlR4cDB4cDNiWEdS?=
 =?utf-8?B?M0FtSVNFaENJdW5uWWVGRThlNHVXdGIwQ3ZXNExpeDFobkZUc3NEMUMxaFVs?=
 =?utf-8?B?UVNIQlA1N0RjcCtMVVFkUTFySlM2Yk1FcVM3NGRrMmFoRmdWZEhqZkVLNFNF?=
 =?utf-8?B?NGNjS0xZSStrZ1JURktCMjVLczhlMklDQ1lLajJsRlFjQ2JLandZMzRYUllD?=
 =?utf-8?B?T2I2anRlQkJQTmpndUg5bWdYTGZGZUY0Ump0Z2pTSURISU1UREpDL3UzR2xx?=
 =?utf-8?B?NGFYcFNXb1JCNHZZYTR5bGVMZ0Q0cXBGSHVsRXZSK0VURUI0TmpYczB6eDBt?=
 =?utf-8?B?aHQzNXhmTmhjdDRKS2dsWm5XSTZ6Y3N4WTVlNE1OWnFsK2RwdzRlbXZKTkll?=
 =?utf-8?B?dm5neDJMa3hTTU9zSGFyd0NKYU16ek1ocmk4bStMOWkvL1JSKytTRHpzcnlK?=
 =?utf-8?B?bGZsbk8vK0l5N0lpYktwQnRlYXozQStEMFI2N2xjZHZGZG9EWElWK0pVTUpO?=
 =?utf-8?B?OUZlczlHSHR6TmEwaGNoSk16dDFEV2lZeUk1dkM1bmdhODdZaU5INFpLYyta?=
 =?utf-8?B?UEpEZVViQzd4dGdKa3JBWjd5OGVweWRybEowQmIyYUlzUHdNdFVsbm1Nb1ps?=
 =?utf-8?B?cmtxc0dqc2p3ZE42cFZwOWV2d3RpMUsrRTBUUGhpUnFnSFdLNTcrN1lsZmNY?=
 =?utf-8?B?MXB2RnJjVzlEak1FSG16QW1aUDdVb1lRMS9mQ0thNENDb2NYMWNqYkxIS2J1?=
 =?utf-8?B?OE9wMy90UzhEWlFtWXRTaDFpWm11M0tYcEFXczVHSytUK2V5Y3BUMFNwQzY1?=
 =?utf-8?B?R0JDcm9iY2R2d080TjRpU2VWK0ZPWGI2dGdHc0dFY3pXYXVZSzZicGNVT1Mx?=
 =?utf-8?B?V2dKam03THZtNU9GVWhzQXFTREtVTTFZUVg2QW9PV245QXdEZ01qdGl5V25j?=
 =?utf-8?B?U0FUR2p5RWFaUGh4VDRXL3k0NzRGeDJxQTRpMWZld3d4S2diazFzUFZoNGxH?=
 =?utf-8?B?dGZ6SDkydllPT25PeUk0WmpESXAwWEoxYVA1djVQUTZtRzFISUg0M2hLU0h4?=
 =?utf-8?B?T2p5VVo4ZlNZTGRibWt5dEJhK2lOSU5vV2J3Y3F6eENBcVlxY1RuR2V4a1NG?=
 =?utf-8?B?QUpxejhkL200RndUUC9CK0VQL2Y3akxqU3NRZHRla1VoVEJ5R0N4cDVtRU1y?=
 =?utf-8?B?NzAwMXdJZDhLdGhvOEpPM09qQ215NGtwdld6SEd5a0tleUtmWGRmdEV4TldY?=
 =?utf-8?B?RE9ZYWRTSXRqQTZiRUhiUmloZjRoNGJCekdOeXhCN1pvTHByOGY1ZnlnWDRp?=
 =?utf-8?B?SnRZdlVZZytvRUQvZ0FPMXMyVlpiWkFuMjZCUW1MWDNoSXVIbDNQSGxsZGgy?=
 =?utf-8?B?VExZR25TTnhrTEFhRDdYZ2pvY0RBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B41143C28C091C4693CFFFFFA849F471@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86586ce3-beb8-4699-7cc2-08de32f8d82a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2025 05:49:09.2718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zt8BFYaRgJ1kLjv9XwJ2nvx3quQQVTqy+ju+3lRSizzAVIN68L4q2nmoPvgNB9NRRUPvn4/sxyQyRL+PQzpD1jWavra7UJuuJbl4Dw4SOSk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB6671
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

T24gV2VkLCAyMDI1LTEyLTAzIGF0IDE3OjU1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgRGVjIDAzLCAyMDI1IGF0IDAzOjEzOjExUE0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjUtMTItMDMgYXQgMTc6MDggKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIFdlZCwgRGVjIDAzLCAyMDI1IGF0IDAxOjU4OjIz
UE0gKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+ID4gT24gV2VkLCAyMDI1LTEy
LTAzIGF0IDE1OjIyICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gT24g
TW9uLCBEZWMgMDEsIDIwMjUgYXQgMDM6MjQ6NTZQTSArMDIwMCwgSm91bmkgSMO2Z2FuZGVyDQo+
ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gPiBBY2NvcmRpbmcgdG8gYnNwZWMgc2VsZWN0aXZl
IGZldGNoIGlzIG5vdCBzdXBwb3J0ZWQgd2l0aA0KPiA+ID4gPiA+ID4gYXN5bmMNCj4gPiA+ID4g
PiA+IGZsaXBzIGFuZA0KPiA+ID4gPiA+ID4gaW5zdHJ1Y3RpbmcgZnVsbCBmcmFtZSB1cGRhdGUg
b24gYXN5bmMgZmxpcC4NCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gdjM6DQo+ID4gPiA+ID4g
PiDCoCAtIHJlYmFzZQ0KPiA+ID4gPiA+ID4gwqAgLSBmaXggb2xkX2NydGNfc3RhdGUtPnBpcGVf
c3Jjc3pfZWFybHlfdHB0DQo+ID4gPiA+ID4gPiDCoCAtIGZpeCB1c2luZyBpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlDQo+ID4gPiA+ID4gPiB2MjoNCj4gPiA+ID4gPiA+IMKgIC0gY2hl
Y2sgYWxzbyBjcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyBpbg0KPiA+ID4gPiA+ID4gwqDC
oMKgIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBvcnRlZA0KPiA+ID4gPiA+ID4gDQo+
ID4gPiA+ID4gPiBCc3BlYzogNTUyMjkNCj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+ID4gLS0tDQo+
ID4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3
Mg0KPiA+ID4gPiA+ID4gKysrKysrKysrKysrKystLQ0KPiA+ID4gPiA+ID4gLS0tLQ0KPiA+ID4g
PiA+ID4gLS0tLQ0KPiA+ID4gPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygr
KSwgMzEgZGVsZXRpb25zKC0pDQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiA+ID4gPiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+ID4gPiA+IGlu
ZGV4IDE1ZWYzYjZjYWFkNi4uNTNjZjI5MjI0N2Q3IDEwMDY0NA0KPiA+ID4gPiA+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gPiA+ID4g
QEAgLTI3MjgsMTMgKzI3MjgsMjAgQEANCj4gPiA+ID4gPiA+IGludGVsX3BzcjJfc2VsX2ZldGNo
X2V0X2FsaWdubWVudChzdHJ1Y3QNCj4gPiA+ID4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ID4gPiA+ID4gPiDCoCAqIFBsYW5lIHNjYWxpbmcgYW5kIHJvdGF0aW9uIGlzIG5vdCBz
dXBwb3J0ZWQgYnkNCj4gPiA+ID4gPiA+IHNlbGVjdGl2ZQ0KPiA+ID4gPiA+ID4gZmV0Y2gNCj4g
PiA+ID4gPiA+IGFuZCBib3RoDQo+ID4gPiA+ID4gPiDCoCAqIHByb3BlcnRpZXMgY2FuIGNoYW5n
ZSB3aXRob3V0IGEgbW9kZXNldCwgc28gbmVlZCB0byBiZQ0KPiA+ID4gPiA+ID4gY2hlY2sgYXQN
Cj4gPiA+ID4gPiA+IGV2ZXJ5DQo+ID4gPiA+ID4gPiDCoCAqIGF0b21pYyBjb21taXQuDQo+ID4g
PiA+ID4gPiArICoNCj4gPiA+ID4gPiA+ICsgKiBJZiBwbGFuZSB3YXMgaGF2aW5nIGFzeW5jIGZs
aXAgcHJldmlvdXNseSB3ZSBjYW4ndCB1c2UNCj4gPiA+ID4gPiA+IHNlbGVjdGl2ZQ0KPiA+ID4g
PiA+ID4gKyAqIGZldGNoIGFzIHdlIGRvbid0IGtub3cgaWYgdGhlIGZsaXAgaXMgY29tcGxldGVk
Lg0KPiA+ID4gPiA+ID4gwqAgKi8NCj4gPiA+ID4gPiA+IC1zdGF0aWMgYm9vbCBwc3IyX3NlbF9m
ZXRjaF9wbGFuZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3QNCj4gPiA+ID4gPiA+IHN0cnVjdA0KPiA+
ID4gPiA+ID4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+ID4gPiA+ID4gK3N0
YXRpYyBib29sIHBzcjJfc2VsX2ZldGNoX3BsYW5lX3N0YXRlX3N1cHBvcnRlZChjb25zdA0KPiA+
ID4gPiA+ID4gc3RydWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19z
dGF0ZSwNCj4gPiA+ID4gPiA+ICsJCQkJCQkgY29uc3QNCj4gPiA+ID4gPiA+IHN0cnVjdA0KPiA+
ID4gPiA+ID4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiA+ID4gPiA+ID4gwqB7
DQo+ID4gPiA+ID4gPiArCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPQ0KPiA+ID4gPiA+ID4g
dG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtDQo+ID4gPiA+ID4gPiA+IHVhcGkucGxhbmUpOw0K
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gwqAJaWYgKHBsYW5lX3N0YXRlLT51YXBpLmRzdC55
MSA8IDAgfHwNCj4gPiA+ID4gPiA+IMKgCcKgwqDCoCBwbGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEg
PCAwIHx8DQo+ID4gPiA+ID4gPiDCoAnCoMKgwqAgcGxhbmVfc3RhdGUtPnNjYWxlcl9pZCA+PSAw
IHx8DQo+ID4gPiA+ID4gPiAtCcKgwqDCoCBwbGFuZV9zdGF0ZS0+aHcucm90YXRpb24gIT0gRFJN
X01PREVfUk9UQVRFXzApDQo+ID4gPiA+ID4gPiArCcKgwqDCoCBwbGFuZV9zdGF0ZS0+aHcucm90
YXRpb24gIT0gRFJNX01PREVfUk9UQVRFXzANCj4gPiA+ID4gPiA+IHx8DQo+ID4gPiA+ID4gPiAr
CcKgwqDCoCBvbGRfY3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgJiBwbGFuZS0+aWQpDQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gV2h5IGFyZSB5b3UgbG9va2luZyBhdCB0aGUgb2xkIGNydGMg
c3RhdGU/IFRoZXJlIHNob3VsZCBiZQ0KPiA+ID4gPiA+IG5vdGhpbmcgb2YNCj4gPiA+ID4gPiBp
bnRlcmVzdCB0byB1cyB0aGVyZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRvIGNvbnRpbnVlIGtlZXBp
bmcgQ0ZGIGJpdCBzZXQgaWYgcHJldmlvdXMgdXBkYXRlIHdhcyBhc3luYw0KPiA+ID4gPiBmbGlw
Lg0KPiA+ID4gPiBUaGlzDQo+ID4gPiA+IGlzIGhvdyBJIHVuZGVyc3Rvb2QgaXQgKHBsZWFzZSBj
b3JyZWN0KToNCj4gPiA+ID4gDQo+ID4gPiA+IDAuIHN5bmNyb25vdXMgdXBkYXRlDQo+ID4gPiA+
IA0KPiA+ID4gPiAxLiBhc3luY19mbGlwOg0KPiA+ID4gPiDCoMKgIG5ld19jcnRjX3N0YXRlLT5h
c3luY19mbGlwX3BsYW5lcyAhPSAwDQo+ID4gPiA+IMKgwqAgb2xkX2NydGNfc3RhdGUtPmFzeW5j
X2ZsaXBfcGxhbmVzID09IDANCj4gPiA+ID4gwqDCoCBjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2Zs
aXAgPT0gdHJ1ZSkNCj4gPiA+ID4gwqDCoCAtPiBmdWxsIGZyYW1lIHVwZGF0ZQ0KPiA+ID4gPiAN
Cj4gPiA+ID4gMi4gYXN5bmNfZmxpcDoNCj4gPiA+ID4gwqDCoCBuZXdfY3J0Y19zdGF0ZS0+YXN5
bmNfZmxpcF9wbGFuZXMgIT0gMA0KPiA+ID4gPiDCoMKgIG9sZF9jcnRjX3N0YXRlLT5hc3luY19m
bGlwX3BsYW5lcyAhPSAwDQo+ID4gPiA+IMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlw
ID09IHRydWUNCj4gPiA+ID4gwqDCoCAtPiBmdWxsIGZyYW1lIHVwZGF0ZQ0KPiA+ID4gPiANCj4g
PiA+ID4gMy4gc3luY3Jvbm91cyB1cGRhdGUNCj4gPiA+ID4gwqDCoCBuZXdfY3J0Y19zdGF0ZS0+
YXN5bmNfZmxpcF9wbGFuZXMgPT0gMA0KPiA+ID4gPiDCoMKgIG9sZF9jcnRjX3N0YXRlLT5hc3lu
Y19mbGlwX3BsYW5lcyAhPSAwDQo+ID4gPiA+IMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19m
bGlwID09IGZhbHNlDQo+ID4gPiA+IMKgwqAgLT4gZnVsbCBmcmFtZSB1cGRhdGUNCj4gPiA+ID4g
DQo+ID4gPiA+IDQuIHN5bmNyb25vdXMgdXBkYXRlDQo+ID4gPiA+IMKgwqAgbmV3X2NydGNfc3Rh
dGUtPmFzeW5jX2ZsaXBfcGxhbmVzID09IDANCj4gPiA+ID4gwqDCoCBvbGRfY3J0Y19zdGF0ZS0+
YXN5bmNfZmxpcF9wbGFuZXMgPT0gMA0KPiA+ID4gPiDCoMKgIGNydGNfc3RhdGUtPnVhcGkuYXN5
bmNfZmxpcCA9PSBmYWxzZQ0KPiA+ID4gPiDCoMKgIC0+IHNlbGVjdGl2ZSB1cGRhdGUNCj4gPiA+
ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiDCoAkJcmV0dXJuIGZhbHNlOw0KPiA+ID4gPiA+
ID4gwqANCj4gPiA+ID4gPiA+IMKgCXJldHVybiB0cnVlOw0KPiA+ID4gPiA+ID4gQEAgLTI3NDks
NyArMjc1Niw4IEBAIHN0YXRpYyBib29sDQo+ID4gPiA+ID4gPiBwc3IyX3NlbF9mZXRjaF9wbGFu
ZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3Qgc3RydWN0DQo+ID4gPiA+ID4gPiBpbnRlbF9wbGFuZV9z
dGF0ZQ0KPiA+ID4gPiA+ID4gwqAgKi8NCj4gPiA+ID4gPiA+IMKgc3RhdGljIGJvb2wgcHNyMl9z
ZWxfZmV0Y2hfcGlwZV9zdGF0ZV9zdXBwb3J0ZWQoY29uc3QNCj4gPiA+ID4gPiA+IHN0cnVjdA0K
PiA+ID4gPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPiA+ID4gPiA+IMKg
ew0KPiA+ID4gPiA+ID4gLQlpZiAoY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9pZCA+
PSAwKQ0KPiA+ID4gPiA+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+c2NhbGVyX3N0YXRlLnNjYWxlcl9p
ZCA+PSAwIHx8DQo+ID4gPiA+ID4gPiArCcKgwqDCoCBjcnRjX3N0YXRlLT51YXBpLmFzeW5jX2Zs
aXApDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gSSB0aGluayBqdXN0IGNoZWNraW5nIGNydGNfc3Rh
dGUtPmFzeW5jX2ZsaXBfcGxhbmVzIT0wIGhlcmUNCj4gPiA+ID4gPiBzaG91bGQgYmUNCj4gPiA+
ID4gPiBzdWZmaWNpZW50Lg0KPiA+ID4gPiANCj4gPiA+ID4gSSdtIGRvaW5nIHRoaXMgdG8gaGFu
ZGxlIHN0ZXAgMS4gYWJvdmUuIEFsdGVybmF0aXZlbHkgSSBjb3VsZA0KPiA+ID4gPiBjaGVjaw0K
PiA+ID4gPiBib3RoIG5ld19jcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyBhbmQgb2xkX2Ny
dGNfc3RhdGUtDQo+ID4gPiA+ID4gYXN5bmNfZmxpcF9wbGFuZXMuIFdoZW4gdXNpbmcgY3J0Y19z
dGF0ZS0+dWFwaS5hc3luY19mbGlwIEkNCj4gPiA+ID4gPiBjYW4NCj4gPiA+ID4gPiBkZWNpZGUN
Cj4gPiA+ID4gZWFybGllci4NCj4gPiA+ID4gDQo+ID4gPiA+ID4gVGhlIHJlc3Qgb2YgdGhlIHBh
dGNoIHNlZW1zIHVubmVjZXNzYXJ5Lg0KPiA+ID4gPiANCj4gPiA+ID4gTm8gbmVlZCB0byBoYW5k
bGUgc2VsZWN0aXZlIHVwZGF0ZSB3aGVyZSBwbGFuZXMgaGF2aW5nIHBlbmRpbmcNCj4gPiA+ID4g
YXN5bmMNCj4gPiA+ID4gZmxpcCBhcmUgbm90IGludm9sdmVkPw0KPiA+ID4gDQo+ID4gPiBUaGVy
ZSB3b24ndCBiZSBwZW5kaW5nIGZsaXBzIG9mIGFueSBraW5kLiBXZSB3aG9sZSBDUlRDIGNvbW1p
dA0KPiA+ID4gcXVldWUNCj4gPiA+IGlzIGhhbmRsZWQgaW4gYSBzdHJpY3QgRklGTyBvcmRlciAo
YXBhcnQgZnJvbSB0aGUgbGVnYWN5IGN1cnNvcg0KPiA+ID4gc3BlY2lhbCBjYXNlKS4NCj4gPiA+
IA0KPiA+IA0KPiA+IE9rLCBzbyBpdCdzIG5vdCBwb3NzaWJsZSB0byB0YWtlIGluIG5ldyBDUlRD
IGNvbW1pdCBiZWZvcmUgYXN5bmMNCj4gPiBmbGlwDQo+ID4gaXMgY29tcGxldGVkPw0KPiANCj4g
TW9yZSBvciBsZXNzLiBUaGUgbmV3IHJlcXVlc3QgY2FuIGNvbWUgaW4gYmVmb3JlIHRoYXQsIGJ1
dCBpdCB3b24ndA0KPiBiZSBjb21taXRlZCB0byB0aGUgaGFyZHdhcmUgdW50aWwgdGhlIHByZXZp
b3VzIG9uZSBoYXMgZmluaXNoZWQuDQo+IA0KDQpPaywgSSBtaXN1bmRlcnN0b29kIHlvdXIgb3Jp
Z2luYWwgY29tbWVudC4gSSBnb3QgaW1wcmVzc2lvbiBpdCdzDQpkaWZmZXJlbnQgZm9yIGFzeW5j
IGZsaXAuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg==
