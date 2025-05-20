Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC377ABE163
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 18:58:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED3A10E5B8;
	Tue, 20 May 2025 16:58:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hZhiPFMe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 619E110E59C;
 Tue, 20 May 2025 16:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747760285; x=1779296285;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UfU5JadpgNXVaE1C1RDsu405Iy05uOuS3364LuKsG8k=;
 b=hZhiPFMe6XR4GBjWf3O5M8KB4Oampt695JEaJW3oYhU+i/zE5tvSqsJK
 6ZxgWCltiZkLpomvJBT4yVBCH7DhRt0Xdj9aTTj6M5clcB66jcSoZYDWp
 GbwSz1nPnJ5qrg9twndN/+/GAi1f4nvWV+w4uB5IOG2X5jAlaM1+w9IdR
 SBlNHPkps9h9W0SMNkzm1aJWSmXwWsO4Cnb5C2tE9TpTFe556zJZnT5si
 a4s7puXSK1H2dp8gYhQ4RyyG95a7SYZSDSwEyxp8M/h9GJpK1MWEhe87A
 GBZZtGSGFWr8ISXtZVk/2wIFJMcV8IajoW4wMSCfaqeuyqr0415NwPqqz g==;
X-CSE-ConnectionGUID: mF1oMDulRIORv/IT/zpvSg==
X-CSE-MsgGUID: r2q8ycykRJmTUuw5w86zXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="72222185"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="72222185"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:58:02 -0700
X-CSE-ConnectionGUID: ytg/d1COQdWo1+iaCQYH4Q==
X-CSE-MsgGUID: GKAFdQyfSUyUaKD2b6Wgpg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144883802"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 09:58:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 09:58:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 09:58:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 09:58:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bm5/MdxJj4TSnGmlE5g2IxGq8EMfPPakFlHwfeDIeIymaSCt0dNvCY9tPlYN7k/zBdnKAaaK9c0sasShasUrazO9/v+QuaEHUFcSZJi1yNx6J3W2/DkX8Pt/IuzWXbAFuxRMbQHdue4hk/IgVNIIeS1Ez1ZAXyefgrfNdx2NiUWWrQLV4WLW6wcMNZjleirasYDkW+OkWvNRk0yuIB5tNzbUfFzqTx23QLzQo+4nlyXgQnN+t5u13ufnuqhPalzSWy2EWy75iUjqSFaQ9Uq7TxrxiK5RAU9GJfk4xnDYF62Mg3LCMaSo63ZsOat18BBzuLJYzAIdv+liVZ7nJg1EkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UfU5JadpgNXVaE1C1RDsu405Iy05uOuS3364LuKsG8k=;
 b=CEy61Pr+GnzS1sXcpg/MiVe6yWWxYP+eFhF6W6z2XPp76JixjLbnJkSCrxOy2kY1fmOpleA8a7SUA4cO+MNtV3dUQdFcwJdOZQjk+zSjYcM86OXXlQ0EAX9+5wUJU5RdxFB6kmLxPyr0VWFBV9kBmaT5M/omD6Z3kucYV7cgdFBZ1SgRV6V+PbU8dJKlecr6JRs4a+Nc7CIfEqTboh5NYuvwSCzXL8Tb6FCuxX8LwwNAJgEOilWfrHBnrhSFONvWr2HuB2JBR9sAnj9DJAZfhbzarS+tW/P5ONOLd5G3z5TJHDKJQrxLwbz62c30ZlZNFSYnzPluMN+gj4qILVi7vQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.30; Tue, 20 May 2025 16:57:32 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8722.027; Tue, 20 May 2025
 16:57:32 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 06/11] drm/i915/alpm: Add new interface to check if
 AUXLess ALPM is used
Thread-Topic: [PATCH 06/11] drm/i915/alpm: Add new interface to check if
 AUXLess ALPM is used
Thread-Index: AQHbu0CIoAlyAWXEZk6xVbku9auUiLPbUxaAgACG9AA=
Date: Tue, 20 May 2025 16:57:32 +0000
Message-ID: <6f5f321d40ff36cd404349f74b97f388804877d5.camel@intel.com>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-7-jouni.hogander@intel.com>
 <66e576a4-9500-4faa-a7a5-d716e0c9e670@intel.com>
