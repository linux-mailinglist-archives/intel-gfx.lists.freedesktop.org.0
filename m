Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1934EC4B75E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF3E10E310;
	Tue, 11 Nov 2025 04:33:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TeYHiA3u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15D4710E1ED;
 Tue, 11 Nov 2025 04:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762835636; x=1794371636;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XQ799g6htxrEsjQMYIyU7GGfPU24/Dbp9uNNEVWTkrk=;
 b=TeYHiA3uojMWvCLAU4ERFUqU/c/Mc7BUrGEErkL71fwGq7bVtSPYva9V
 /wGggk2D+aDpX01y9x56hh6VXX73dnSHksAxPLc6eSnAFtIvhDO9cZVwp
 +6QnIuL6cwLEMq9ssFitwKWFtheEc8p7VN18MuYkU04oekS8+LH6oBrnP
 0/JNfll/0B9kY7BRLNYjM7of031jC9TJky+y7Gzb8r3zmkeFuNdewoWeH
 OxKtpgorzRy9zU6EYHaU8zaoWMOKjFiMGHMBa41m4wcf3tyTfY0+vpEaM
 5IH6LbvbOk32lW3WjItqaiqe2B001HKoCmHZ8Lq10QAABJnUfavBXvliT g==;
X-CSE-ConnectionGUID: PUgc5Q63QZGuunoHYNUBjw==
X-CSE-MsgGUID: BHBrHYajQVGV8jTMtro+yQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64099815"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="64099815"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:33:56 -0800
X-CSE-ConnectionGUID: mARxm5TzSpyBZEx2WiR1Cw==
X-CSE-MsgGUID: 6UPMhQWjS0Kp2FrPVvSIMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188699861"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:33:56 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:33:55 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:33:55 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.15) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:33:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HSuA55QanecWoInBNZjFlhM5i8SKoGQI8wZPtbB1eSctVeM8G1QR9mNeQMfXALr63R3U++OZ3lZ8xoDzQ7A//eIVj8T2w/mBYIHyhHQOdxnX3yfeoEYmO/3d/oc7KTT5ux/Wo3iryiG6sUotkW7shU6dyrA6Q8fEopavf5RZF6p5J1SxXKWUd9Skpteu40hK+GRyrK9zGsT8aHf9VXypkNVkYCuBxh9VV/BlDb9DpLcvIoKLjzt9KA2P1tk6Hn/PT5fGwPJFsafpSlvqKVtlWJ/OKxVTHusZ5Z0dGb3MyLKRPS/lBavKrpp1Yw0g6+Sr2nwLr5Tgz0GkQpMasKgHlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQ799g6htxrEsjQMYIyU7GGfPU24/Dbp9uNNEVWTkrk=;
 b=gYCY7JxrTaNpd901QwdOy2Ot/ImTydMfENQE44P5jTE71txX3I3ShsgeaMlNyB9ilLs6h8TikpefSbThgKk5H2KUwFBERqBnz5O3okDwbalWgE8OmeY4VQltSSEkziYbBfHATUBv5bigjAULj2r7KbjVakzH4VjNa6bmD0Hxg+FNqyJXCMMadd26NckI/biRtQeFVWidDBE4VW5cX9JAvn6I73se9EuseC+Il45lcOa6d3Ab4wRkUX4m1bPx0l4uoj44FVan+yTuJ+VSMaV0Mknp+KDsBtOYGG+SoGMDUoaVlILei2Kn0/fv3tYGKKTh/H7C+Q8FVBVpDxNAJsQvgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by SJ0PR11MB4831.namprd11.prod.outlook.com (2603:10b6:a03:2d2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:33:48 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:33:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/16] drm/i915/de: Nuke intel_de_wait_custom()
