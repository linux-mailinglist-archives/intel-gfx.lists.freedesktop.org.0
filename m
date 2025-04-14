Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE8AEA87805
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Apr 2025 08:39:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6384410E303;
	Mon, 14 Apr 2025 06:39:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CdH1LGY5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BB7710E2E9;
 Mon, 14 Apr 2025 06:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744612775; x=1776148775;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uRIMAWACcNtqs+XqHzn9Da6cOLJm6DIYep8Ar4NFOeM=;
 b=CdH1LGY5tFPQuh9YumBJAM9mgEFkltUJ5s7jyjUxpz7sR6UxSCnYWFyR
 LWQGsh2qK7OyiDIGa0Xe96c+qEG/n7Uo+/I+ShLUiWBhXGSvYhPs4ozfn
 5JgY5sCcFFjfaORZ4WwwCQMuGMV2YuI0Cxq/H8kjTzhw8wr24RXoEvISB
 FiHmvfgxuKEOWBLZ2ys5VG7f14ppfkgZaPpW74DF80VPbDGUua+73HJnm
 Ejkxy5V2MF37Ig2ttU/wkgozTH9cAcWex6erVmlwboqIchbZLVvnVhoTR
 GXWE4Ebx/9wABMtFmDgSn42A8PVOQK3sS9TT17IOEbHfdukJR12IR869A A==;
X-CSE-ConnectionGUID: f/QNlFJtSX+qqGmoPJI5kg==
X-CSE-MsgGUID: edRBpKCXQxyDH+3FWrOwSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11402"; a="46156896"
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="46156896"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 23:39:30 -0700
X-CSE-ConnectionGUID: qQYbSvFvQfuFcYSFAKsEpg==
X-CSE-MsgGUID: ZlgXvEDRSCSpgQssK4R1bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,211,1739865600"; d="scan'208";a="134573674"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2025 23:39:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 13 Apr 2025 23:39:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 13 Apr 2025 23:39:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 13 Apr 2025 23:39:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rWfERRxaMoLqGTLMVIVw9fOsO6qmideAbGemUnrG6bjMzWoU1n3xMU/tEdSF7zhqoWtWgdzh79dBBWoYgTTIUyCGbIatO7pDySuCKapLyl32sqf/i86JkHroUImA+8EKm5d/zCRM+HHIatZc+ipl2T393QDc8zam4bM2V294qPP5iG1jVSByEU/RPJrWkfkmnoLg9Kx8fOVf8+vA/CetCobJ4N6XPSs/mCC53tt+zd4V3EcsCPNly4Ncig/Gdj16k3RjWuG0W1WWyW0VfTGARfFpnhL7Ca43F/V1xJlJ5ag0BRgngY1sHdRoKhdeUbGT8OdcE427YgSV/pxvMQb+ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uRIMAWACcNtqs+XqHzn9Da6cOLJm6DIYep8Ar4NFOeM=;
 b=EdbxyDI00ZEgX7uZaXe2w9lLnrzxfs8lY41HhNE/sHprm6VnNSVTRnSYB19silG1vJdSqac2UdK2usCpX2F1YbuTcBk8lFinqj5wMz7d74zAD6GyDv9s71uD7Ef9RJ23FgwC4WZAb6G7Lzr6lmmiS4z2iKQvNUueZNjWxPpgJpdfHuxup7+0xTi+fsDpC3u0xgiSGTF0LNhB2vxR7QiYo5U5O4Wu9hXhtoS6gcwchCGaCVP8ENO67o8mGelZjvka6iFrdVqZpQe6gWRdZdZzBC86ICDvvYAGNx9aMTyz3ntSrIuynln8zSNc0P02ZFDe/O5Jqcb2IV9JvY/lmMErrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH3PPF066A3CD44.namprd11.prod.outlook.com (2603:10b6:518:1::d07)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.34; Mon, 14 Apr
 2025 06:39:13 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8606.033; Mon, 14 Apr 2025
 06:39:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v4 1/2] drm/i915/display/dp: Remove support for UHBR13.5
 on display14
Thread-Topic: [PATCH v4 1/2] drm/i915/display/dp: Remove support for UHBR13.5
 on display14
