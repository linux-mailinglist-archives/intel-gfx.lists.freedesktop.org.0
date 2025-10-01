Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0BDBB0028
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 12:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C301110E312;
	Wed,  1 Oct 2025 10:27:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAN1KRwv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25A1210E312;
 Wed,  1 Oct 2025 10:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759314478; x=1790850478;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=5OfFUh37wUqb/eghpIqW565eOgJ+HrZCHjTXIr1wAu4=;
 b=UAN1KRwvZq9C1XgNmbb5pS128tMZRof2prxa0foWz5nO2dzgkOhlOX5u
 BQQL+sZAta36xXcs2gCd/JwqgqioeyWprj0jFxJo3iOBFxzOh+hcdF4Sl
 f5oSuELAG3vBPAbHmqOIAWnqBFf0YwHrnIn/pgG4IgkHHJOEHxD2rdF3i
 AjnP02AUq4fZkevAYlaeftFm3ZI02zRkFvUHcpABu0ZJMDn7UvgKzch9c
 o6unKgYidubma2uMNEQj7X/E6KFg/r9VyDyu3B6uDQgjTaIHT+OlKa/X4
 iOgGrzPHWEQKKawc/U+BCIZC5TqKC9lpGpE3MA0Z2kCfrZYsegI+SV/8M Q==;
X-CSE-ConnectionGUID: dLVBkqT/TRy+rQRjuCPMxw==
X-CSE-MsgGUID: 93ghJfxKRwCKYSCg+oQS5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72684813"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="72684813"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:27:57 -0700
X-CSE-ConnectionGUID: 1Jxj4U8JQk2JE4L14oGBOw==
X-CSE-MsgGUID: 4hIXF+tbR1KD3qgf5qR02w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="202457349"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 03:27:56 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:27:55 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 03:27:55 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.45)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 03:27:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+QIj+xEOQEpDcPZBR1KiGZ1a8jNR9ZE97ZquOGjlcgwWwO46H7tEkGz5Y0oZPAW7gJUrZu9gdB4EfGA5JRohBvjAOGWyrAxVwOU+oX+FgXLh6jdXe56hl/8gmtED6kRMXLb1ScIHDGxKpfho3YvFCtN/r9I0dB7vW5gQ89l6I0FfkF7qz3p2cVgl3UTcl35/AFY5OgjVXxBrhD1PrR++Enrk8BC44rEKKUVTbgS8jYyGUzEl1uagXJBobABRHBB0tK8KYM9Ne4j0G31BF6QbV0Gu2vnOa84Fu3kLyQm4GZs9X47P8xRKQLhtR7MWU3D8hvqX0N6KFkyvMBhBVkB0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5OfFUh37wUqb/eghpIqW565eOgJ+HrZCHjTXIr1wAu4=;
 b=O6NnLeXYYnpzb9h47gmgAX+1Mn6c7JoxhZiQmXb9ffjZgH7Kr5swiFDdNeii1njMYrmL+4et/qhtMqRwvv1hd/Xn8pSojeZxkug2rDwFEDzr4XY7RhboqHYNDF6q19D1Rc1tXUQGgjXwnGLLl+jO1unUA8ZRS1Vk8Hz8titnPB1D9LSpeONoPiZDbyDgE8jz+0cy1eQn3HzFxVk5boJJATBEIkLWwBEAiDsd440WeWm1RQPGx9/chAExFdtwDZqWMkHpF3aAMJ7qQxmFwymrfoPUKlHrSd7kKRfWZM5Z+TZvt9QPxK/ZQg2mn0PfFiNNI8kAxLl/SVtv+3NxXWUAuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 10:27:45 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 10:27:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute
 wm line time
Thread-Topic: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute
 wm line time
Thread-Index: AQHcKZB7d/EkiWZZG0u7n8s27iexdbStKOmA
Date: Wed, 1 Oct 2025 10:27:44 +0000
Message-ID: <b98101c43bb40a1affab97d5c8bf3e3997ed92a0.camel@intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
 <20250919180838.10498-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20250919180838.10498-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SA1PR11MB8280:EE_