Thread-Topic: [PATCH 07/16] drm/i915/de: Nuke intel_de_wait_custom()
Thread-Index: AQHcUmivnQ/Lhi/9C0iBvSsUT2s5X7Ts48Mg
Date: Tue, 11 Nov 2025 04:33:48 +0000
Message-ID: <IA3PR11MB8937B0FC2154BE91B6960956E3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|SJ0PR11MB4831:EE_
x-ms-office365-filtering-correlation-id: e9b7ad22-16e7-4c23-a225-08de20db821e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?dmhldzl1NWF1YWUzbHhYdkR5dUNTcE5TSkhBQUhwMnRNQ2JuZ2N4cGxFUU44?=
 =?utf-8?B?bFNuRGczcmIrT1h4bU9xWlZtMzVDSWlQWGQyNGplbzZTSGE0d1B0dUt6Q01H?=
 =?utf-8?B?cXV5Nk9hTWVGNHJDSjJ0d3NPWlE4QSsyOVpaOEdLTVVrRGptYUZxQzd3TUx1?=
 =?utf-8?B?eWJkVTdMS1Y5NmFHM3NSRmc3cjFLbUJCWElzRUJ2YzE1dlNWdXpvQ2hLc2dJ?=
 =?utf-8?B?ODV6YkwvSXYzamlmdlZEaTcvUTJ3QXJWem1DNFZDMUdxbGlvRVN6RlhMejVt?=
 =?utf-8?B?VCtCTDNNa3QrWjd5TlE2OHliamZlR0pNc1I1V3BOV3VrVzhUOXVORzNqY2Jm?=
 =?utf-8?B?Mzd6M1ZxSTdOdnVsT1JhTlJKMG5xdHZnQzliMjhXSURwUUl2dFh1aUtLRjdJ?=
 =?utf-8?B?M3ZRdis4WmZCWEtyRTFiczgwQlV3S3hjSmFmclE5cStBdjlEY1J2WC81T2pX?=
 =?utf-8?B?blF4M3ROU2wvMmtTaDRRTU9NSzFyNytWdzRIMG9Fai94RWZiWDlXZ1h4VE92?=
 =?utf-8?B?OW9IcFBYUTVQS3Y1bWlQTU52L2JVaC9IWnhDRG43bXUwQkFDV2RkMXZsSnBp?=
 =?utf-8?B?blVyYkg5UTByYWc3MXNBS3Z3N2F2RkZKSVM5K3c4KzFhQTZ5T3MrN1NuN09T?=
 =?utf-8?B?WEZoWVR6RjMwbzJEaE5nd3U2NFRMaERTd0ZmeFB6em4xbU5RdkpQY2ZFc0N0?=
 =?utf-8?B?ajlQdEZuYzBJc3NMeUNVdzJucVNhMkg2UytzMS9SK29DSklDVVhiaFJqN3pm?=
 =?utf-8?B?UWJFTnBicWNwSWNqakRkaFB0SU5pLzNhdElnTndUSnorR3VZempRb3FxbXA0?=
 =?utf-8?B?cTYwVm9DU3pnQ2J2ckdlWEk1dkNlOGoxMmVrQVovdWxaS0hMRW16OWFWVEZ4?=
 =?utf-8?B?VlZuaUZKSGs1R3B3WGNDMmxZenhVRWhOZlF4U3JjaW9QZzlMK1l4MEdVUmZ1?=
 =?utf-8?B?Wi9ENTlMTDN2cHJsR1ZZVEVEUlV5a0IyMjJMcmp6L0VvV0JRTHB1YkVmZVZo?=
 =?utf-8?B?dUpDcVBjRmY5VTdtNkk2dm95bWdDZFpvUStRbHIxUUZHRVYrNXFtMTh6Z3hC?=
 =?utf-8?B?bWpQcjFVT1JBMTVoeU00SUhkWFFNajlaMkUySkFWa0Y3T3ZSdWpNK1JWYzcz?=
 =?utf-8?B?cUlpVUNqMisxSzZoWXVuMkFnRUg2cmtDWUM4NlplN2RUZUxLamRSQkFhcUc3?=
 =?utf-8?B?b1lVMWpndWNoL3EvTERpaE85YlhBcyttREtYZ1QydUhKakxEREFyNEx2b2Fn?=
 =?utf-8?B?Z21vdWE0aWhqNkdwSmNYMU1GM3FIQWZWaW9DVXhxVlBuLzg5a3RTVkdDU1FS?=
 =?utf-8?B?RjNsWlBha2JVYVFYNmc5TzdiQ2dZbXhReEtTOEFqR2xNTHN1amJQUUVScndz?=
 =?utf-8?B?TzBzZEhlQ2pQb1ZZSXhJT1dCL2lubXhaeGxQZCtyNWdZU3NQTW5GMW05NUNZ?=
 =?utf-8?B?RjVoaUU0NmZERlRFN0N1dE1ZdU1TZ09ZcmRqYlpiaTNWZFJxcnhTb1Z0V0Nu?=
 =?utf-8?B?QUZGanNQNzRaaVRkRzZZM1pUTjdsK2Y0aFgvVFRyTnZqT2JpZytwMTdNYzlE?=
 =?utf-8?B?bzBWQ1N6RU1ZSUovV3d3NS9wa1VuUWtIa2tGdUN5MVdOYitEMjhFcmtKN0lE?=
 =?utf-8?B?T3pybUt5Qzc2amxuSy9mTUEzY29nNnIrWWNiUlNZOU5JUnBPSzRBRnpPWHcv?=
 =?utf-8?B?bFJVTkk5WCtxeUtoS3VLc3hjaHoyM1JwcFRoMGJhUVMxc251QWdZcTNDWmlL?=
 =?utf-8?B?NmNucXExaGNYdnMwNjhSVTRCdktibWdMR2VFTDdnc25OWEIyZVNSQWJPb1E3?=
 =?utf-8?B?aDZLbFFLWUs2dlNNbFl4djRIMzJuVENoSkFoVWJTZjZEdXA5QlJxUDE1L012?=
 =?utf-8?B?dXpOQ2hlakI3cktiQTFlQ0FDUnFhaGhQZEhxbzNmSGhnUVFIMENOYVdaMkhP?=
 =?utf-8?B?OGY5NUdzZEFBZEZHbE9EcXg4ME1VYlh6M0ZoalZ3VXhIaXo5NGQwa2F4SXNu?=
 =?utf-8?B?ekY3d2k5ZXA3L3NpdjFmUW5HL2x4UEFRa25CUy9oSE1IMUlzVGZkOEF3dE1H?=
 =?utf-8?Q?hFiImc?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZmFyR2ZIZWlIWDdUVVN2ajAwVkNXcWdoSDR2VzkwdEp6YnpLRURaTEFGaFZj?=
 =?utf-8?B?KzFBdXNoK3c2QXJPUmwyVmdZQ3FTYXFyWWpYZHNRdzFBYW9XODR0TGdLRUcz?=
 =?utf-8?B?SnZmbTcyVVUxM1llaDA4QnR4aWpramNyTWprellWMk5SZUtwRmg4NXVCY3c3?=
 =?utf-8?B?d0pyeWlwWWNRbHdhN01GdkdJNDRkdzlWdnBqdTkwamJ1Z0cwYU5GT3c5eUZu?=
 =?utf-8?B?ZlJ6MWhCRkQzTXVFSWNmMWl6dVlFZDBxYk1EU3NVS2VEUGV6cVdLNEJEQ2pq?=
 =?utf-8?B?eE5LWUxkZUZRemU3TzExdWtkWlFQVy9YNDRkbnlNOGkxcTNRS3lXaTVTTS81?=
 =?utf-8?B?RFA3d204Qm9IOGMxZ2M5MytHVWxtT0s0a0kxdDY5a1YrWC8yelgxR3cxc2Fn?=
 =?utf-8?B?Y2xYNnlBSk4zY253Zk1zdVpqZ0VXQzBJWGs4Z2xaUUwrSm5nTVVEbVhLUFdK?=
 =?utf-8?B?SFMzUWNVQm8wTUVaZllaZExGTnJLcXFXdy9Kb1FOaWNZR3AwSjBheWwyTVYw?=
 =?utf-8?B?dkJvVkZ2TEl4SVNyeS91V1d1SlEwZkNWb1RWaVhQcFRjMk44OHpUejRFMFZU?=
 =?utf-8?B?SGpWNVpFcWFvQ0lwQ25uWEF1UTVNcG1wYnR3OXRER3RIVzlvcVFERzBhV2dE?=
 =?utf-8?B?RFhLVjZuM2lxcXNsdzJ1c3REZmxhazZmV0NmckNyWlM2V0NDVGh4UTlHeHF2?=
 =?utf-8?B?Y3d4TjFsQXBYcnJaWENZYnFZU0pnRWNUZHd4aUJFcjlHQXV1dWVBU3BkTWE3?=
 =?utf-8?B?OUU1ZGp4VjBJUUc2WnJmYVNwY2hwV1ovUDFIdFNZV3YzWUx3WXlYYnhKUFhS?=
 =?utf-8?B?aFVURWZ3TU9jMi8rakh1MVNTODZmNk9IRHNrMi9YZzdZNUlnMkFoQjUzS05t?=
 =?utf-8?B?bTJrcXVINlB2cVBZWmZ2OU9Ca1BsN1kzMHhMMytjR1dYMUg3WTNUSDV3dWR0?=
 =?utf-8?B?Nzh5VEdOMWwwcHo0Z2VzT0daajEyNXgyLzFnQzBvNTdjYmZCWEpibTZpZEZL?=
 =?utf-8?B?NnJLbGFabW9va3h3Zi9JZmlUM0dxVWd2eWJPQVh0d1JkRlViUFZOQk9DQWZv?=
 =?utf-8?B?U3NhejFVdURRa2JKM3BhaTh4Q3Y2aUxNN1V2UWQwd3VlNTFwVE8yVG9kUDhx?=
 =?utf-8?B?TEluS2h5VFQwVmt0SGFONzgyajBYWlFxQXVFRXRZWHdGUGs5QlhFWTVCMGU0?=
 =?utf-8?B?eCtTOTlteUprdmRHV3JJd0d4QUtlNWZZZWVxN29TbjR5TzE2Z1VURitHTFh3?=
 =?utf-8?B?L1RHNk5mOFMwM0JXbUlSQlhhQXVVVVYxeGlFN0xCZGh3K1FJWmFSb3czSmxp?=
 =?utf-8?B?Vzd6dElzTlhWeS9VdFMvQ0pCTUdTOUpabjlXd2ErdC9ZUXREc2xhTisxRy84?=
 =?utf-8?B?M25CdGNhN0VMOVdCWDV3UlRFaUFidlFGUldUUlVFUE14RkNYQTIrUGZFaEwv?=
 =?utf-8?B?ajNiR25PR2hEcWtqYVliMVo0Rk1yS0JVcVpneFNkaVEwL2tFTytGaTBoWGdP?=
 =?utf-8?B?S3lEa0JNa0dPZWNnR0s4eWk0OVU2WjZ6WWtCZCt0bXcwKzVYS25CQUlTRlJx?=
 =?utf-8?B?S2hLQ3pvQ0ordGM2b2xPcGo2bytWaVMxWFMyN2lkZEpMejJ4clRDbVI4bzZN?=
 =?utf-8?B?WWNMbnROL2xlbWJqQklHYWh5S3k0TGpMbWY1RXRISWI0ZHpjSDltdXJPNXVR?=
 =?utf-8?B?MHVrMEROTHdRYjg1NkNoc0tHVWlINzBBSmZFRkhhMVh4d3lyQzMyLzRUd015?=
 =?utf-8?B?M0QreWxxV0dmSGVOcXc0ajNUWHZIUzkvdHVOYk4zaitvQXNjMHQ2bHBJdHVh?=
 =?utf-8?B?cHhsdTFzbXJQdVF2NDBCOWxudFNsclFsR3FJWUNmQzJ0UHBoa09rc29NbGZD?=
 =?utf-8?B?VThENTA0T085VTBPMHoxZVZ1WW0yTU1HQnJSSkNnVmNIVk0yRFdqUjNCY0tC?=
 =?utf-8?B?S0N6U1V5YnlSSTA3d2dra3B0QlBnUmo3aFlidmNvUjd4anJ2cHA3MldqNmN5?=
 =?utf-8?B?TXBrZDFUbkY0b05RUGR0anZoRmdJczFLWG43eDdpUGRFWS8zNFRyb05nQ0Qr?=
 =?utf-8?B?YXg0bEFFbTRjb1Y0b0IvNWJxQUFxS3VTMTZWUG03U1cwckVId21OYkF0R09o?=
 =?utf-8?Q?ocwgOz0dOTJXZLylrDaXLDBG/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9b7ad22-16e7-4c23-a225-08de20db821e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:33:48.5953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BLv+Gk1vRY0WqYJo/vaJzXAfhZMnxCw+nyDT5erOlkXa5fceuJ29ykUx+YxEpIz4A9G2W1wznk75TODZG7K7sA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4831
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