In-Reply-To: <66e576a4-9500-4faa-a7a5-d716e0c9e670@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7828:EE_
x-ms-office365-filtering-correlation-id: 7f4fa280-44be-49e8-e72b-08dd97bf697e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?ZVlmQ0JLNDVRV24xQS9KOEZtZjVzb2d5UCtRc0RPTGJZSGFsWEtrKzBMZGlt?=
 =?utf-8?B?aUtQUFA3elBUN3oranFLRUhQUjJaWDhiMUNraG9vai8yeWFkOUdUdUx4aldQ?=
 =?utf-8?B?Z0szdDFZVUJFT0Q3TnF6ZmdnZGlGT2VBdVU2dnJhVUFuYTFSdERDb29UVWF3?=
 =?utf-8?B?TWVHNVRTdWdWbTQ1dmJtNk5jWmhiTmxCblVvNGlEZFhNb0JJUDhGd2llR3lL?=
 =?utf-8?B?UE91cWFkN2dvOU9sdDNkREdQSmEvbjlLUnMzQVhOSmRqV1AzY1lxQWVUalZB?=
 =?utf-8?B?dml2alNZMFhwdmZURDI4OGIyNExGSVp0OHRoQThuUnN0cGhqaVNsY3Y5NGN5?=
 =?utf-8?B?bGtyRXlpT2pUTUt3UmtVY2RBdVRUQkdpbkpDMm0wTzFpUnQ3WDVhUDRpSXQy?=
 =?utf-8?B?RFRmK09qNTd5dk1WeGJJeE13TXE0Z3BRbHl1ZXdnMWFxSzhPdDVCUVZlM2Q5?=
 =?utf-8?B?cndVb0lmK3hoMm10M1JVUE5zWkdwN1NMVmNSYjV0Z0JEQU5iMUZHOWl5ZFZV?=
 =?utf-8?B?R1N2Nmg1RGluN01vNkJ4YUt4eW03cnRENnRBVGNUNzFjb3BVbHNjS2w3UGZO?=
 =?utf-8?B?M3FSaFVmWURXUlBUT3NqWW5UVWc0Z1RNU1ZEcTNOdUFyTjk5cUE3T1d6Ylht?=
 =?utf-8?B?aCtPbEo4aVMwZ2hRMEFMNmJ1NHp6T0NaV2d6TXBJRmhxbkpjVWVabnpiMm1M?=
 =?utf-8?B?N1VGVUVpRG5xRDJZVXNxK0thVWlBWERkdzNRZDJ1anNQcFd6UnlPeEdrWVlF?=
 =?utf-8?B?ejNTb1FpQkxkRVpORW4vL3F3R0YvLzNPZWEwQzRFUlU4dUkyYkorWFQwdDEr?=
 =?utf-8?B?Rnp5SXh3VG1LU1hpcXM4ZGJPZHdMZzEvbXRSUStybXhxaGc2cXE5S2kwdC9P?=
 =?utf-8?B?Yk92RWpHQ0dRblM2eERCUzNTd0s5TEp3Rlo5MWdtemtSSjBTbGRNMW0yOFc4?=
 =?utf-8?B?VS8yU3ltdWtJbmVpY0JtS2xueEV1azJBRzNQUkI4akhIYmVVelJIZkF2RUIv?=
 =?utf-8?B?Z2lBdFRvdnB0V1hTL0gzbDh3ZitwMnE4ZktkOU5ZMWc0ZVVtS3AwOTVRSUZS?=
 =?utf-8?B?dWlZMTcyV2Nxb3lJWDF1MENkdmh0YjFnb0VKMm1oZ1pJQUhkV1BCdW1LdjR2?=
 =?utf-8?B?R1dxUDVISEp3bnZ4QW9yeG9vaFU0aG5uNytsYmNhT2srSWhVelFuU2NmeDN0?=
 =?utf-8?B?UTdibHJodGp3VS9hZ3d2WDNOVUFrUFNSOWJGSVVVRHMrNFpUQitVanpEQk0v?=
 =?utf-8?B?THYyZ0ltR2NQbGJDNUpCZW5VNldIdytUcmFHRFdhV1dQZDRVMVBham54ZGJz?=
 =?utf-8?B?WnRtdUhjNlNIbU5EMHN3OVZsd0dOZ3Q2STIvMTRKT2ZOUHp5Z3NTdXlSUXA4?=
 =?utf-8?B?c0RaRm5zYWZGc2NReTZVQ2xnUVhRcTlNVnFKdW83c2xOeVh2T1lici9mN2Jq?=
 =?utf-8?B?bWtlYUhIdEsvNFRmeVNoaEpaWGw0by9xbS8wMjk5eURtMEI0TlVVL0J0UWVF?=
 =?utf-8?B?N3dSeDVBVHlBaXdGWkplM3h4dDMyaXdMTlZNOTFKeFdUYTFXYUFYNkY2SFNL?=
 =?utf-8?B?S3JJOXdxZ2U2eWlVeFZBRHlmWWYyU1d4UlkvZUFmM3IzR0dNSTM0N3A1eVYy?=
 =?utf-8?B?SGJOdTYrMXBhNmRkbldQU3pPMFVtYlhZclllVnF4MkQ1blBSdkRmQzBGMEw2?=
 =?utf-8?B?UHoxcHdIT1lPeHBIb2dJeWxDVHdTTGk1Z25yN2N1ZkpLY1M0VHB0UnJYYS8z?=
 =?utf-8?B?bmhlc1pMMm1aK0Z6RFVGMzVjbkJSenVkV09PM0tvU3ZRMFBHSlVSR252dkZy?=
 =?utf-8?B?bmF0anFubXZZOWNBSnpWRk1lUjNqTmFaN0ZPZnIvZkZGYldGQjlVUEZpY25t?=
 =?utf-8?B?bjU2eGRzeUNNMGlBOU9SZlFJVXpYcnJMT05Jdmw1cjhJSURQNzNrY2o4ZVVy?=
 =?utf-8?B?UjJaSklHK3BkdGV3MmFDQjVQSklRWUZFUWVTWWxqTFJzTTB1bjhXVW1qTzlP?=
 =?utf-8?Q?KWQaRHQakpOxc9pW5Ln1gtqkayanks=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YXdsdWl5bEZzaWtOWnNJMTByTDVHYnNMbjVQd25Mb0pLUkRHbVJIL2txVU9W?=
 =?utf-8?B?eDJ2R3l2a3RiQTdVVVlSVkNtTE1RV2xXZFppL3BqMGJ3bkRzWWdEYlBDTlBV?=
 =?utf-8?B?aWdGUE9QaWo5ZmtUbGRQcUdvWGhUNlFObTVxMi9vV0RYa0FmZXRtU1l3ZFhM?=
 =?utf-8?B?REZRRXpCdWIzRkkrRk80NkZKOXJ2eDlBV1B1RTNPc0lxQW04MkV2N0F4WWJI?=
 =?utf-8?B?b2gremNJMnVoaFV6UGx4T0hZVkw1SUcvcy9ZWkozbDlXRW82QzZQTzhKRmpR?=
 =?utf-8?B?bWZRdlZLUURBVzBIYU0vOFdLTXo1WDkrSU5VdUNvQ1ROSnBiLysyZzVocXls?=
 =?utf-8?B?MEMvSUlSS015a3JlZkpxcVBPSDRFRG00TWl3NU5CU3ZTK3ZZTnJhM0VqbWpN?=
 =?utf-8?B?YzlOTHBjWVJQeVNyOWhTbUFtUTlZSzQ0Z2RKUzBEVWs4elJZSDFRNUNxUThS?=
 =?utf-8?B?L3BKdWxKVkVDRHJITG5LMFd5K2RPaWJtYkt2RVR4Z2dzWExwbi8zS2dSQm9C?=
 =?utf-8?B?NDNTOWJrdDlYTjRoMUFDcTFIWk5ESk1GK1VXdTBXdDdSSlVWOXZDQnR3dDlI?=
 =?utf-8?B?dmNiMjY0U3N3Tzk1eXpOYjYvMWVKVDRnMTZveUh0Umc0VWl4dVFScFZzMGxn?=
 =?utf-8?B?cWF2NnRmNk5IZjBuUVdIMUtkdkFlM05Fekt1amh4NFhsVjQycjJ1MWoyaE5N?=
 =?utf-8?B?SFpMZm92Y0pUM2M1Q0E3bDRBNjBQWWVZY095WjBYcCttZk0rMW54WEphaUxG?=
 =?utf-8?B?K2N2R3RzVUhsZmFTRFVVNjR4RG5MZ0txRWtlYlpOeDhKRjFMaEJheVhmVTJH?=
 =?utf-8?B?SlE5bjRwWFE0b1AvVVpyb3Jua1J0N0tXZVg1U1VmL215emZFYjEvUUZpSit2?=
 =?utf-8?B?V2tVczJCOSt2OThrYVhCWTFYeE4wOGs3NUxPMDNPOVdaVGNWNzZvbjZIbFBz?=
 =?utf-8?B?Z0FIZjRiVzZLYVQvc3VJck1nNk51cXdjRFlPNDBVVHUvQzlDTVRrbEJBeEk5?=
 =?utf-8?B?ejErQWNxa2t6Rzl5a1NwOVZPM212SnkzNmdXZlJSTEk5djlxOHZNT3I3ZkZR?=
 =?utf-8?B?cFlDV0NrOURNMzVIYjRZbjdUeFN2dmVsMVJyOURXN0RBcDVScHVRbHZYMllN?=
 =?utf-8?B?NndVdTQvaFFaVk1XV2hBOXNsOEJxYTk4RHpjTmR2ZVhRbmxFUG1ZOWZVenVh?=
 =?utf-8?B?ckw3blVtYW1ZckRHVHZlcGxNcTRnQUhwK0JVZHlHY3FzZk1jcFlTS3A2cXRt?=
 =?utf-8?B?SjIzWXlmRVpmdVhrUmpSRkZDNE04bWlpWDlYZVhFZzEzQXFKZWVMWjV6Tnlo?=
 =?utf-8?B?bXFhVVNUa3l3KytYSnA5VGI3K3k1dVBaY1NJN3Z3S1hyclJ2UHFvcjQrOXpz?=
 =?utf-8?B?YWpaUFdpUndHcjdleXFxaGp0bXJOMW43Ny9iSEdLc2dVSkxLM1FIOEczN2Uy?=
 =?utf-8?B?bFJuVWpkNHlCSHk5eFVnZ2h6bVNpc3VqN1FvK09MMnJmdkp0WEw5aTVZZE85?=
 =?utf-8?B?b3l6VkJRMkptRTM1ODQ0dkZvT3NNRkw1UWVyWUlIMnQ2MkNNeVpTRHFVNnQ5?=
 =?utf-8?B?NFlJYkZWVGhOYXJBQ1kvS2RWNUxwUG51R0JFVFFLNkYrZGQ5MzArQ00yWXdY?=
 =?utf-8?B?RWpUT3RiSW0rbUNxb2Zkb2RBa3FlZWUwcFFBYkNhRzZDSE5hTUJrK0djSEVB?=
 =?utf-8?B?RnpOemdiMmxtVGYvMDBZT0xrSXJkdEI4WkR6WTZnQ0VmS2ovTmorYkkzbWJX?=
 =?utf-8?B?TEZqRXRFWmFCVzFRMGcvbThLdmJvWjVobTRrREFOeituZmhoOXhVVGdKR0NL?=
 =?utf-8?B?NFpkSHFTYzc1eW5KeDg0a1JkTDRDL1Z5Zmk2djN0OXRGY1VuQnFaQk5Cd2ox?=
 =?utf-8?B?RlZnSEhVZ2owT01naHd2d0w5Vkg4bkxxWmw0VEF0WXlLNmIxUUtqbm9GVDRB?=
 =?utf-8?B?WVI4Uk9FSkw3cHVJSnJjRkRPVFQ2UURxVHk4RkhQUjA5NUR1Zmg4R2JzNC9x?=
 =?utf-8?B?a3c0QkQzV0xUTVlvekg1VFgvTUtsUkVMdU9hbzZPdkdOZDVKbjM4TndlN0lY?=
 =?utf-8?B?MWIyYTQ4OHp6Wk4vRHM3dVRzeGIweE10cDRwYWk1UTJPQUtuVHVZSHcyWEM0?=
 =?utf-8?B?Z1BvOC9lMTVlUHI0SW9tdXczOFZ0TDVaN3ZQbkdGZUU0STQrU2xuc3VnR0pZ?=
 =?utf-8?B?Si9SS3lyWjdwTktlSE4yWWtEaVZsR1BiVjFMMlVhM1g2eVMxc2NqMzdoMHVs?=
 =?utf-8?B?bWlhYk5ZT1NHMUFVRS8rMHR0d3lRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F2D74E7C7EF7D44BB071B1CB66D3577F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f4fa280-44be-49e8-e72b-08dd97bf697e
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2025 16:57:32.0337 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IRUx4z7HOmQ4IR2Oq3TunKRIQGOUFouTaA4idLhPrU/bjUlxrdMKUxfATcTz2PZqZMrRkZiyPf59vt1WFW24qv+bQ3uYd0QP+LZggN6+gbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7828
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