x-ms-office365-filtering-correlation-id: a2d899ab-ef7a-461f-7659-08de00d5291d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?RzVyU24wczl4UldOM1NFUGp5clhxRTJFdXlXdUdUSi9GNzlPdjZYNjRLZjVH?=
 =?utf-8?B?cFY3d2NiYzI5Y1JZeHRFMmtyelM0NjNDdmRwQkpBK2xSbFgxUm5ZS25ueWgz?=
 =?utf-8?B?d0Jvby91d1h6b0IzZm9nRlJuUldKQVJxTnV0OGVKWkJFSWxMalhnRVBNQnhh?=
 =?utf-8?B?ejVjMDJ3Q1VWQVNvbGVJZFcrTmI4dTEwRFpNTXhHaThLRGYwMHBzdkJFMTZL?=
 =?utf-8?B?VEJjeG4wM3VadDM4NStuSU1RdjN5UEx0QjdnMzN5N2VFMDMvYWF2NTRER3lB?=
 =?utf-8?B?RXF3U2F0dG10Y3JReFlNTnNPSlBBOG4rK3lhSFNDOE5keGtDYjc2SDdzSHpF?=
 =?utf-8?B?M0cyUW80RmVva0hKVE50NzV1Ry95blJZM3NGNS9xZTRYT2xPNkpWVVZMZVRZ?=
 =?utf-8?B?TVE5akprcllMSGpNZ1NiUmNEZ2o4RFhiQVYvN2VrWlZPQlZmRUxXS2pzc2xi?=
 =?utf-8?B?ZHl2cm05bHdLMXdoeVF1cU9nY3Z2eXBBdEM3eDVzMDF2dWdwVGZJeWhrWXBh?=
 =?utf-8?B?NUVwRVpwSjRpTUdESVRnZjdZRTVqSHJtRzVEMkt5WHdBUTgxTlhtaVhtK1ow?=
 =?utf-8?B?VXdVQm15RUJRbGZQcjg3dDhoSjhIK3NacjZaMUNXRVVhU21zSXhNSE9vMVc3?=
 =?utf-8?B?QllKRFhETUtkTDNwSXhFU09NbDlpakxJOFIzaWlsYW9vMkNZRVcvaWVkYVpH?=
 =?utf-8?B?bXJBMHphb2owalZVcG9PVTZpWi8vL1UxNnA1YWlLV3UvZldTdXFQYTkzMGtq?=
 =?utf-8?B?a1B1NWFLVkN0NzFWaGFHRjBxRHJZaFp3cG03OVI3QStjUW5NaTc3a1dSM25W?=
 =?utf-8?B?K21zVy9WaFRveGZTeng5bndzVTZ0YUtWcmRiendrWllGd1hZc3dPcjRRRUVu?=
 =?utf-8?B?dmtiMXR4U0czRmFqNXBNVEVzWHdmV2xLWWswNE43UDNvNTJndFdOZEFYUDRS?=
 =?utf-8?B?RkhnTlRqTVNwcEwxR0doeEVyejhGcDFHSEU1VXNzVFVwemIweThZRldmN3ho?=
 =?utf-8?B?U1R3anplbjVURXNHTVJyUStSaDRqdjlFMkhvWGUwL0lkTlM4elArVEEwZm1a?=
 =?utf-8?B?NWc4eDdhY3k2SFkvMG4vdU1qNG9TSGxqY2pEZWU0VzhtL3FobW4zMUFMME91?=
 =?utf-8?B?SHVvY25QbWx4UjJCYzlBakp0MXc0Uk5LNGxLWlFqV3h0WHAxMHd0MUROdVc0?=
 =?utf-8?B?cTlmR0FCNU9pU1ROUDEyb2xiSXJrbGtVVXIvVSt2UVNXSkVGd2VnaS8yNElr?=
 =?utf-8?B?N1kyeFV5Rk9waHJwTzlIY2tHS3I5UkRja1pMeUhEVFNYWmNGM1k5Rk5GM2NR?=
 =?utf-8?B?aEY5SHFSNDRKRm5qd3d0a08wWGF4R2I1bEk3SEc1eWFQcEswdWIvV095WlV1?=
 =?utf-8?B?R3ZPS0VQWnZVV0hTalpsbGhPNlh5dllLb2hkVVRyRFZhVTBkRjJZaFVsSmJI?=
 =?utf-8?B?Y2UvSU0wREo1SVY3SklEcjNiejRLaHJMcWJSL1piUWYzNDhlM00xOHd3Sitq?=
 =?utf-8?B?ZjlhcUVLYlBJZlFxR0pjRFhxVzBneFJaRWdRM3FPalhIL0MwVlM5OUk3Wk5r?=
 =?utf-8?B?Rlg4U01ZQ0dzSVd6U0lsc09IQ3BEVThueDFHRHpjZUtwZFBBMHZkQXQreDdC?=
 =?utf-8?B?VzFFYk4yMEdJT2szelFKUjFJaElmMFdFd0t4b0p6UENTUHhoTVdka1Vsbit0?=
 =?utf-8?B?ZGE0NmhRQ3hJcnVIY1JYNURkMHRoMlhiWm1jd2ZZMTVOQnJIOFJ2R0VrU1N4?=
 =?utf-8?B?MHl4UmxQZEE5UnlRby9oRDlqTEVKYkxlRy9KdW5qVGtBVEFxN1JFNGM4STN2?=
 =?utf-8?B?dW5JWnJqVUJCOVdWRHhpcmZIdTFZTS9UK053bEFpSk9SOER1clhySWNGM0N4?=
 =?utf-8?B?WkZKSDJKM2ZUZlZPYUdlVzFOM0VhNE1RaWs1UEJpNEZpYkg5QXRkd1AyVEhZ?=
 =?utf-8?B?ZnhyUXBjSmZrTzIyT1pXTkNmVFhoQUh6Q3NoTVNXUmJCWUFxR013bEpCTC9n?=
 =?utf-8?B?a01vc1RBQzhWV3Z1NEVERk82UnVTNklUdkw5dThpNDdwOFlid0lhVGhCZnps?=
 =?utf-8?Q?7IRAu4?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Nkd6V0VyUkRmbHR1dVVQY2hSWnBVN3A0V1QxYzZ3dWkxUThLc3RhVEE4RGUz?=
 =?utf-8?B?L0FJR2RSVkM4TkVIQm5vUE1TOGVxQ2lIQmE5Y1IvekhPOXRCeGFTek1sVTdz?=
 =?utf-8?B?Vi9qM3o0N3RpVkhSNldmWG9VZ01ZQW9nKzU3YzZEZm53ZlNuWDZpK01Ic0w5?=
 =?utf-8?B?SWx0RTJoWng0YVlxaGJJL2hudGkvWGdBSzRWWjg3UEh1Q3hZQm9aTkNYaEZx?=
 =?utf-8?B?eGQ3MTFnTGh5QVR6RDM1V09STmhDbmlIaEZ3WEo4cjBJYXlLckdpdFNQVFlG?=
 =?utf-8?B?c21qcW5WU09kTDl3djVrTGVBUUs5MHMyekN5eFdwWHZtZjBsUE56Um1jbWxs?=
 =?utf-8?B?Ni9memw3cXFUb3R1RmVhMXN5dW85RitXQkIydU90M0VESlpTd0JlaVZiWFYr?=
 =?utf-8?B?Z210Z3ZJS1JIQnRCUFhubXBqMDRreE5Gb0VMTXdBaHBCTnZTVEh0VnJ2d0hE?=
 =?utf-8?B?bjRHZHNLaktLa1VaOXlzZC94VmNNNSt1dDNJUldCb3NHZUxvSlMzNUNYTnlp?=
 =?utf-8?B?TDh5alNZN1h6UzN1NW5OZktheTg0MmRVWXRCL1BhdzlHRmpiZy9IeUk1Q3J5?=
 =?utf-8?B?SE1zVjNPZHJMdVgxU1plcDNSRmhyTHJsRElyVkM1RzBxR1FJbGVLVVFoRitm?=
 =?utf-8?B?OXVyT1VBcmQrcUNmUG1meDhTbXNuc3c0MkdwZGJrQjNheTB2VDNZQ3lUaHBH?=
 =?utf-8?B?TWpzdHNnOHRZQVB2RHQrSE5tUU44SUZwQ3dmVjU4YVJKdnVMdHdTb1RrcHY0?=
 =?utf-8?B?eG50ZzRoWFBvYjV0bTIrb1dBdUpnakNsVEVhcTFzYUk5RXA2NDl2WmVWTkdy?=
 =?utf-8?B?eE5wSVBhbnN0cmpMN0thaHpOL3JmVkt6bkdNRmZhMlZGaVdoQk9mU1hDczlz?=
 =?utf-8?B?YlhyTlF5TS9oMmM2d3pIK3RFSjY2OWR4U01jVHdMWTFhcWxuYnY4dXJlR2tP?=
 =?utf-8?B?RGFjazlSTmRoQzFOb0V6Ujl0TVpxTUIvSVFkWko5VVR5UDRva3RvMnhUelI3?=
 =?utf-8?B?b2FuZmpRRG1aODVQbEFPTUVRNGwweVVnYmc2V2hLSFl6WnJWdkdCSDczcVBk?=
 =?utf-8?B?YVFWWlNvQ0pBNUF0YWlOdkZDUlI2RHlGQjRnRmRzNVB1cDUyVldMck9lbStl?=
 =?utf-8?B?VEVSdFdNT2FnM3hhbEF4YlJSQVQ1anhUYjBWWUtLMnRidENrUjVpWVhNTXBO?=
 =?utf-8?B?SjY4bmFteHNMdlludjlZTnRndUN5RlpqOGkrdHNLL1ZnbHEycnFLNVFxWEh5?=
 =?utf-8?B?QkdlWEhyOEJkb1hjK0o1UUtZMTYwNFBhSWJaNVRGSTllSDAxTDRidjhwVkli?=
 =?utf-8?B?RmRVc0VrNGJQODREMEZLSjEwZlRFYnMrSGc0NzgvTDcwWUlMUVhOdGsrQjBQ?=
 =?utf-8?B?aUplNlBNV3QraU93d0VyTXRVb3JONXIxajBES1ZsU0ppMHV3eHZQQ1lrTXZo?=
 =?utf-8?B?dC9IMlRkNVFhS0c0SGk5WGlXcjFoZ0VDeGxpWmZIQUFxNmIvZ0gxNFNidWsv?=
 =?utf-8?B?UEE1bDdabkJlUUJQZlU1ZG5Ia2ZZRmc1YldVYVFvMDc2YjFBbXI1c0VQUlNq?=
 =?utf-8?B?akYyYjZVZ2VIenZtVDRtZnJiU0JSTlJSZmhNbVZWYmQwNW5LSHJXZjZ6SWpR?=
 =?utf-8?B?bUVua2RZZkRodWNqYStkaXBCczJLV1Bqck1sR3RBYW1lYW9LY1lGZkNWMHVO?=
 =?utf-8?B?U0xiVjZMZ0R0U2ZlS2tWRmx2cHVGWXVva1cyY296c2dNajlFbUVXLzRZS1FB?=
 =?utf-8?B?STFzczNaMi92bEVsYlpzNFVYSHFQb1YvMy9VOE15ZTd3eXRPUDJ2azBqZFpV?=
 =?utf-8?B?OVFZYzRYWUFIQTNIb3l6dUpQK0RwQVZaUFhDZ3E5akRJV044ZnFVMCtQdjJP?=
 =?utf-8?B?eUxhTVpXYnJNcXd2dWVBQzhmQlVNWSs3TXg3K1UxSVY1a3dkUnJjOHZSMTBa?=
 =?utf-8?B?dDhqTjhycnlKRDdtQUxYVlRRZHVIOFROSUxyWUZkbExSeHpnd25oWHdmaFI5?=
 =?utf-8?B?YmptWUE2VW5ZUEYvbHlxb1A3QnpOMWwvelRnNmV5VmRRRjhoSWNld3NzempO?=
 =?utf-8?B?cFI2aVB2R2NEUHkxa2lmdjNEVEVVSmpEa01YbDJsdENFV08xUitFdHZUeHV1?=
 =?utf-8?B?QkhoTWRyVEQzaHlIUUtJQ2lhYm9DUDEyTG5ZaVpzNDlFU2d3VEhKWkhEWkM4?=
 =?utf-8?Q?DlKCGmHTv6cdmkz2w2sEO7E=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A46D0C34B04B2A459E6F877DAA9CD9E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a2d899ab-ef7a-461f-7659-08de00d5291d
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Oct 2025 10:27:45.0750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: saIXBj2MI4b3LBoYT1r9xYIH/PCTprppa4uzQ+k0GEYeyuAODo4M8RrWRSqh5yxEnOtQAx4IVX/JFJD3F0Olr7NcbPpuKCZDHefEDn+FaY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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

