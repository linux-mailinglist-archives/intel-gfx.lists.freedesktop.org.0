Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC2EBC38B6
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 09:15:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5205810E75D;
	Wed,  8 Oct 2025 07:15:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xu6R8yIR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBEA10E0AA;
 Wed,  8 Oct 2025 07:15:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759907750; x=1791443750;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S3Fx4NgjzRd60w6GY8ghrovyR+ONdRRUyqqDVeeCeVo=;
 b=Xu6R8yIR+gJdJyO/u8wY7etD1MH2+CyIfoFSBvP+pKYs3HuA/McOjRRN
 rrqZr2Tnb8mBI3uIgRPpRnbNzWqTfx3gD5VhWWGZ6W3PQE148B/dd3x7m
 +tFLBE6eFp5rFf6v9zOLb712nyvKAJv/Z/2mjkAixvhWe4xTmTno/ys7p
 BwtvoFw3pJKB0YJki8WV5vAzqL/huO1GjZujkYO5y7KmCMJm6gkM7ogW5
 7GZeoUxuE8pcGeYxdFAh70JEOeo6FgeraOeR8jqLXqiVNzWWcauWScUwq
 pMzf+XnTVVtiSVIbRy1ycMVa+sqNNnNxx2BvkXHG2P5nG4wW3wzIBZt8+ Q==;
X-CSE-ConnectionGUID: Fxr4lSXBRwaxHDj9B4h6aw==
X-CSE-MsgGUID: vh45XfaATSCMq5W12GIkig==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="61800453"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="61800453"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 00:15:49 -0700
X-CSE-ConnectionGUID: uHjZZApgSraC0e3PnbQpsg==
X-CSE-MsgGUID: /PfLn1JfS7WrsSEnPlOjxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="204092738"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 00:15:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 00:15:48 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 00:15:48 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 00:15:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gHIvrqmXqsOEN+AcQp+/pHXeQTDuwTBjTiwoSXKsTTAMhLETU6WsVXvrOKpIKTbgtwYErYBx3Pyca+r1now9bDuE+NaucNVbpHvgkH5ox9OJqgRYb4Ror3XSyVA5svi8YTb7BgMrA/xuPRxVgtHDl+Ef58xLCmgd4YURBTzVth62TlgcCQdE/Ct6fADGx/6w1GxfIKMKyDurXYUlfyT9aJNrygcoFdp/lMshRqrj6u6IHzU55npKLiElYuNJDDTUGGzC0X0who0ALsiVi6ATLPykBmmZ26wKdL9uXBeeMKfFD3oq3bWWcuvBUlRVbA8YmNsROg5PumD7u81kPNw+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S3Fx4NgjzRd60w6GY8ghrovyR+ONdRRUyqqDVeeCeVo=;
 b=E6uW+jAKp4X5Dg6AclINv3ua9khLqyKHdK/fcL6gKRxcVchGIgxtGsq09qZIoF7zZLBI7nXev4cKL3cN4eP+bFxQENlFoh2k6H7NvRpPR1nZOZoTyX6Z9gdNgqpa7gMmOruLpdm81JJLIUUAehWdSmNgoRvDnaHJeQHjIjrb0gVzv4Bm//3YZxRz2AfFHtkruTPB5jHamn8wq62rUHmNXCH36Pa9K+RWMgsgyLb7p5y/rRfpIzT8hF7vVjS8zcA3AchF4ld3+iNGn+PXkZrtJfC11v85oPqmLj9QG+6D3px6e3R17Qix3NgU+zpWiTaqTgrfqX1wDZSB6yVqTLAguQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH0PR11MB4870.namprd11.prod.outlook.com
 (2603:10b6:510:34::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 07:15:42 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%6]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 07:15:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 00/20] drm/i915/cdclk: Decouple CDCLK from state->modeset
