Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CC290CAED
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 14:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3CE210E65A;
	Tue, 18 Jun 2024 12:03:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dokhh645";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8087F89F5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 12:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718712221; x=1750248221;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8qOecPiELzaYSl25F4GPrgZ6UFUFIftqRiJ2KT5U/5w=;
 b=dokhh6451uvzqUR2p4i+W4pGC2chsqowUfWhctnfQcGcHPWc9JaNxC7d
 HgbQ5xJ/pxGX3RqFzi1LtJZPtw/6hFshuY8HaIWEiLvV6l9GnxkHjzYKq
 bvyENTT18ea+tnfzQTzsctgEP15UQMSrLvir86xhxhuPE38cbHTWyXMS1
 2IA6fvxbnVz60EhoLCdyqKysN7orlz7bbRzW06XZNTzLxHxNO06hvctFH
 lv8CjY8KvD4HgXs0IHv+/ZywYq4zmpqhqE7PneCj/H+0UoBlCZ9LHCw7i
 tS+1N5ThjhCQGRE+QVJkt9VC3IAQjAY8ZMo9iXeqn/vFuE8eofHBF8VbZ Q==;
X-CSE-ConnectionGUID: Na1RofAlRniY9vyv6UgySQ==
X-CSE-MsgGUID: QchAROjuRmizguynJGkENg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15728468"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15728468"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 05:03:41 -0700
X-CSE-ConnectionGUID: qRXJBywLTYGEMPDaTGfPyg==
X-CSE-MsgGUID: 9XOWXwobRmaHaBnSrYl2eQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="64767438"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Jun 2024 05:03:41 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 05:03:40 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 18 Jun 2024 05:03:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 18 Jun 2024 05:03:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 18 Jun 2024 05:03:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xzy7rVmucBH44iGPpuU/28B4OE+EZTfwUV7ytCv/IXRWNjUGrRls9biM8dHlT+Qn5Gme49DaiAgMpAaQ6GxRHC1NogK1L8HDfGyGnPHG1WaQxrizievB3i8FDlFK4/WL1i7V3yE1N/WsB2Q8XAG0T/G025EbBdhllt3RhuJPnd2GiL2HH9AHgCtO4Q6ZXYqutmw4t3wpHpv2Dc8G5fRJgUCDrJ6rVaB2YvBtcTAMOhylt+EBw1brrKHeYx2WZYjZo+V2283eAskkzOuISHipI4ho3jKa+y/MSBCXgmR2UVoay2zaGdwyNNJU5Ukeq5qUuy0JWLW0KcgXgENCsc1WJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8qOecPiELzaYSl25F4GPrgZ6UFUFIftqRiJ2KT5U/5w=;
 b=bmWVQFkuKBE1QbcwtrePiUzvoJag6Wblmgw9D1+kMkRRH9fP80WxwJY5s4Qmph4eZtF1W1mysQg97tkQqp/CK4dGsO9shElLkkOb8vNI7xjUqrHK6uDZDW2JjSMm8Texuvm6z6GyLHnsLQxjEuJLz1cJFHvaP7KnPjoExgtdCd4lhFwPR6RQOQCbmra8tKo+lQeV3dr2i3e5rayGnnuB511AOHaCpGQNYs2OZksEjS6ycjKV/zOCL7vz4nxW5AGpQEnlVPlXr1WGUsObDI7UKAbyZQXUMptMINisp9AjfnaB1J+L0/bwJ1ws6mn69uVECEPduVc5/wJ+6GDJvI1oJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.18; Tue, 18 Jun
 2024 12:03:29 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 12:03:29 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 5/9] drm/i915/psr: Disable PSR2 SU Region ET if enable_psr
 module parameter is set
Thread-Topic: [PATCH 5/9] drm/i915/psr: Disable PSR2 SU Region ET if
 enable_psr module parameter is set
Thread-Index: AQHawUC5gXLoKGecr0W/jNCDwM22SrHNbFUA
Date: Tue, 18 Jun 2024 12:03:29 +0000
Message-ID: <PH7PR11MB59813B07ECAFCFB098272430F9CE2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
 <20240618053026.3268759-6-jouni.hogander@intel.com>
