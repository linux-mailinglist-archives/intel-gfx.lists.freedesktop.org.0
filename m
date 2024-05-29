Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D2028D2E0B
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 09:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4935B10E22E;
	Wed, 29 May 2024 07:23:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C2UkWp+k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A9C910E22E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 07:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716967433; x=1748503433;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=J4XPxq8nYkf2yL1K0bNI2N9qS81O8UJccmNlEapQbws=;
 b=C2UkWp+k/K/DmeWzFer75WcpIULyKmeiqwB9+7VZ6M7HSWBvuR+lB8B5
 SZhgM5nHAIOvubx2eoBWWYgrzEg/+p/SB9kYIOBTYRWY5u0jcHFgBiKdF
 iT8J+fn4JcrXpmFOocGLwBYI+3eHwxAKWzECgvozMsEIY49HtqD9SLBGr
 0YIwSczweew2IANurf4ZwzXjRUNBPEEaa/s3sKFtLoUbDiKbHnAutkeRX
 8M+ShiPRYb6L9seoU19kx1gh4+q2rz/yaEvWRoT1SykGiBdQI8ABK16kX
 ORXIcj93XgzwRun+LwDhp+twtDJSDkXp+e+r8TqcfXBMLiA1nKnFTI/Vx A==;
X-CSE-ConnectionGUID: otVbqm5tSUiB/rrleqVwWA==
X-CSE-MsgGUID: m8NacPHuTi6hdrG7RJihlw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="24769057"
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="24769057"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 00:23:53 -0700
X-CSE-ConnectionGUID: wmLI/NxbT2CegT51IfCdsg==
X-CSE-MsgGUID: sj8/NZhZTqG6GvbCFuESXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,197,1712646000"; d="scan'208";a="40215507"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 00:23:52 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 00:23:52 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 00:23:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 00:23:51 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 00:23:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lOh2TVhqES0E3O7cdkhWVuGoyqJsw1dzNYEfHmaNUyym4ZXoTFSEEhTp1MfpRI0jczugS1yfaKL5RvzuCuItIbFEncJIPfU3eTFUM0283A8Z9tRZQ8OO8qCRE3g26SW4OEKd2w5oNCZbmMw1DE2sMx+T5soT74vOEfsFT9WsBH2r+b0mTppnMsTxFUoJnsO9TEIEVWBkZ09qWwSUQ4/TY5bJYL+wsrxjPGrpwTI5y4SeHrPTHwiQfCcWJEwqxTaauCXPbHPvTf9CM8zT0cUwh5T8o/2H63H+f08XsuvLPHMN79qN6KD8A7rzcApuyng7A/wMyKJxUhN+nb9iaRTEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J4XPxq8nYkf2yL1K0bNI2N9qS81O8UJccmNlEapQbws=;
 b=HI9jBs3DOrrTD4AjczOnz1OtxgKUTxhkmkw52RMBR055yOEfXl2JJem33FO/9wul2tFvm5UCRsdrT/COyhEP/DEaa+gCxDLYE7dzQIuug4x9LKFHdRL5Iv2NBwgmA/1dgAW6/bgMMPQm+0qwP3QRtsuxjZ74BpyfmhQ1g0Y3O1rqVxppkq19cFlYeGhPWda/ag5wAuiiO02hH0RXBCVDbNmuOyasXEt8kxA95D2w7kzUhr4eY3stKrTkDw2B88t+yxtl/17jK9RTNwXgNtFGT2QuFd8Tw//WBhyC2S49oZmo/Llw1ebPwRMpLVv4IPf3XKmvnVGRB9AHtr33jNhlDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7759.namprd11.prod.outlook.com (2603:10b6:8:10e::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.30; Wed, 29 May 2024 07:23:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.018; Wed, 29 May 2024
 07:23:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "mripard@kernel.org" <mripard@kernel.org>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: Re: [PATCH 0/5] Panel Replay eDP debugfs support