Thread-Topic: [PATCH 00/20] drm/i915/cdclk: Decouple CDCLK from state->modeset
Thread-Index: AQHcLK5mVtQk23EfE0a5l65eVcoM9bS37R/A
Date: Wed, 8 Oct 2025 07:15:41 +0000
Message-ID: <DS4PPF69154114F981D61F6CB665DAED139EFE1A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH0PR11MB4870:EE_
x-ms-office365-filtering-correlation-id: 4e58d0f4-4c77-47ce-81e8-08de063a7d8a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?bHJuamtYcGh0bTROUGxKdFROYXRUSmJaZDViblJPQ2pNM2hqS1lPMWxYbDls?=
 =?utf-8?B?Z3NuZHZNSnhsbzdaZE1EUnVISFZZTlovVFhpaEdibHFsWithYVAvUGxneEN3?=
 =?utf-8?B?VU9mZEs3OTVWNUJ2WmJWZEExZEFVcHZpby8yRzV4azAvYUdOSk5oNU00RHlE?=
 =?utf-8?B?bzIydVNBblhaN2dJM2VlV2JQVXpYdjUvd1ZmdGF1SGI5VDZvYXc0bnhyZWVy?=
 =?utf-8?B?QzIxOWh5VXcwZTRNbE5Za0w5c3lSekxxWDBPOTEySldSRUovU1FqMExHNDF6?=
 =?utf-8?B?ZGw2QmdBckRNUHViZGxSTVlPcGp0MCtRWGNSN3F6QzgrQWJnL3A5VkVETjNC?=
 =?utf-8?B?T3FiakhKYmRPUmxmMGhBakkydkIvejQ0Y0MyeDQrRUtZbTBybE1NT3IyYm1V?=
 =?utf-8?B?NWlrUHFvVittaklzREVkMENtODltQ2FQak9rS3ZyRHRWSDBkS3lycnArQTNR?=
 =?utf-8?B?R3o0YWpJY1NhN3ZlTEIrV2RURklldFRpUWN1Z0lZN2FZc3BTenpKL1hKYnFs?=
 =?utf-8?B?OU5XaUlNNlFDaUFQTVNjZEl2M0JIczJnNnJ5alljYWlrSWNKbndIdWhKR0lE?=
 =?utf-8?B?WTVmeEhidDVXdytUUTNJTTQyS0JycXdjSkFIT2lmNGppYzdJUXlSV3Rtc0ZT?=
 =?utf-8?B?cEdBZFRnUjBPSVFQSmFJcGVhZVZkR3plUjVzREZEZS9DN0MyMXNwQVIrRVhD?=
 =?utf-8?B?UjRaWCs1ai9GaWZTa3hmR05vUzUvYW9vc3BjbzR3ekFRRURIVklTN1crWnVZ?=
 =?utf-8?B?a3Q2RjZ0L21UQ1UvYndvZmloaGlNcStZaHVBcFRoR3Y4alhVVHQxU3NGSmQv?=
 =?utf-8?B?R2lZcXNIeW1ZZTQyWGxKcGxaTWgzMnZSRFhmc0tWTTAvbm15dGI4MU9FVFBM?=
 =?utf-8?B?TjhjVEFXK0xFVHExT1FlRFo0d0tGM2ZRbjZsT2VqN1J2QlpzTEthQUpBdDZz?=
 =?utf-8?B?aXArOVpTODh0VW1lT01lSi91SEVUVmlDUE1rb21oY24yNkZITDFGOUloNWRD?=
 =?utf-8?B?Ni9LYU5EbThUdjBybU9sQ04zZFBtQ3RRcFUwbkxPa3hkM08vai9uc0JZd3pa?=
 =?utf-8?B?WWhYNDdHSTNXaXV0dDlraWZMVFJ0U29PajkycEdrR3Z0L3dMUjBETmlBS1VK?=
 =?utf-8?B?Q1RDenpnRkx4SE43emtWQlkvRm5yV2IzdHNmcklVTU5RU0pQMGtjSnVKYUpQ?=
 =?utf-8?B?YnRpM0pndU1uTjdJM0JKcHU2WGZJZ3JIc0FhVHcrQXBOb0EycDF6Z0JIdlAy?=
 =?utf-8?B?OVJMQTN1a1lTczh2U1FES1ArcjliaSsrSkY2TWxST2E5Q0NNdldOL0Zobk4z?=
 =?utf-8?B?YnZxeWkzWnhDTWZ1N1U5dVVIOFFReGZDVDBybEw2RXd1Ry9JcGJuTW1ua2FW?=
 =?utf-8?B?cm9DRlFQaWFGb2hIbnVrYWhZckNBb3YzTTNrUmJzTFZLVUFXcThJaEMzYWZi?=
 =?utf-8?B?dkorWStVeHJ6OW1QS2V1ZVVHQVdQaEFBYjZVK3lrTTUvcm5WZjZtejNjM1pY?=
 =?utf-8?B?azErcXFrK0tlS3BtN2toMTlwTmI3T05LRmZ1UXhSVDBYc3YwUW91ZFM0R3Fw?=
 =?utf-8?B?Nm4wck1rNlhFQVNTMzFwbGJiVlR2K05VZHR0emZTbDkrY1YycTM2ZHhyNTV1?=
 =?utf-8?B?NC9HRVJYeEFMU1c1ZGNCSTZIdTNQN09kejFwYWgxSnZwRmgwWUtWL1hWZ1pt?=
 =?utf-8?B?SWpWS3YxeG16SW9weC9MVjV6S3NIdUpjRVVTYnpYcVZFMkE3OEk2TDVDY1hV?=
 =?utf-8?B?SDl3dGZRejFOOFhnMDhLTjBsV281S1RiZmhkTTdIbFFSQnB0NG94a3hBdG53?=
 =?utf-8?B?dXFsQnZES0xrdjRTd0tRTUtpYkJJZnJGNGNEaGlDazF0bUFYTTNaOUZGcVNO?=
 =?utf-8?B?a0s5WS90ZFgwRFdseFZZWXlyYklqYVZDSVRRaDE2VGpSekxJYTNkZElWQWNq?=
 =?utf-8?B?eDNzeHJQb3BNRmRZYzVIZUQwLzZ3ZHpObklSSldyc1kyWUd4cmZ4R0h3L0V1?=
 =?utf-8?B?aXIyNHU4WUkxZkVtekZzaWNGRmtMYjZGa040akdBZUI0RXdxRVdRdmdtVk5C?=
 =?utf-8?Q?E+bgRW?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUprM0JCbjZId3MrQnpEZklESEtLOTBtb1dlSFp3OUNKZGZZaGozZHF4NWpw?=
 =?utf-8?B?K0ZYTFJLNGRRM0djRnA2ZGNIV3Q3YnB5WithUGxKQkFzd2JyWGRvTk1GUDVN?=
 =?utf-8?B?c201c1BmeXBqRzdhcDA1ODdGWGZpV2tYQzd3ak9LSk5WbVErWkRnUnJKaWVo?=
 =?utf-8?B?OXlNSlg3bGNLYXp6WDRMcHpIWkZNVkRmSkZDanR1THMwcm95VlY1eElCZS8y?=
 =?utf-8?B?OWYvbzBCR1pIZG96YzNNVzM5ZVZRWXhRYmRNVGRpWjRqbk1kQnVnNGR5MWFW?=
 =?utf-8?B?TFNrSE1Pa2FDYVBGd1YvN2k3ekE0NEw3dUluWE9hMVV1bmRNd0NRWXQrU2Fk?=
 =?utf-8?B?WDlMYVkyaU5wOS9YTXptd2NodkVLckpPaDBFamxxenVHYVVBd1pRVi82ekVN?=
 =?utf-8?B?M3NwT0ZvN0t4YWV2QTRhQ05yd1AvU1Uvell4d25weDlWZHgwK3lDM2RHSVBq?=
 =?utf-8?B?Rmt1SXlJYTJPSS81ZDdwd2x2aU1xd2RxT1hid2FQQkVlLzU3L2hZdzltRk40?=
 =?utf-8?B?MnplVGNjVlFVTDNBdU5oUXNhZVB6TW9iYXVNMlIyK0F3dGZCNXBzMXB3QzVD?=
 =?utf-8?B?alNGdE1RTE9OQzhQR2tKOFNRQVA4Q3ZRQVVUYW4yTldhb01VY0pLSFBBZTBj?=
 =?utf-8?B?WFlIQWY4KzhqaDh4THJJNVoxSTlaSG5WaVBHK3BBWEhIRmM3SEtxcVZjLytI?=
 =?utf-8?B?dk1xNnJQMWZRRC91U2d6V1V3c1c4b24xclVvSGw5MDk0eEc3TmN1Nk16cUJh?=
 =?utf-8?B?dVNLTDNYZlVVblU2KzhmdHNkV1MvOVhVRTQvbU1oSncyTlV0WEo3dTFmcHVO?=
 =?utf-8?B?MEhSaUVneHZQU1c0SlIzY3pzWGloWXdtcW9Mbm5xcjBOMjMzWWNkNXdUOUhi?=
 =?utf-8?B?UUV1SkF0RnQyK0xwNDM5MnlKK3RLLzNOWGZNNnNmbmxadmZDWS9HdFB6dDVh?=
 =?utf-8?B?MzE3T1c5a0N3YlFBWVFYNTdwOG53Ym1mRjZEKzVNOS9abnBGU05FQ0ZUT0Fi?=
 =?utf-8?B?RlBDWGZpZmNTaFJ3OXk3cHNSR0ZRNlJJQ1hTdlBPUjdJZ0tGcmh4QzhjUmV2?=
 =?utf-8?B?WG1Tem9ITjlyUXh3QTdMQWdhUTFwa2lwNVF1MUhxVEJFY1grdWRwUTZHL3Yy?=
 =?utf-8?B?Q0NldE5tTnpTdG9FZVRoZSsvUm5Nc2pOdk1EZW9ISFFmcTZvOUxFOFAzbmhH?=
 =?utf-8?B?bXJtZTdNeTQydGphc04zTHJIQkl3T3lvUHNYaWhkb0tpLzRXZkR4eTJhTXFk?=
 =?utf-8?B?Uk1XdVpNVEkrMlF2TjdEQ1ZmV2RmRXh5TzBwU1Y2ZHRIV1V3SUFTZ2J0Z0U4?=
 =?utf-8?B?VXR5aktIcFN2QjZnOTg1cXh2dkdSdE1zaVNWbU9qVjRNbzYwVWZJek0xZDdS?=
 =?utf-8?B?R0hPNUN5QTFzNVdjaldqZ29rUC8wenhEZkR3SlNRWHc0SlVJazVVcS9DcjBk?=
 =?utf-8?B?SkEwYVVhK3Z6Qm9XWEhSMG9UbFdGazlnY2F5VEZyc2RybWVKa3E4Vk1hdHcz?=
 =?utf-8?B?ek11OVJTMmVneUx1emgyZVJDS3luWmtJSktBdEp0cE9ONUtReEFKS1J6Ny9u?=
 =?utf-8?B?S3RMN1FwdHlRdjg2T2lMakVQZHhuL2JFOXp3V21xQTcrMitIWWxSeGpabjhj?=
 =?utf-8?B?VzZFS0JiRGxCc1BDSmtBZmUyUDNnK2I4WVhFSkxpeHdBcWZ6bG1aTDBodTZu?=
 =?utf-8?B?QlF1ZEE0NjRackg5VjN2a1E4WXk2cksxVWZJUnkrVW10cmdqdWxEMzFvQkdF?=
 =?utf-8?B?M1pURUxWZk9nSklmZWFkYklsaWhDWld2S2kxZmtFQnN4RDlxYTZwUC8wMjkr?=
 =?utf-8?B?Y3o5TXU2b1VZS2wwUkVSb25BQ2kvYnk3b2liTUd2NFN4OTRlLzVGRVY4V0JG?=
 =?utf-8?B?LzZQVkduYi9VZE02U2VjNWc2WWxJcFJweTd4ZEJEQWpISVI5TElXdEtSRklJ?=
 =?utf-8?B?YjFWckZyY0YyeC8zbUlNZUwrbU5QV2JrQkNlbWh2UXNldHcxVjhYTVNublB0?=
 =?utf-8?B?aS9VZkVsSmNBRHU0dGhYTitHT0ViZmRTdDlSMjE4TzZYeDJsREoxOTl6em81?=
 =?utf-8?B?SHhhWGljL3kzT254ZlpxeTlVaUZ2TXFUcFliSm9udTBoWUlhSUdZZWtwOXJ6?=
 =?utf-8?Q?s8mKs8jJZRB7HxwGj+XZFFljO?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e58d0f4-4c77-47ce-81e8-08de063a7d8a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Oct 2025 07:15:41.7199 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4p0+qkI3/k7jY4JIeP/EhI4mHc0aYdwwuyCA4EqRiUlyFxXez142yefOt+QV/jfDb/gMpUu4Iz36g8J/RbKkHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4870
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmph
bGENCj4gU2VudDogVHVlc2RheSwgMjMgU2VwdGVtYmVyIDIwMjUgMjAuMTkNCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggMDAvMjBdIGRybS9pOTE1L2NkY2xrOiBEZWNvdXBs
ZSBDRENMSyBmcm9tIHN0YXRlLT5tb2Rlc2V0DQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIHN0YXRlLT5tb2Rlc2V0
IGRlcGVuZGVuY3kgb24gdGhlIGNkY2xrIHN0dWZmIGlzIGFubm95aW5nIGFuZCBjb25mdXNpbmcu
IFRoZSBjZGNsayBjb2RlIGFsc28gaW50ZXJhY3RzIGluIHdlaXJkIHdheXMgd2l0aA0KPiBzZXZl
cmFsIG90aGVyIHBhcnRzIG9mIHRoZSBkcml2ZXIuIERlY291cGxlIGNkY2xrIGZyb20gc3RhdGUt
Pm1vZGVzZXQgYW5kIGF0dGVtcHQgdG8gbWFrZSB0aGUgaW50ZXJhY3Rpb25zIGJldHdlZW4gZGlm
ZmVyZW50DQo+IHBhcnRzIGxlc3MgY29uZnVzaW5nLg0KDQpGb3IgdGhlIHdob2xlIHNlcmllcw0K
DQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiAN
Cj4gVmlsbGUgU3lyasOkbMOkICgyMCk6DQo+ICAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9j
cnRjX2VuYWJsZV9jaGFuZ2VkKCkgYW5kDQo+ICAgICBpbnRlbF9hbnlfY3J0Y19lbmFibGVfY2hh
bmdlZCgpDQo+ICAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRlbF9jcnRjX2FjdGl2ZV9jaGFuZ2Vk
KCkgYW5kDQo+ICAgICBpbnRlbF9hbnlfY3J0Y19hY3RpdmVfY2hhbmdlZCgpDQo+ICAgZHJtL2k5
MTUvYnc6IFNraXAgdGhlIGJ3X3N0YXRlLT5hY3RpdmVfcGlwZXMgdXBkYXRlIGlmIG5vIHBpcGUg
aXMNCj4gICAgIGNoYW5naW5nIGl0cyBhY3RpdmUgc3RhdGUNCj4gICBkcm0vMTkxNS9idzogRHJv
cCByZWR1bmRhbnQgZGlzcGxheSB2ZXJzaW9uIGNoZWNrcw0KPiAgIGRybS9pOTE1L2NkY2xrOiBF
eHRyYWN0IGdsa19jZGNsa19hdWRpb193YV9uZWVkZWQoKQ0KPiAgIGRybS9pOTE1L2NkY2xrOiBF
eHRyYWN0IGRnMl9wb3dlcl93ZWxsX2NvdW50KCkNCj4gICBkcm0vaTkxNS9jZGNsazogSW50cm9k
dWNlIGludGVsX2NkY2xrX21vZGVzZXRfY2hlY2tzKCkNCj4gICBkcm0vaTkxNS9jZGNsazogSGFu
ZGxlIHRoZSBmb3JjZV9taW5fY2RjbGsgc3RhdGUgbG9ja2luZyBpbg0KPiAgICAgaW50ZWxfY2Rj
bGtfYXRvbWljX2NoZWNrKCkNCj4gICBkcm0vaTkxNS9jZGNsazogRXh0cmFjdCBpbnRlbF9jZGNs
a191cGRhdGVfYndfbWluX2NkY2xrKCkNCj4gICBkcm0vaTkxNS9jZGNsazogRXh0cmFjdCBpbnRl
bF9jZGNsa191cGRhdGVfY3J0Y19taW5fY2RjbGsoKQ0KPiAgIGRybS9pOTE1L2NkY2xrOiBSZXdv
cmsgYndfbWluX2NkY2xrIGhhbmRsaW5nDQo+ICAgZHJtL2k5MTUvY2RjbGs6IERvIGludGVsX2Nk
Y2xrX3VwZGF0ZV9jcnRjX21pbl9jZGNsaygpIHBlci1waXBlDQo+ICAgZHJtL2k5MTUvY2RjbGs6
IFJlbG9jYXRlIGludGVsX3BsYW5lX2NhbGNfbWluX2NkY2xrKCkgY2FsbHMNCj4gICBkcm0vaTkx
NS9jZGNsazogUmV3b3JrIGNydGMgbWluX2NkY2xrIGhhbmRsaW5nDQo+ICAgZHJtL2k5MTUvY2Rj
bGs6IE1vdmUgaW50ZWxfYndfY3J0Y19taW5fY2RjbGsoKSBoYW5kbGluZyBpbnRvDQo+ICAgICBp
bnRlbF9jcnRjX2NvbXB1dGVfbWluX2NkY2xrKCkNCj4gICBkcm0vaTkxNS9jZGNsazogRGVjdXBs
ZSBjZGNsayBmcm9tIHN0YXRlLT5tb2Rlc2V0DQo+ICAgZHJtL2k5MTU6IEludHJvZHVjZSBpbnRl
bF9jYWxjX2VuYWJsZWRfcGlwZXMoKQ0KPiAgIGRybS9pOTE1L2NkY2xrOiBVc2UgZW5hYmxlZF9w
aXBlcyBpbnN0ZWFkIG9mIGFjdGl2ZV9waXBlcyBmb3IgdGhlIGdsaw0KPiAgICAgYXVkaW8gdy9h
DQo+ICAgZHJtL2k5MTUvY2RjbGs6IEhpZGUgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKCkNCj4g
ICBkcm0vaTkxNS9jZGNsazogTW92ZSBpbnRlbF9jZGNsa19hdG9taWNfY2hlY2soKQ0KPiANCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYyAgICAgIHwgIDg1ICsrLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmggICAgICB8ICAgMyAr
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jICAgfCAzMTIg
KysrKysrKysrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9jZGNsay5oICAgfCAgIDcgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY3J0Yy5jICAgIHwgIDQyICsrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jcnRjLmggICAgfCAgIDcgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMgfCAgNDcgKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaCB8ICAgMiArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3BsYW5lLmMgICB8ICA1MiArLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3BsYW5lLmggICB8ICAgMyAtDQo+ICAxMCBmaWxlcyBjaGFuZ2VkLCAzMzUgaW5z
ZXJ0aW9ucygrKSwgMjI1IGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi40OS4xDQoNCg==