PiBTdWJqZWN0OiBbUEFUQ0ggMDcvMTZdIGRybS9pOTE1L2RlOiBOdWtlIGludGVsX2RlX3dhaXRf
Y3VzdG9tKCkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+DQo+IA0KPiBpbnRlbF9kZV93YWl0X2N1c3RvbSgpIGlzIGZpbmFsbHkgdW51
c2VkLiBHZXQgcmlkIG9mIGl0IGJlZm9yZSBwZW9wbGUgc3RhcnQNCj4gYWJ1c2luZyBpdCBtb3Jl
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCg0KTEdUTSwNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJh
ai5rYW5kcGFsQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGUuaCB8IDE5IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxOSBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RlLmgNCj4gaW5kZXggNDNhNDE2MGY3NjBhLi4yNTY2MDc5ZjY5NWUgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaA0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gQEAgLTE2NSwyNSArMTY1
LDYgQEAgaW50ZWxfZGVfd2FpdF9md19tcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwN
Cj4gaTkxNV9yZWdfdCByZWcsDQo+ICAJcmV0dXJuIHJldDsNCj4gIH0NCj4gDQo+IC1zdGF0aWMg
aW5saW5lIGludA0KPiAtaW50ZWxfZGVfd2FpdF9jdXN0b20oc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksIGk5MTVfcmVnX3QgcmVnLA0KPiAtCQkgICAgIHUzMiBtYXNrLCB1MzIgdmFsdWUs
DQo+IC0JCSAgICAgdW5zaWduZWQgaW50IGZhc3RfdGltZW91dF91cywNCj4gLQkJICAgICB1bnNp
Z25lZCBpbnQgc2xvd190aW1lb3V0X21zLCB1MzIgKm91dF92YWx1ZSkNCj4gLXsNCj4gLQlpbnQg
cmV0Ow0KPiAtDQo+IC0JaW50ZWxfZG1jX3dsX2dldChkaXNwbGF5LCByZWcpOw0KPiAtDQo+IC0J
cmV0ID0gX19pbnRlbF93YWl0X2Zvcl9yZWdpc3RlcihfX3RvX3VuY29yZShkaXNwbGF5KSwgcmVn
LCBtYXNrLA0KPiAtCQkJCQl2YWx1ZSwNCj4gLQkJCQkJZmFzdF90aW1lb3V0X3VzLCBzbG93X3Rp
bWVvdXRfbXMsDQo+IG91dF92YWx1ZSk7DQo+IC0NCj4gLQlpbnRlbF9kbWNfd2xfcHV0KGRpc3Bs
YXksIHJlZyk7DQo+IC0NCj4gLQlyZXR1cm4gcmV0Ow0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW5s
aW5lIGludA0KPiAgaW50ZWxfZGVfd2FpdF9mb3Jfc2V0X21zKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LCBpOTE1X3JlZ190IHJlZywNCj4gIAkJCSB1MzIgbWFzaywgdW5zaWduZWQgaW50
IHRpbWVvdXRfbXMpDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