Thread-Topic: [PATCH 0/5] Panel Replay eDP debugfs support
Thread-Index: AQHasPTMntbJpa2phk+BAZ3IOlj7ObGts7IAgAAcrwA=
Date: Wed, 29 May 2024 07:23:49 +0000
Message-ID: <1e866bd03c448dc38ac14b8e51a9e65799e0c9e8.camel@intel.com>
References: <20240528114455.175961-1-jouni.hogander@intel.com>
 <ae49a421d57dcb8154d8f753f9f24282222e03f0.camel@intel.com>
In-Reply-To: <ae49a421d57dcb8154d8f753f9f24282222e03f0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7759:EE_
x-ms-office365-filtering-correlation-id: b554489f-3a76-4f12-77e5-08dc7fb048bc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bkVja3NVUkFSSzlmZVJBcGpDaVE4SWxWNmpaeFFESUhoQXJVOFlabk0yRWpu?=
 =?utf-8?B?UWQ1Mnlsa2VhNlc0T3grMXE2SitGSGdDMHBoRU5aOURiekVTVDhiQ0pQZTVm?=
 =?utf-8?B?SEJzNGluaEQvQlpwTll4ZnpVSVpkOEwyQUh6UWlGdEFFN3JvdGpkZmt3VHdk?=
 =?utf-8?B?Q0JPUTZTSmRxeEZvNnJzdk1ET1EzaFhZK0xKRmU2OXFDS0VZbE1oSGpsZklp?=
 =?utf-8?B?MUpOZnRINW9vN3hKZVFGVmc3dFVBSnBNSitjU3l3Q3F4VmlnV3BwS1RBSmxr?=
 =?utf-8?B?MkpVUThyRFhiQUdFUFQ2OXZBN254cU5JdW1FbHR5eitJM3Q3YUlZdVpHVkJL?=
 =?utf-8?B?R0V0bk1ZMmpzQXNyMXRaOHFvQVErNHJ2dUNkVDRudXFtMW5DaTl3bGFqTEZ4?=
 =?utf-8?B?UVc3UUxDbUdORzJUWFBmLzdRTngxMlVTYi82N1Q4UE4ybkIybkZCRy9VNkhC?=
 =?utf-8?B?OFRMUHh5cGFMc1drY0tCb1piMGcyd1c1K1ppUnQ2SEFhQjBCY2RIVDJMWkN0?=
 =?utf-8?B?S0I4Rk1JMkJPcEh3WlhPMkgzZi9JZ2FaUEp5Nk4yczJIZlZtOHJTZ0dkdFVu?=
 =?utf-8?B?aUx1RTFSVDVuSkxaUU1yeVhJUUVkUGx1a3RrekdMWUhaRzJESElKdnEzcVMv?=
 =?utf-8?B?MEFMREZCNU9ubzhYYVlZcWloZjN2Q25Oc3QrM291eVZVa3R1RzlQaWpwdlVR?=
 =?utf-8?B?U3ZwMUVZNERmcGxPQ3ZBenZBWkVVcE1paDZWTDhlRGplaXRQVFNmcnlTS04v?=
 =?utf-8?B?ZzdSaWhMVHdlV29VdDVZcHg5VjgwRlI0eEE3dlBDdm54cnJPbGplY0VWUHcy?=
 =?utf-8?B?Q3ZuWEtVLy9GNGFCOGZWaFVhcytrMlNsc0Zpbk9YT0lKSFNWUGdpV1p6VlF2?=
 =?utf-8?B?V2dObGxQaEw0V1oyb3grS1RBZXg1T2dkZzNVcEY0NXh0Yk5kcm5GeE1BVUdq?=
 =?utf-8?B?NTllUVlzT1JvaFhBV3pHbFN5NUNiaEtYY2V1Rmc5cTdKN3J4TmhPN0NmOWlo?=
 =?utf-8?B?UzdsUmF0RzlpUDJTT1c4ZERsa0J5aWhEci9xelArVW12OG55WUZGYXNEZENj?=
 =?utf-8?B?ekFaeGR1TUNiMXY2T2ZJbEEycEZEdEJJcWhsSGNrYUVDeEV3UDhqNkREMXBy?=
 =?utf-8?B?cmFKUlIwVkNWV0xGa0txVU1tNnF1QTdyV2dQZnBTSkN6dDI4dmFFaG91Yzh2?=
 =?utf-8?B?SzlPVTZ3TjNvMkR6d3V0QXFNbXIybXVkY3BwcHVpc0NEYWEvd2VvQUw5V1Vk?=
 =?utf-8?B?emsyTFBEZlQwY3JNUnA4cGxxYUtmaUlKWFpMR05NeXExUUlOTVBKN2k1QUgz?=
 =?utf-8?B?NkpualhwaU5JSWloSjFXZ1VjQkJaNTJ0VENSaTd6UWZ2MjA4c0I3b3oxVlFJ?=
 =?utf-8?B?WTMzemFVbGRqdlgyaUl2bXBWSjRJZnczcW9oZFJjY2kyK0MwVUY2UzlFWXBn?=
 =?utf-8?B?d254WGM2djhlbDBTUkQ1L2xkL0k3QUdzL0dZV3hsYkt1Zit6ekhTUjVheitP?=
 =?utf-8?B?MXhiOTNia3dTaEVQMjRMdWxhOEEyclpYdU1sRUN1dXA3R3pBK015MWxVMUZw?=
 =?utf-8?B?RlFZRU1iZkNxRTNLcEEzRms2ZkNqRi81eHA0bFZDbi96RzA5QjVNaDJ5WEt1?=
 =?utf-8?B?aXY5eTdDUC9rblVxVTlQS2hwTE45THM3VzBDNEVEcVlhdllnY1huc0NSVFFq?=
 =?utf-8?B?U0dMaXhVY1hlNXUwWEVWTnBVNW9RNHV3Yk9VaElZZDdzSEtpQlU2SVlnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWU3MjY4eXNuVHJ6YWpsRGt5M2JlK2JNazJ1QVB3ckZJbjFQYVdlUGFRbW9i?=
 =?utf-8?B?RnRuV0tEcGJ3Q1BaSXNManJ4ZDdPYnBPVFp3U2lXSkkzSG5Kc21PRW00SVhD?=
 =?utf-8?B?RmFEb0ZEREVHMEFUQW0rWURTMkFvRHBJUDh5ZTAwelJ3RU5nZmNxS1ZMaStJ?=
 =?utf-8?B?RGJMTmhNUHBPNDdQRWhOcUJkaENOcEg4OG9QRE5MZGo5OTlXTkRITFNZNkMv?=
 =?utf-8?B?Z0I2a3JnUlRaRlNkT2ZGRXNYSmk2QWVRK2hPVUgyOG1xTndRRWhhSFBWTlFj?=
 =?utf-8?B?TzFNTXRQdEVSUVd3bDZvUFVoT1owZzU2MjNKSEFOS1J6bmZLbDM4eFNWQkJB?=
 =?utf-8?B?dW1BY1JwWTdidHNWQWtqTmZZR0tTeWFEeVYwNUkwVDd5TW9lcVRUajloVVFu?=
 =?utf-8?B?MHFUODNkM2kyQlcrWlpjenBjeWZRTU8yK2IxOXlxMi9tc2hKR2F2RVFhTVY2?=
 =?utf-8?B?TFRod1RlWjc3OFo4RmY2NHFzbElQSlR5UXJGZUhUenRocnNLSWtPdnFsUlkz?=
 =?utf-8?B?eTJBbHo4cEZuRDB4MWV5eE0rTUJQMFFnc3ZQNlRSZEhtY29ETDV6WmVSV2Zv?=
 =?utf-8?B?R2trMXZLamVRR2xYdFMxSUx0c0ZMWDdqNVBlWVFob0ZpalJuUHJrY1lRRVBS?=
 =?utf-8?B?MWRzWGk3RHV6VzQwV3UyeDlCN3E1ZkZkMGJUU2dXTlQ2dVUrSXg3YmtEZk9X?=
 =?utf-8?B?ZWRlSkdPUVRDdjZLbDJuYUNpeXBUc2FZZlVkREF5eGJlLy9RVEh0RXRQRmVp?=
 =?utf-8?B?dFJrR0h3bTBZSWx5ZDgrMitjbUc3NUtVNVZkcGhTR3p1RzlBd3pIOUFKSnMz?=
 =?utf-8?B?UDdINDlyY0hkbHpKYXlmWkhHSFJ4aEhxTUh3WVpkYmNMR1o5MFFkZktCeEdz?=
 =?utf-8?B?L3pWdkN0QmcvaEp4eFR1dVNIRWluTDBFWFZ5WTVwSlo3dTZacENLaWFOTUty?=
 =?utf-8?B?NTFaNnlrcnMzbU82N3FPcXV1RkNZUUFXNmNpTjhPc1BqQU9OY1M0akl0MUNo?=
 =?utf-8?B?RWp3VmNYeFF4Q2RpdUZ1azhudEtScUFSdjNNdDYyT0NibEF1UFVxS3JoL3po?=
 =?utf-8?B?Q0REVnVaTHhTejhPNG1NMCtpZEN6V3VNQnU2aEtVcllFT0grazN4eFBuektJ?=
 =?utf-8?B?TEJEZno3SmVURFkwVWV4eGk2bUZ5N04vbUdBY2paR1pqT0pWRDEvVXlhV0NO?=
 =?utf-8?B?amxkY1JIUWZkdGNZNGVHY3A2VUR4TzBKa2x0UTVmaFlsZ1dMNEtrLzVtWlo5?=
 =?utf-8?B?MVhsSzdYY05LY1F6eXdndFdTcGIwSkJFcjBYRHRmRUYzUTVrQnVFRWdSZVcx?=
 =?utf-8?B?Y2NGWGNmMk9PWDN2dWRrVXR4RTdlOTQrTEVPdHlkaktIL1cyaittSVRQVHBm?=
 =?utf-8?B?V00yRnk0V01mNiswRWxUdk14WEFnaDBzeTZzZ09mNmo0SEp2Z0VLM3NXWTgv?=
 =?utf-8?B?VEp4T2orUHpaRTM5anBXYVFNLzZUYlV2c0lwQldUZnFFc3pKMkVuMFVpbHZx?=
 =?utf-8?B?Q0FEZ29BOHFOaDAyMnVQd0xvR2tValpLS2VQdi9IWm9XR2lKVnBKSlV3Smtn?=
 =?utf-8?B?N2tDMjQ4QmdWdnNMUU9QTFBhUkdKMUJRSmNvNGdEU2k1c3RLaENBS3cxT3Br?=
 =?utf-8?B?cWliU3hLaEcwcE5WVi8zK1VleENacVdBeUp3M1haRDlrQzArUTBMRlFOZXp5?=
 =?utf-8?B?d3RjN2xPaHEweE13YisvejhkYXFsSTBoTzNVSE1jSnVTei9LS0RyRkRiNnN3?=
 =?utf-8?B?dTNVa3lOMi9DYzBBdjVoOWZNaXgrWS9DMHRPQk8vVmJCczZhdTcyZSt5N1Y0?=
 =?utf-8?B?MGFBZVJUaldacjk0U0FRajZmYWFzQnNrcnE1bWRRQzBJYTZBM1JRcW9HY2dF?=
 =?utf-8?B?RmpPVnFGcmlOa0djT0NNOWNPaW9rYVlaMEJnR1N6SjRPYnR2eSszWGt3NVN0?=
 =?utf-8?B?dlk1YTlRdWxsZVVPeDg0SEhiN2V4TjNIQUNjVmxoNEJhZ2ZTMlRFczF0ZWdL?=
 =?utf-8?B?OThML0ZpN3ppZEtSOFlhVUM5ZnQxN1U1OTBXWWR6S1U1emdla0EzYzVsRUJR?=
 =?utf-8?B?NmNYUjBUU3pnUzRRUVFrQ24vcGNpQ2hYbEhzWUJEeFExaFppK3BqZWVNZnpy?=
 =?utf-8?B?VkxwRXhIemdHYm1FU3Ztd0VmZk0zQTNsdFA3UVRWSzBXMm9xdEVnMER3STNq?=
 =?utf-8?B?L3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <087B2EAC3E880840BB67D25A04760FD1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b554489f-3a76-4f12-77e5-08dc7fb048bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2024 07:23:49.0535 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ILYV7KotW+IUOYUsYQLMOP5QsLd1ON+JtD9j9alyufXVUEoLv3c5WxGrRcNyBSyUFhr60U268lH1xaUZ6/699AN7D/3mCobFK4CkR+4TQ7M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7759
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