In-Reply-To: <20240618053026.3268759-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ2PR11MB7548:EE_
x-ms-office365-filtering-correlation-id: a59bd65a-c168-4fa1-aa50-08dc8f8eaadd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230037|376011|366013|1800799021|38070700015;
x-microsoft-antispam-message-info: =?utf-8?B?MWovUEQvRzdlYWlLbGtzS3BWNm5qcWxVZGl4eHNIWkNqR1BKSTl4T0ZQbmlr?=
 =?utf-8?B?djRMZGlGbkd6RXV5aHNpbXJmdGtlUEtPUzE4SlY5b1hHQ1lQcUFsM1RHb3Vp?=
 =?utf-8?B?OXJzdVNEc1E3VExBTnVlVVBqR2lJclBnaG9IRUdwclJ4Zmg4MlAxbFllSm1J?=
 =?utf-8?B?V2tiUnY5eUlVd09SSGxRK1dqRTlxU08yNUIxUUE4SmJVWUttYm8zdlh4VGFZ?=
 =?utf-8?B?S0NaUjBlT2t2Q3JCR08xekpNT1MzZVlaNDFIWWJCaXZvQWtuTFIxZkVXcERk?=
 =?utf-8?B?dEI0R1dvODZpYjRXb0lMM1FZOEFiL0htRE5wKzVQUHdBd08yeEUzWnl6UzY3?=
 =?utf-8?B?ODBzT2RMdm5TRnBQT0lvcHMreVpzR2s3WXNTZjRaVldtZlJxQmNDR3JvMjlZ?=
 =?utf-8?B?c1hHZTdtTUI4RWFKbUZjaUFZL3RwaFJia0hCMDMxSG1FM3ZNRkllc0dlUW1T?=
 =?utf-8?B?ZlhSL01QYUtPU050ZDJNUWo3dlNELzMrU1ZEUVg5YUx4UldwZi83QmlLVTZj?=
 =?utf-8?B?eDBoaDIzbkhvVk9lK1lvQThSQ3B2QTR5eWlHN293ZEVmVmd0WVpsbGRvVlFj?=
 =?utf-8?B?b21LYmpNd2dZdUp5VFU4R3RBaXRlWldaMzI3S3FuSUQxQUhLTUczR3VQL2ZM?=
 =?utf-8?B?M0R6aGZzczcwcWc1cGJzTm5EUUVwczFFTEE2VkRremJDTjlrNVVkVk10bldn?=
 =?utf-8?B?OEY3clhZUU1wd1QwSWFJWEhrU0hXU3hYZmFhWnVTSCs5RzNyQkNGaVhZenRw?=
 =?utf-8?B?RUwzQWFmdTRmb0czTmxMVjVkVE1XMm1XWEdiNThyVUoxYnFwR2dZVE5SQVdS?=
 =?utf-8?B?Q041Wk1mV3VMaHlMbmJiR2gzWFRDVCthY0Vnd1NsVFdiQ0ZlNmlRZ1RaOWVj?=
 =?utf-8?B?NG5rRkd1U2pWUUhXVzlaWkwyVTFGSEJXdzQ2RzljWktiUFBlN2JVQ2ZITG9S?=
 =?utf-8?B?MEpobU9Za1loa3RqYXY5ZWIyZmRINmlXTkpRM1NQeWtIdkpIeGcvQ0NZdHRp?=
 =?utf-8?B?R0o2N3RaNmxJQWNKWlhIdmlYc2xueUpCeFJsZDJzYWVra2RXTlMrOTRjaUY5?=
 =?utf-8?B?VW5XeE9uSDExakFCMTFUM1dQZXdwYi81OVphQnNxQnJXVUZiMzN1ZDB2U1U5?=
 =?utf-8?B?SUhBeGEvN1R2OE4zMHRNUmlHQUNGdkx6dHU0VHNnblcvbGpDd2JvVE9GZERP?=
 =?utf-8?B?WkY0QjAwQ1NDYXowSWN6eC9CMnNkVmtHTndyb01DdWd3NDVpUEphS3dJUW0w?=
 =?utf-8?B?VVJza3hqMk1mcXl6empoTlpIbHVuR3FPOE55YzN6NXFjR2t4WG1nRVplYlNL?=
 =?utf-8?B?OVBaWWJxOGYzRlZjbXVmeUNiRUpWYWs1K3FkT1pFMzdLK1lUYU5wT2lxMFpO?=
 =?utf-8?B?VHdjdkljVTNJQVQxNDB5ZVBYd1J5aGRaeWdPRGpsaU1JMHRhYi9kR1cxbklW?=
 =?utf-8?B?d2hhd0p6NXB1OWoyNERNNE11WWtXRml1UlNFVDZMK3g3Q3hTQ2o5VzZ1ZmhM?=
 =?utf-8?B?TUtYb3BvOHBzeXYyTFNiNEZ4dHlPM1h2ZnRVVlF3NmJNKzFqWjlEclI0aG5V?=
 =?utf-8?B?eXBiMk9rZUtIeERROXZaU3pQL0J3QnBzVVpzSFNCL004SmJPUmhZR2krckVC?=
 =?utf-8?B?cjFmaWVDN2ZKVWZ0VVEzcjV0MnNhY0V0cFQzd1RtZFUrcGJjbXlKZEJEMzV5?=
 =?utf-8?B?eDc0SGpxUGtYQWthR0ZQOTgyY1crQXNHUVZsUjliVlo0cis3MzhwbFRXcnNx?=
 =?utf-8?B?NEhzK0tZUHNSS0IwamJENGFjYXY5NHYyTmNwZ24xTHhxQXVDcWZkeExzb0Jv?=
 =?utf-8?Q?9rCDnfDrf6cUcVk/5/BbK8WEW2lXrjHEee8/U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(366013)(1800799021)(38070700015); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MWhZUnUveHc3SUlJMkhoNmNoL2lQTCtFTU5QUnhIcS9QUXY5VEdWckJSTlFh?=
 =?utf-8?B?ZjRyZDlGTlV2TitFQmRSVGlRM1JiMVRkTGx2cmxRSEkxVUxjdXBEM3o5UFpw?=
 =?utf-8?B?YnF6MFN6SlkwdWRQbzF6OGZUVXYrYkFtSFcrSEdDb2V2Y2M5d0JGWFRpUmdh?=
 =?utf-8?B?REV1T0tGNDVET01zNCtLd2JqTDArWXpqdmRkOFd6aFRuSUhiMFpJUnVnZFJN?=
 =?utf-8?B?N2YrbHppT29iUDNoNHlSZWRycDlhT0NoQWhmMGNLQ3F6SjN3MzM3UjJrcmxI?=
 =?utf-8?B?ZzNLYW8rbFdtMEV0d09ZTWUyY2tSaVlGaFZyQUNMNVdJR1hrdXVHQ1YxSklB?=
 =?utf-8?B?VFI5U1VLMzNPbUc5OTZKTStqb1pxaW05RVQvRzJ2YWxtR3R0NXlaYldaNTVj?=
 =?utf-8?B?MDBFdlpoc25kVE1wOXEybExpaS83amZWUW5HTXRCQjBHRmwvL3ZNZVI1QlFh?=
 =?utf-8?B?TS8rN0hXU2RUQlZNL3BaTWRNZ0kwa3BCVzUwVnBKeW1zdFFSV0ZQVlNTRkE0?=
 =?utf-8?B?Vi9pVVVsV2dJOSsxeGZiZ21UczI5d1NTNURhdmF4bS9hWllyMTRldlprd3Fw?=
 =?utf-8?B?R0MwWERmWGtQU3V0b1Ewdm12K1NIWlYzWGFRZ29NbUVSRmZFRDN4bGtWWHh5?=
 =?utf-8?B?Z0lZRmZ3czRUVHdJWHRsMnRDc3VuQ09qaVVHdXJsampzL28wMWx5cHd3ZHk3?=
 =?utf-8?B?bjlIZVk3eDl6Q2VXR3MvWTd2Yllwek1BTnM3bURuWm13TFR6ekxtMUg2QW1R?=
 =?utf-8?B?d2xST1ZDNndLZWtjWmRpQjRBYkRDZHpXZFFBc1NsbTBFWHRQT0E0Y2xmOXVT?=
 =?utf-8?B?SENPSkpLQ1J1dThiRGZWQlhRNmtBRXJYVXhscjFPb056WEQxWElYaGgxdm9v?=
 =?utf-8?B?RW1tbzNIWnlvTlZHUjRLOUlweTU0QThiU2tqUG1lNXdmYXNibG9sM3Q0aHFT?=
 =?utf-8?B?cmxTdEdBdE9DRTc4TmZ0MlNDTnJyNzRsMVpTV2tQNGtoakY4SG05WmxJT1I1?=
 =?utf-8?B?bnZydExOWFZmaGhWQmV0WnllSkNNQTRubUdqcUpnZUF4eXI5dTJWcUlxcUQw?=
 =?utf-8?B?VVdCcUVEWk0rM3hla3FFTFJmZXVZOUNFc3lLSE1rc1hYTC9zUDlHYSswZEpi?=
 =?utf-8?B?R0FCTjdnZWRXTUxPMXI3cXFYZlUrdFNBMG5vYStiVWlNemdETEk3d3JpK1k5?=
 =?utf-8?B?a2dCSTN5NllFcVU1MXZTUGVDWW9nZXE3a081K0pzanBVdXVrMmpJWVhjamxs?=
 =?utf-8?B?Slg2MHpwMzZDUk5yOVg4QWhTUGh1TFF5cEwrekNkY1ZieUtURkQzRUhXT3FF?=
 =?utf-8?B?KzZ3QThqenpVSzB6ZmlSSlFTOEx1Vk5QOTJWdWNvQXltc2dCSVRyNC84bEdQ?=
 =?utf-8?B?UEliRDYvemFaR1FQQndNdWlFQWJOcUNUWnZoMHBEL3A2dTI1SjYxbkVWdUVC?=
 =?utf-8?B?WXkvcWEwZlJWTERzOEQ1NnZpQUdXQ0Uza0lqcEg4SzBjQXdmTFpXN0NaNFVt?=
 =?utf-8?B?cHN5L1RhRlZhN3Zvc1N1T1NjNFpnNzF2a00vazQ1T2pHVVIrcTJ5WXMrVUQr?=
 =?utf-8?B?MU9PeDRWUDJRc280dG16RzF5M2VrOVlsU29JdVlsVFk0MVZoU0xWeW9MWHRx?=
 =?utf-8?B?Z3g2eGRSbmN2NDJhMzV1L0EwRGJWS0V2RFNIYW85NUtnRXoyQ3ZzMDRHYWpw?=
 =?utf-8?B?emh1Mm9GcXJYY0liYXFmWVlBOTVhRjd4UnZOWHh2MEhRcjVhdVNQOUJGci9L?=
 =?utf-8?B?VkU3VzhVTlZTYTIvNXFhREpHVGIxQ0ZhK2UzQkxIQUFWSEpUY3JveHNsMnBS?=
 =?utf-8?B?Y0xRNVBGTzdZSWUxbEVEdGdTRU5yT3lHa1FJNzVZYmw3b1RrSjM4QmtmdWlE?=
 =?utf-8?B?TVZyVnJFclk2TjJscGhkNlYyb1RqWXVSZ2VQQkRGVGxRR0N2eWdHakpsRFR6?=
 =?utf-8?B?ZG1GbTZLbTBpak5WcFdjcW1LNndMaUY2UmU3dG5CNVUyRmpyUEVFT1dHV1lv?=
 =?utf-8?B?eUY5cWtQMVNFZGw3S1VWYk1jcnN6YlVyUTM4QUpvS0xyZ3pDcWhCeUx1OHl2?=
 =?utf-8?B?WExMOXhKVHpTeG15TndwWmxPdGR6QmE3bmlSL3hFekZ6ZzZmZnRVUE82M2p0?=
 =?utf-8?Q?Me7wnwvXG+WvBcMDF93YbUVPE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a59bd65a-c168-4fa1-aa50-08dc8f8eaadd
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2024 12:03:29.3988 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: abImHwLc6WYqczZR+yxo3TqByYN2gXtXaHQjr++yZgNWAAR04YfIx8mZCqoda7k70Wgg17LuPbsk+RI2cEh/jw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMTgsIDIw
MjQgMTE6MDAgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCA1LzldIGRybS9pOTE1L3BzcjogRGlzYWJs
ZSBQU1IyIFNVIFJlZ2lvbiBFVCBpZiBlbmFibGVfcHNyDQo+IG1vZHVsZSBwYXJhbWV0ZXIgaXMg
c2V0DQo+IA0KPiBDdXJyZW50bHkgUFNSMiBTVSBSZWdpb24gRWFybHkgVHJhbnNwb3J0IGlzIGVu
YWJsZWQgYnkgZGVmYXVsdCBvbiBMdW5hcmxha2UNCj4gaWYgcGFuZWwgc3VwcG9ydHMgaXQgZGVz
cGl0ZSBlbmFibGVfcHNyIG1vZHVsZSBwYXJhbWV0ZXIgdmFsdWUuIFRoaXMgcGF0Y2gNCj4gbWFr
ZXMgaXQgcG9zc2libGUgZm9yIHVzZXIgdG8gbGltaXQgdXNlZCBQU1IgbW9kZSBhbmQgcHJldmVu
dCBTVSBSZWdpb24NCj4gRWFybHkgVHJhbnNwb3J0IGJ5IHNldHRpbmcgZW5hYmxlX3BzciBhcyAy
LiBXaXRoIGRlZmF1bHQgKC0xKSBQU1IyIFNVIFJlZ2lvbg0KPiBFYXJseSBUcmFuc3BvcnQgaXMg
YWxsb3dlZC4NCj4gDQo+IHYyOiBmaXgvaW1wcm92ZSBjb21taXQgZGVzY2lwdGlvbg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+
DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4N
Cg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAx
MyArKysrKysrKysrKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGluZGV4IGNmY2UwZmUwNWQ5Mi4uODAwY2ZlYWJjMTM5IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTIzNSw2ICsyMzUsMTYgQEAg
c3RhdGljIGJvb2wgcHNyMl9nbG9iYWxfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVs
X2RwKQ0KPiAgCX0NCj4gIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBwc3IyX3N1X3JlZ2lvbl9ldF9n
bG9iYWxfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICsNCj4g
KwlpZiAoaTkxNS0+ZGlzcGxheS5wYXJhbXMuZW5hYmxlX3BzciAhPSAtMSkNCj4gKwkJcmV0dXJu
IGZhbHNlOw0KPiArDQo+ICsJcmV0dXJuIHRydWU7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBib29s
IHBhbmVsX3JlcGxheV9nbG9iYWxfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSAg
ew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gZHBfdG9faTkxNShpbnRlbF9k
cCk7IEBAIC02ODMsNw0KPiArNjkzLDggQEAgc3RhdGljIGJvb2wgcHNyMl9zdV9yZWdpb25fZXRf
dmFsaWQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gYm9vbCBwYW5lbF9yZXBsYXkNCj4g
DQo+ICAJcmV0dXJuIHBhbmVsX3JlcGxheSA/DQo+ICAJCWludGVsX2RwLT5wcl9kcGNkICYNCj4g
RFBfUEFORUxfUkVQTEFZX0VBUkxZX1RSQU5TUE9SVF9TVVBQT1JUIDoNCj4gLQkJaW50ZWxfZHAt
PnBzcl9kcGNkWzBdID09DQo+IERQX1BTUjJfV0lUSF9ZX0NPT1JEX0VUX1NVUFBPUlRFRDsNCj4g
KwkJaW50ZWxfZHAtPnBzcl9kcGNkWzBdID09DQo+IERQX1BTUjJfV0lUSF9ZX0NPT1JEX0VUX1NV
UFBPUlRFRCAmJg0KPiArCQlwc3IyX3N1X3JlZ2lvbl9ldF9nbG9iYWxfZW5hYmxlZChpbnRlbF9k
cCk7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgX3BhbmVsX3JlcGxheV9lbmFibGVfc2luayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAtLQ0KPiAyLjM0LjENCg0K