T24gRnJpLCAyMDI1LTA5LTE5IGF0IDIxOjA4ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVGhlIGxpbmUgdGltZSB1c2VkIGZvciB0aGUgd2F0ZXJtYXJrIGNhbGN1bGF0aW9ucyBp
cyBzdXBwb3NlZCB0bw0KPiBiYXNlZCBvbiB0aGUgcGxhbmUncyBhZGp1c3RlZCBwaXhlbCByYXRl
LCBub3QgdGhlIHBpcGUncyBhZGp1c3RlZA0KPiBwaXhlbCByYXRlLiBUaGUgY3VycmVudCBjb2Rl
IHdpbGwgZ2l2ZSBpbmNvcnJlY3QgYW5zd2VycyBpZiBwbGFuZQ0KPiBkb3duc2NhbGluZyBpcyB1
c2VkLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMgfCA5ICsrKystLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRleCBkNzRjYmI0M2FlNmYuLmJkZDAw
NWM2Y2MyZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0
ZXJtYXJrLmMNCj4gQEAgLTE2MzcsMTggKzE2MzcsMTYgQEAgc2tsX3dtX21ldGhvZDIodTMyIHBp
eGVsX3JhdGUsIHUzMiBwaXBlX2h0b3RhbCwgdTMyIGxhdGVuY3ksDQo+IMKgfQ0KPiDCoA0KPiDC
oHN0YXRpYyB1aW50X2ZpeGVkXzE2XzE2X3QNCj4gLWludGVsX2dldF9saW5ldGltZV91cyhjb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gK2ludGVsX2dldF9saW5l
dGltZV91cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJ
wqDCoMKgwqDCoCBpbnQgcGl4ZWxfcmF0ZSkNCj4gwqB7DQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShjcnRjX3N0YXRlKTsNCj4gLQl1MzIgcGl4
ZWxfcmF0ZTsNCj4gwqAJdTMyIGNydGNfaHRvdGFsOw0KPiDCoAl1aW50X2ZpeGVkXzE2XzE2X3Qg
bGluZXRpbWVfdXM7DQo+IMKgDQo+IMKgCWlmICghY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiDC
oAkJcmV0dXJuIHUzMl90b19maXhlZDE2KDApOw0KPiDCoA0KPiAtCXBpeGVsX3JhdGUgPSBjcnRj
X3N0YXRlLT5waXhlbF9yYXRlOw0KPiAtDQo+IMKgCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5k
cm0sIHBpeGVsX3JhdGUgPT0gMCkpDQo+IMKgCQlyZXR1cm4gdTMyX3RvX2ZpeGVkMTYoMCk7DQo+
IMKgDQo+IEBAIC0xNzQzLDcgKzE3NDEsOCBAQCBza2xfY29tcHV0ZV93bV9wYXJhbXMoY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgCXdwLT55X3RpbGVfbWlu
aW11bSA9IG11bF91MzJfZml4ZWQxNih3cC0+eV9taW5fc2NhbmxpbmVzLA0KPiDCoAkJCQkJwqDC
oMKgwqAgd3AtPnBsYW5lX2Jsb2Nrc19wZXJfbGluZSk7DQo+IMKgDQo+IC0Jd3AtPmxpbmV0aW1l
X3VzID0gZml4ZWQxNl90b191MzJfcm91bmRfdXAoaW50ZWxfZ2V0X2xpbmV0aW1lX3VzKGNydGNf
c3RhdGUpKTsNCj4gKwl3cC0+bGluZXRpbWVfdXMgPSBmaXhlZDE2X3RvX3UzMl9yb3VuZF91cChp
bnRlbF9nZXRfbGluZXRpbWVfdXMoY3J0Y19zdGF0ZSwNCj4gKwkJCQkJCQkJCXBsYW5lX3BpeGVs
X3JhdGUpKTsNCg0KSGkgVmlsbGUsDQoNCkFzIHBlciB0aGUgYnNwZWMgNDkzMjUgdGhlIHN0YXJ0
aW5nIHBvaW50IGlzLA0KDQpBZGp1c3RlZCBwaXBlIHBpeGVsIHJhdGUgPSBwaXhlbCByYXRlIGZv
ciB0aGUgc2NyZWVuIHJlc29sdXRpb24NCmlmIChwaXBlIHNjYWxlIGVuYWJsZWQpDQoJYWRqdXN0
ZWQgcGlwZSBwaXhlbCByYXRlID0gYWRqdXN0ZWQgcGlwZSBwaXhlbCByYXRlICogcGlwZSBkb3du
IHNjYWxlIGFtb3VuDQoNCmFkanVzdGVkIHBsYW5lIHBpeGVsIHJhdGUgPSBhZGp1c3RlZCBwaXBl
IHBpeGVsIHJhdGUNCmlmIChwbGFuZSBzY2FsZSBlbmFibGVkKQ0KCWFkanVzdGVkIHBsYW5lIHBp
eGVsIHJhdGUgPSBhZGp1c3RlZCBwbGFuZSBwaXhlbCByYXRlICogcGxhbmUgZG93biBzY2FsZSAN
Cg0KYW5kDQpsaW5lIHRpbWUgbWljcm9zZWNvbmRzID0gcGlwZSBob3Jpem9udGFsIHRvdGFsIHBp
eGVscy9hZGp1c3RlZCBwbGFuZSBwaXhlbCByYXRlIE1Ieg0KDQpPdXIgTWV0aG9kMSwgTWV0aG9k
MiBhbmQgbGluZSB0aW1lIGNhbGN1bGF0aW9ucyBhcmUgYmFzZWQgb24gcGxhbmVfcGl4ZWxfcmF0
ZSB2cy4gYWRqdXN0ZWQgcGxhbmUNCnBpeGVsIHJhdGUgaW4gYnNwZWMuIFNvIEkgd29uZGVyIGlm
IHdlIGRpZmZlciBmcm9tIHRoZSBic3BlYyBpbiB0aGVzZSB3bSBjYWxjdWxhdGlvbnM/DQoNCkJS
DQpWaW5vZA0KCQ0KDQoNCj4gwqANCj4gwqAJcmV0dXJuIDA7DQo+IMKgfQ0KDQo=