T24gVHVlLCAyMDI1LTA1LTIwIGF0IDE0OjI0ICswNTMwLCBOYXV0aXlhbCwgQW5raXQgSyB3cm90
ZToNCj4gDQo+IE9uIDUvMi8yMDI1IDI6MjggUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZToNCj4g
PiB3ZSBuZWVkIHRvIGtub3cgaWYgQVVYTGVzcyBBTFBNIGlzIHVzZWQgd2hlbiBwcmVwYXJpbmcg
Zm9yIGxpbmsNCj4gPiB0cmFpbmluZy4gQWRkIG5ldyBpbnRlcmZhY2UgZm9yIHRoaXMgYW5kIHVz
ZSBpdCBpbiBleGlzdGluZyBjb2RlDQo+ID4gd2hlcmUNCj4gPiBwb3NzaWJsZS4NCj4gPiANCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiAtLS0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Fs
cG0uYyB8IDE4ICsrKysrKysrKysrKysrKystLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5oIHzCoCAyICsrDQo+ID4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAx
OCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiBpbmRleCA1ZTViYzkxY2E3Yjc2
Li40YThkNGIzNGZhODllIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9hbHBtLmMNCj4gPiBAQCAtMjYsNiArMjYsMjEgQEAgYm9vbCBpbnRlbF9hbHBtX2F1
eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4g
PiDCoMKgCXJldHVybiBpbnRlbF9kcC0+YWxwbV9kcGNkICYgRFBfQUxQTV9BVVhfTEVTU19DQVA7
DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+ICsvKioNCj4gPiArICogaW50ZWxfYWxwbV9pc19hbHBt
X2F1eF9sZXNzIC0gQ2hlY2sgaWYgQVVYTGVzcyBBTFBNIGlzIHVzZWQNCj4gPiArICogQGludGVs
X2RwOiBJbnRlbCBEUA0KPiA+ICsgKiBAY3J0Y19zdGF0ZTogQ1JUQyBzdGF0dXMNCj4gDQo+IGNy
dGMgc3RhdGUNCj4gDQo+IA0KPiA+ICsgKg0KPiA+ICsgKiBDaGVjayBpZiBBVVhMZXNzIEFMUE0g
aXMgdXNlZCBieSBMT0JGIChMaW5rIE9mZiBCZXR3ZWVuIEZyYW1lcykNCj4gPiBvciBieSBQU1IN
Cj4gPiArICogKFBhbmVsIFNlbGYgUmVmcmVzaCkNCj4gDQo+IFNpbWlsYXIgdG8gY29tbWVudCBp
biBwcmV2aW91cyBwYXRjaCBsZXRzIHVzZSBgUmV0dXJuOmAgaW4gbGluZSB3aXRoIA0KPiBrZXJu
ZWwgZG9jLg0KDQpEZWNpZGVkIHRvIGxlZnQgb3V0IHRoZXNlIGtlcm5lbCBkb2MgY29tbWVudHMg
Y29tcGxldGVseSBvbiB0aGlzIHBhdGNoDQphcyB3ZWxsLiBUaGFuayB5b3UgZm9yIHlvdSByZXZp
ZXcuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUGF0Y2ggTEdUTS4NCj4gDQo+
IFJldmlld2VkLWJ5OiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+
DQo+IA0KPiA+ICsgKi8NCj4gPiArYm9vbCBpbnRlbF9hbHBtX2lzX2FscG1fYXV4X2xlc3Moc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiArCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ICt7DQo+ID4gKwlyZXR1cm4gaW50ZWxfcHNy
X25lZWRzX2FscG1fYXV4X2xlc3MoaW50ZWxfZHAsIGNydGNfc3RhdGUpDQo+ID4gfHwNCj4gPiAr
CQkoY3J0Y19zdGF0ZS0+aGFzX2xvYmYgJiYNCj4gPiBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vf
c3VwcG9ydGVkKGludGVsX2RwKSk7DQo+ID4gK30NCj4gPiArDQo+ID4gwqAgdm9pZCBpbnRlbF9h
bHBtX2luaXQoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoCB7DQo+ID4gwqDCoAl1
OCBkcGNkOw0KPiA+IEBAIC0zNDEsOCArMzU2LDcgQEAgc3RhdGljIHZvaWQgbG5sX2FscG1fY29u
ZmlndXJlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiDCoMKgCSAqIFBhbmVs
IFJlcGxheSBvbiBlRFAgaXMgYWx3YXlzIHVzaW5nIEFMUE0gYXV4IGxlc3MuIEkuZS4NCj4gPiBu
byBuZWVkIHRvDQo+ID4gwqDCoAkgKiBjaGVjayBwYW5lbCBzdXBwb3J0IGF0IHRoaXMgcG9pbnQu
DQo+ID4gwqDCoAkgKi8NCj4gPiAtCWlmICgoY3J0Y19zdGF0ZS0+aGFzX3BhbmVsX3JlcGxheSAm
Jg0KPiA+IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHx8DQo+ID4gLQnCoMKgwqAgKGNydGNf
c3RhdGUtPmhhc19sb2JmICYmDQo+ID4gaW50ZWxfYWxwbV9hdXhfbGVzc193YWtlX3N1cHBvcnRl
ZChpbnRlbF9kcCkpKSB7DQo+ID4gKwlpZiAoaW50ZWxfYWxwbV9pc19hbHBtX2F1eF9sZXNzKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKSkgew0KPiA+IMKgwqAJCWFscG1fY3RsID0gQUxQTV9DVExfQUxQ
TV9FTkFCTEUgfA0KPiA+IMKgwqAJCQlBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSB8DQo+
ID4gwqDCoAkJCUFMUE1fQ1RMX0FVWF9MRVNTX1NMRUVQX0hPTERfVElNRV81MF9TWU1CTw0KPiA+
IExTIHwNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5o
DQo+ID4gaW5kZXggZDcxMjZkNjViNjBmYi4uODNiYmUwYjdmZjEwMCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gQEAgLTMwLDYgKzMw
LDggQEAgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfZGVidWdm
c19hZGQoc3RydWN0IGludGVsX2Nvbm5lY3Rvcg0KPiA+ICpjb25uZWN0b3IpOw0KPiA+IMKgIGJv
b2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCk7DQo+ID4gwqAgYm9vbCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vfc3VwcG9ydGVkKHN0cnVj
dCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCk7DQo+ID4gK2Jvb2wgaW50ZWxfYWxwbV9pc19hbHBt
X2F1eF9sZXNzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gKwkJCQkgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqY3J0Y19zdGF0ZSk7DQo+ID4gwqAgdm9pZCBpbnRl
bF9hbHBtX2Rpc2FibGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7DQo+ID4gwqAgYm9vbCBp
bnRlbF9hbHBtX2dldF9lcnJvcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoCAj
ZW5kaWYNCg0K