Thread-Index: AQHbo76YTaFH5EaOzUSV6SySOL2oRLOix7PQ
Date: Mon, 14 Apr 2025 06:39:12 +0000
Message-ID: <SN7PR11MB67505ACC2045675905501AE8E3B32@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250402-dprates-v4-0-752535b2068a@intel.com>
 <20250402-dprates-v4-1-752535b2068a@intel.com>
In-Reply-To: <20250402-dprates-v4-1-752535b2068a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH3PPF066A3CD44:EE_
x-ms-office365-filtering-correlation-id: b1fae49e-db19-42f5-8bca-08dd7b1f11bd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WXp0Nm5iS25HUU9oWWpsWVNJVitLRkZ0THRrdHhReTcyM0NRQVpLREErK0c0?=
 =?utf-8?B?cjJHMnliRTEyVDQyazFTTURlSHBQM3J2SXhzZ3pLT2Z1OFEzR2w3OERxZURL?=
 =?utf-8?B?NXZMYWg3cmdRWGpuM1d0aXE4dHMyZ1NET0swSURDaWZjR0RyQ0lmdUNJeDN2?=
 =?utf-8?B?cG5sYUZJcEhlZkIzblhYeExycWFIZlJLQmsxU0h0cC9YdUpIL3NHZ0dnS1JJ?=
 =?utf-8?B?enJySzljMFVQMmtDbWdMZmJCeEQ5eDdBVW5rWmt1UjZQMll4TFlmVlFqWmhi?=
 =?utf-8?B?NStzQS9uT3JQaTR4Wml1RDJuY2R5Y2RxamFMMEVyVENsQXRDTWlvVnplZy9B?=
 =?utf-8?B?V3hxb0diTUY0RVJqYmxXb2w5UWt6RGJXNUpINWtzQmk2b0pOVDczb0lTS0Q5?=
 =?utf-8?B?WWlLeEhob0d1bVlKbzRBUWVtTk9zMUVCVmVRSytUdmNOVHZaSnNEMmZIZ1hE?=
 =?utf-8?B?anJCS0pyTU1DSzVqZVF1SW96WkVMclVyaTh2Z2lYWWJtU0tWa09mNUN0L0px?=
 =?utf-8?B?YXJyL1JUNmJNanYwc3lwZTN1Y2Mrcm9qRGcyT1FJQUxGNlhwSkhFK01wakdS?=
 =?utf-8?B?ODUraWppY2wvSlFNcldhL0hEQ0VJYzZUVnZGNllKTFF2c2s0NER4Q2xYeUVt?=
 =?utf-8?B?dXRKT2xkdmxNSThBa3FmbFp1Qml4ZHo2bVNzd0RFVTJyYnhPdms2TndDQVVq?=
 =?utf-8?B?ZzA0NVdXTlI3QW1DcjZ5dk92dEJ1OTdSZlI1dU5aMEdYYUYwVjZiWXJBTFE3?=
 =?utf-8?B?eVBwZ3llSXVKZXJTMklxRmU1NW1obzhsRjB6cWtLdjhIMDAxck01cWVhRlNC?=
 =?utf-8?B?Rlhjc05Nd1FTcDB1L0FoaytUY2xoVEF0TEhGS1oyMUhoQ2wyMmVjSmZiUFRX?=
 =?utf-8?B?L1VUbjVNbmQ1WFZzM0tua2R0MnV5RmdOS1VSS1VHa09HcXoxMU5IOW91cWVn?=
 =?utf-8?B?eEQ0ajVnWXl0QmdTQkJZdnJ6TGh2SVNEeFlSdTA2eUJsS0VVdm9Xa0NGUWVz?=
 =?utf-8?B?R2dTTFVDZjhVeDE4Y0swWTJaQW9GVE1NU3AwZGs1TWc4RDBZdDg1Tkw1eDdK?=
 =?utf-8?B?RTNBcElyMUZDTElGZEZ3dC9DSFZjTUxvWkhJVm9LNGlkNTk4MENPa1IvSXBj?=
 =?utf-8?B?a0VSVUFDOTNMT3FyOVp5Mlo2SDF4R25kVlBZNnd6dUkzUmdKM2JHTmJYcmFi?=
 =?utf-8?B?Szk3TEVuYkFON2VFT1V5OFFYU0RqS3dOdFJxc0NZam9yVFRlTXhSUUVMMFJs?=
 =?utf-8?B?a2krcnhmT3BldGE4bGhSMThmWTNIOThZU2hnSGNkUWlPR2dFYlBkU3QrVWVq?=
 =?utf-8?B?NWF6MHN5UmloSnFuaXpBcWV3T3JRYllPRTcrYjY4RUdMRGJUQ3B4d21YZ2NY?=
 =?utf-8?B?U1RGZFZsYlR3Ylg0bU9taFlRRzJFSlJ3MzVqUU9NN0hBNjdBVGJYV1RxMmg4?=
 =?utf-8?B?SG9PTHhKdzRNMmt5MWZVb3J3SE54bEpvY01uNzRnTnJYWFZ1U1pmYnMwb2s3?=
 =?utf-8?B?cGYxN2paS0pMaWlpc0F3M3BBbTRFYkthZ2F4dVVDSjFWemtMaFZXaVFCcXho?=
 =?utf-8?B?WnFlU1hmU1g1eXpXWFVnNUVaZGNPTmg2TGNMVFAwbnBVeDBHTWtiTURrOGdD?=
 =?utf-8?B?dGk0blM3UDAwdVduYkMzSlIxNHFyODEvbU9tdHlrYm1SZ2l6Q3FDd1E1Uzlq?=
 =?utf-8?B?eXREL1hDRVY5VEsrU3JoRk45Wm1JQ1VWS09WY0xGRWMxaDJoQlE3YXZFdENp?=
 =?utf-8?B?L084Zi96amFZOXdkY2xkZXpQUDZSSkJZN2xDaU1PNjRpR3pCVGdFV1IzQW1s?=
 =?utf-8?B?SjBDNk85UFV4L2xqa0VrV3JpYm5RNEJIZExBL0VYN1J3UVA2VEdjM3hNR2tt?=
 =?utf-8?B?NVZLSHhEVzRJcW1rQkNOZlAyRVlLQkRJc1JnL1VkVDlIYTZSWVhQdzZCSHUx?=
 =?utf-8?B?bk9sVXh4QVFSNzRacnliRzF2YzVqenVGRHRIdElpbGFBZTZ4Q3ovRUZPSkwx?=
 =?utf-8?Q?zDO2nPgaqBuvMXR3CINkrV8EFyeCVU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWg4NWVKbVA2VzNxUGIrRnppY3JhM0xSTE5mMWhNVEJnMDQyUm5FK3VQU2ho?=
 =?utf-8?B?SzQwSUwreWxpNURRWG96ZDBBb0hrczBZcUd2R283TnlzMm8yWFZxelg4Nlli?=
 =?utf-8?B?SFVRb010TDZxblQ0YjU3OWlhV1YvT25NazNxbXRwN2d0RGMrVVJOS1ZqaElM?=
 =?utf-8?B?cU5FL0tySHpwVlNYaDlJVXNUOUE4WldsUEhOdkFiTE5kNEhJMEczL1hDL0RV?=
 =?utf-8?B?ZHVhQkt2d0RnVlVzeDREZlVFWDFOa1hTaTE2NnM2VHMwVkN2QmNMVWNubjFi?=
 =?utf-8?B?dU1ZYmdvcVJZTnNxamJTbkgveDMrSy9GbWZENkJXRGhhMEtjVmFWNm03aVA2?=
 =?utf-8?B?WSt6WStNKzZ4SkdIZTUvd0VKRCtzSkZKNTVCenViTXZiWnEwMGcwUE1OMTFT?=
 =?utf-8?B?YkltK0JwOEMrVWZRNExCMi9VbE5Od0MvTnJmaVY3ZVdOU2xkazRvRGpSbkRo?=
 =?utf-8?B?LzJRd01xenVxdnIwcXZCajRxUEVSZTcrcjRDVjVXMGZOamFoWjJrL3RVdWQ5?=
 =?utf-8?B?RzEySEF4UGxDSStvRE1pMkVNNjhoRTVLSjJwQVE4cTdPc3FQMmNKVENEdUtT?=
 =?utf-8?B?MHR2cERlQXZOeEpLR0c5TlI0emdOTWVCNkJBWWI4RzFIdUJuWitnaFJSdkR2?=
 =?utf-8?B?SDduL01sQWZUQ0YzcG9FTWpZeFJzWVNGMmsvcjcvUzJaVE9PbTRFVCtvVTNH?=
 =?utf-8?B?S0JBTm1kWUx5TUZKa2liaEJzUHRIQ0k0aXd3Qnc0OHo3TEdwVGF5dURpVFRr?=
 =?utf-8?B?WTRDaFR0VmtNNUYrK1o5MXBHRC9DcGZFNER4Y3RJaFJFdDg4dzduYTQvT0kv?=
 =?utf-8?B?MnNGellrOEZhL2NacFZlWmNvYnVTWkl1SklsOHlucHROM2wveTZJakhPT3Nw?=
 =?utf-8?B?K3c3azM5djN6ZHgxYWFEckIzUmZMdjZoRWE2Zi83L0h3NWhwUmZNR0V4R25o?=
 =?utf-8?B?Um4zdDRCdXIzVFZrK29Jcy8zc2lFSlFIMC8xajZxdlJvWjZnUVllazlOS2dE?=
 =?utf-8?B?blQ4OW9YZGY0bk5EZ1pOL3dmenJGZmFqNFpjRUNoQ2xFVXM3R1RhbDBLMkdK?=
 =?utf-8?B?UXFKV3N6eG9TUllFMlp3RlV4L0tnRHpSTStOYjJUb2cxWWVNYWxTYnRIOFMx?=
 =?utf-8?B?a0J4dlk2UDFoQWFoMHRXdWpoblB1S1gwaTB6ZTFzdVBPQjQxMGFvekJ4TXE5?=
 =?utf-8?B?aFJQNEg4dHJ4dTVieklLR1FzbUVaSURwcTdLeE5DZ2o5cHNPVGgxbU9CY1Vl?=
 =?utf-8?B?YjE1c01JL0RrODR5cGhabkluQjV5MVQxdms4bnRkLzlucGgyR0lYYjh6Vkgy?=
 =?utf-8?B?cTJZclJ2SDB6ekw2UWY3YmlldUVPWGQyUVVIbUppdVlIWW4wK2Uzblk2dU1j?=
 =?utf-8?B?MTBPVlNjc1JEWUlPRTB2bjVZZXR1dmhKcVlrTkIrVUhYRTFPNzBGYnprWVls?=
 =?utf-8?B?TWNVSFpwbHdJMHRQNDBqcFFrbFN5emlLR1FmZXUxWXBvL3BHeSt3Sm1OaGdz?=
 =?utf-8?B?VkRwQVFBVlp4dkxESStHeHN3VVRlaDBheVZPSlJhSDR2QTAxL1VrdEM1MXZ4?=
 =?utf-8?B?czU1MFNiNHFSNUFrTllhbFZJRnJlUmZqN05tWUdCWnJ2Rkp3UTBIbGl2TmE3?=
 =?utf-8?B?S2VySFhnMXJjRFZ4cGp0clh1NVhZNjI0RG9QeVdoaE16bUtyT0M0TmNZY2Z5?=
 =?utf-8?B?elNnOTBqalVDRUJMVTNtSTQyNWlmMDRNZmY4eXM5UWN5N0xjblpoL1JFazZZ?=
 =?utf-8?B?RVJoczhuV0NqN29TbDdkcmsvQXFwTTh5NC9RSUkyS1N6R2NXRVZ3M2t1dE9o?=
 =?utf-8?B?dVBsNllnM0Q3dWNxbEJoTXQzd1hZNS9yRzhVbjBEZTIxNXRQY3ZqbGZTM2R0?=
 =?utf-8?B?aVZGOG5FRWp5cjBNNjVoVEk0VVQzRk5nKzI5S25UbnBTQXJHWTQwUFVDWDVl?=
 =?utf-8?B?TGdqN1puTGM3TmtMdnJHdHRZb3BBTyttMjVreGg2UTBtSGtxdXEyblRSUStH?=
 =?utf-8?B?dnBxR3RNVzQyYlFtVTlRWUtPRWxDQkp2MGpTYUFtN3RmRzlEZkZkWW9lTlVK?=
 =?utf-8?B?NXc5MnpoWm5jQWNCenRIczNkUzA3NXpiRHFvUWlCTzd5TlNia2Y5WUgzemM1?=
 =?utf-8?Q?2zdEaXLDtfFlxhnHASVllaLo9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1fae49e-db19-42f5-8bca-08dd7b1f11bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2025 06:39:12.8231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m7kSazV0H1Hp/n5qTHEEA2aRckU8AqNau88P6ATxPoI6s5myptVaSPN0KibuakxHmgiQH9lK/hJdactcVXJYvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF066A3CD44
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBBcnVuIFIN
Cj4gTXVydGh5DQo+IFNlbnQ6IFdlZG5lc2RheSwgQXByaWwgMiwgMjAyNSA0OjE3IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcNCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+
OyBEZWFrLCBJbXJlDQo+IDxpbXJlLmRlYWtAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMS8yXSBkcm0vaTkx
NS9kaXNwbGF5L2RwOiBSZW1vdmUgc3VwcG9ydCBmb3IgVUhCUjEzLjUNCj4gb24gZGlzcGxheTE0
DQo+IA0KDQpJIHRoaW5rIHRoZSBzdWJqZWN0IGRybS9pOTE1L2RwIHNob3VsZCBiZSBlbm91Z2gg
bm8gbmVlZCBmb3IgZGlzcGxheS9kcA0KDQpBbHNvIGRvZXMgdGhpcyBuZWVkIGEgZml4ZXMgdGFn
IHNlZWluZyBhcyB0aGlzIHdhcyBtaXNzZWQNCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCj4g
U3VwcG9ydCBmb3IgVUhCUiAxMy41IGhhcyBiZWVuIHJlbW92ZWQgZm9yIG10bCBieSB0aGUgY29t
bWl0IGNhZjNkNzQ4ZjY0Ng0KPiAoImRybS9pOTE1L2RwOiBSZW1vdmUgc3VwcG9ydCBmb3IgVUhC
UjEzLjUiKSBSZW1vdmluZyBVSEJSMTMuNSBvbiBhbGwNCj4gZGlzcGxheTE0LSBwbGF0Zm9ybXMg
ZHVlIHRvIHRoZSBzYW1lIHJldGltZXIgY29uc3RyYWludC4NCj4gDQo+IHYyOiBSZWZyYW1lZCB0
aGUgY29tbWl0IG1zZyAoSmFuaSkNCj4gdjQ6IFJlZnJhbWVkIHRoZSBjb21taXQgbXNnICYgdXBk
YXRlIHRoZSBtYXggcmF0ZSBzdXBwb3J0ZWQgKEphbmkpDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBB
cnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA0ICsrLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4DQo+IGYyMWY5YjQ0MWZjMmE0ZTY0
NGM2OTQxMGU2ZWM2YjNkMzc5MDc0NzguLjkyYmNhNzAxYTk4OWIwM2UyYWQ0YjNkOWUNCj4gN2Qw
YTllZjEyNTY3ZTVhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+IEBAIC00ODEsNyArNDgxLDcgQEAgYm9vbCBpbnRlbF9kcF9oYXNfam9pbmVyKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IA0KPiAgc3RhdGljIGludCBkZzJfbWF4X3NvdXJjZV9y
YXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+IC0JcmV0dXJuIGludGVsX2RwX2lz
X2VkcChpbnRlbF9kcCkgPyA4MTAwMDAgOiAxMzUwMDAwOw0KPiArCXJldHVybiBpbnRlbF9kcF9p
c19lZHAoaW50ZWxfZHApID8gODEwMDAwIDogMTAwMDAwMDsNCj4gIH0NCj4gDQo+ICBzdGF0aWMg
aW50IGljbF9tYXhfc291cmNlX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgQEAgLTU1
MCw3ICs1NTAsNw0KPiBAQCBpbnRlbF9kcF9zZXRfc291cmNlX3JhdGVzKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApDQo+ICAJfTsNCj4gIAlzdGF0aWMgY29uc3QgaW50IGljbF9yYXRlc1tdID0g
ew0KPiAgCQkxNjIwMDAsIDIxNjAwMCwgMjcwMDAwLCAzMjQwMDAsIDQzMjAwMCwgNTQwMDAwLCA2
NDgwMDAsDQo+IDgxMDAwMCwNCj4gLQkJMTAwMDAwMCwgMTM1MDAwMCwNCj4gKwkJMTAwMDAwMCwN
Cj4gIAl9Ow0KPiAgCXN0YXRpYyBjb25zdCBpbnQgYnh0X3JhdGVzW10gPSB7DQo+ICAJCTE2MjAw
MCwgMjE2MDAwLCAyNDMwMDAsIDI3MDAwMCwgMzI0MDAwLCA0MzIwMDAsIDU0MDAwMA0KPiANCj4g
LS0NCj4gMi4yNS4xDQoNCg==