T24gV2VkLCAyMDI0LTA1LTI5IGF0IDA4OjQxICswMzAwLCBIb2dhbmRlciwgSm91bmkgd3JvdGU6
DQo+IE9uIFR1ZSwgMjAyNC0wNS0yOCBhdCAxNDo0NCArMDMwMCwgSm91bmkgSMO2Z2FuZGVyIHdy
b3RlOg0KPiA+IFRoaXMgaXMgYSBzdWJzZXQgb2YgUGFuZWwgUmVwbGF5IGVEUCBwYXRjaCBzZXQN
Cj4gPiAoaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzM2ODQpLiBU
aGlzIGNvbnRhaW5zDQo+ID4gZGVidWdmcyBjaGFuZ2VzIGFuZCBpcyBzdXBwb3NlZCB0byBiZSBz
YWZlIHRvIGJlIG1lcmdlZCBhbG9uZcKgDQo+ID4gU2VuZGluZw0KPiA+IGhlcmUgdG8gZ2V0IENJ
IHJlc3VsdCBmb3IgdGhpcyBzdWJzZXQgYmVmb3JlIG1lcmdpbmcuDQo+IA0KPiBUaGVzZSBhcmUg
bm90IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dCBicmFuY2guIFRoYW5rIHlvdSBBbmltZXNoLA0K
PiBNYXhpbWUgYW5kIE1hYXJ0ZW4gZm9yIHlvdXIgcmV2aWV3L2Fjay4NCg0KVGhlc2UgYXJlIF9u
b3dfIHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dCBicmFuY2guDQoNCkJSLA0KDQpKb3VuaSBIw7Zn
YW5kZXINCg0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiANCj4gPiBKb3Vu
aSBIw7ZnYW5kZXIgKDUpOg0KPiA+IMKgIGRybS9pOTE1L3BzcjogU3RvcmUgcHJfZHBjZCBpbiBp
bnRlbF9kcA0KPiA+IMKgIGRybS9wYW5lbCByZXBsYXk6IEFkZCBlZHAxLjUgUGFuZWwgUmVwbGF5
IGJpdHMgYW5kIHJlZ2lzdGVyDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBNb3ZlIHByaW50aW5nIHNp
bmsgUFNSIHN1cHBvcnQgdG8gb3duIGZ1bmN0aW9uDQo+ID4gwqAgZHJtL2k5MTUvcHNyOiBNb3Zl
IHByaW50aW5nIFBTUiBtb2RlIHRvIG93biBmdW5jdGlvbg0KPiA+IMKgIGRybS9pOTE1L3Bzcjog
bW9kaWZ5IHBzciBzdGF0dXMgZGVidWdmcyB0byBzdXBwb3J0IGVEUCBQYW5lbA0KPiA+IFJlcGxh
eQ0KPiA+IA0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
wqDCoMKgIHzCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmPCoMKgwqDCoMKgIHwgNjggKysrKysrKysrKysrLS0tDQo+ID4gLS0NCj4gPiAtLQ0KPiA+
IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1fZHAuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfCAxNiArKysrLQ0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCA1NyBpbnNlcnRpb25z
KCspLCAyOCBkZWxldGlvbnMoLSkNCj4gPiANCj4gDQoNCg==
