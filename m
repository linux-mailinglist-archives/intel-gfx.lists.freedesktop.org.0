Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F67EA4E09C
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 15:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFEB410E5EC;
	Tue,  4 Mar 2025 14:21:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RaMNBfYz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E62B10E5EC
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Mar 2025 14:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741098057; x=1772634057;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2MQFYZpFXPCKdBXNPoWV6WpSIm05a+zeZafF7HBjYWg=;
 b=RaMNBfYzsNY3GEo3MRV8Vh0fuVqCOxMg9Ek6aHqn7aRWno+mbk+3wMqy
 XH6Zjq3Q6RfMs2xMc5WxczUr8Kf2HaJGfqfn85O2yFOGajeU4yze8x5xD
 0FCGJxUf0i+mbsimU6lNTptAdZiYCR92vIPlQsSMmV9+LbL4GIVT7XOCz
 YSv8wG21xluefRRE/4MJ7LS3p8pi1iaoXC8wQSvzUsH2MQD+Z0W4ASF+n
 bLRf5f5tuZtyKmvOqIrrVLOY5qN+P6UeEEvXaLIPbMPBeawaQmPVSb+y4
 LyteQT0X18POnYi2s9w6MFHa23XvoQ5whyvOhTPCjaE+aBL0knb4l6xNU Q==;
X-CSE-ConnectionGUID: 2EqMP9+8QTK4DIW5rqzbfw==
X-CSE-MsgGUID: QnUxWu4RTW61BSrQXSrgZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="45943250"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="45943250"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 06:20:57 -0800
X-CSE-ConnectionGUID: iSktzDVwQtKFqmdm4/gAwQ==
X-CSE-MsgGUID: 7nuuPTQXRti1xqpfpWAniw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="123505649"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2025 06:20:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Mar 2025 06:20:55 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 4 Mar 2025 06:20:55 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Mar 2025 06:20:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=q1dkv+uQKZzffZNZfdR1/xaHliQDpRRe+/bAy0xIbPGGqdICkQKdQRCtUZg8k9Q9FXmNIKiHuSeg3UTd+ish5AAWC1tOiha6z9h0xWUYyTBuySQ0fBxzXQrkvmnlTv6iv9SKcCntNj3ymAb6ttfo7zAgINktYglXTd1VrENGBJAu8c8lnyeaw2EJ84CEJoo8N325dRFQGPIn37oW7IQaTZoKIQjh9c3ZrqUP59KGxW1XUISUPuMlj1MGIoKWxGoW6+4wPrsc5qVyOItjCJK+JjtDihvXmwVPvS463LbnHfrPL16YvTXHm48t9tPwQg+ou71ScrTwB6alUJVR5VKjNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2MQFYZpFXPCKdBXNPoWV6WpSIm05a+zeZafF7HBjYWg=;
 b=mT0fYIhBBGLgC0pPT/9S/cbJklgHfSopkvfW/WsBtUAregTTcs0UXT8ZyVoaefWqo8odnq9rShHfX2mPGSGmkyqOhV66Pmax1WF2FtGRBdg4fDVeLd3Hq/oDw0x6wEoIBodKdHtyWVfn8Ee8uT8tyxSIyeqM92uXr4m4QA4fkFD1Vx7vfgw5FcHIynuoznoL1CyDAbQR7JUbmuQA8USlMcCw57U1RgZgF48K4sF95qA1CEiOGVFoq/CYr0MuPl56MOJG5sCOd49aK+WKnfbuopYKghsT7FSpwKhzNxN9pEV27ywK5JZDrQTbBBjC31V1897VbmRUjsiAKzIKwLL02Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by IA0PR11MB7864.namprd11.prod.outlook.com (2603:10b6:208:3df::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Tue, 4 Mar
 2025 14:20:53 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8511.015; Tue, 4 Mar 2025
 14:20:52 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 13/19] drm/i915: Skip some bw_state readout on pre-icl
Thread-Topic: [PATCH 13/19] drm/i915: Skip some bw_state readout on pre-icl
Thread-Index: AQHbgkwpwRHZcbvC40i0iceM/TWArbNjHKkA
Date: Tue, 4 Mar 2025 14:20:51 +0000
Message-ID: <618b5e24c97ac1ad2856245c6c995939af4b591c.camel@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20250218211913.27867-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|IA0PR11MB7864:EE_
x-ms-office365-filtering-correlation-id: b4806043-f9bb-489a-73e0-08dd5b27c4ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QUxvWi93MURMcDRqK1pXMWp0T0VXNlZYdFBRSlVxTkk2TThoelJRMUN0NGVy?=
 =?utf-8?B?Wjh5UEZwZ0NOQ1Y4VHM5azFwOS9kTURrOHlYaUpYWk9NeldLYXpjZy9CeE1S?=
 =?utf-8?B?dVpYMUJLYnUvV2l2Y2dQQVArR2EybnRtQnlmTmdsWUZPdnVxN0d5OGlKNFZ5?=
 =?utf-8?B?ckIyQlc4QUhZQllGQ1BXcWd4NFNSaUJFNG9vZE1ma0Y5RjFjMzdTa1ZnZ1Iy?=
 =?utf-8?B?RzJyWXhwNW1SRG4yOFN3QkhFQ1ZqeU5OZ1VNVnk5bDI3d1FoaVViV3Z0bzZa?=
 =?utf-8?B?M014cnlHazFDdjdJWWpTSUVPakMvWGZYSU14VGZSYTJTdUhUKzdINzBRQkoz?=
 =?utf-8?B?TnpZODhGM21iOFFqQzFDaGlpblFvZ2g4Y0RnSDVzSHJTLzV0by9DeXJDaFFo?=
 =?utf-8?B?eHhxWlp1bDhsdnMrZDBxTWlYNE5DR01kV3F6R0s3NENzS2NRQUxnYlArVUJj?=
 =?utf-8?B?V01EQ29CUDFYTng4aHYyQzJ4QkNIVEN2dW1GUDhISURYc0h3RkdhWG1jemhC?=
 =?utf-8?B?Z2JLRGY0Nkd2dFRrZ0lLU0k3aW10aHh3bXNheUNPbnRKQ0lKbmV0N0FiVmhQ?=
 =?utf-8?B?dGIrcktnbDN3VXVZZzZWSmRaeS8xbEdYYlg4TmJnYjhpbHVsdU1LdmxEZHNh?=
 =?utf-8?B?bVpsc2c1RmRaSDJ3RWV4V0dVVTk2VEtjUUhqL1JxWnl2SVp0d0FXVWZIWGJZ?=
 =?utf-8?B?NTdJaVFqR3hkUjFuSFhhbUJiYlh5UU1FL256aGR4dzVUV29pSmNGTDdWVkN2?=
 =?utf-8?B?blhGcUloVEdwdVBKNkU3cERSKzhQZlYrVWswSkVUcE93R01Lb1BLbEsydHF5?=
 =?utf-8?B?d2xEZU9KMEJHSU81VExYU1ZzakQ2R2Frc1l1aEY0bXRnbmpTeDF4cVlOazUv?=
 =?utf-8?B?cEZESHpyUEo3b3Q1MzhaNVZYL1hSQWJlU2wwa1hCWEVGK0ZKSVdFanU2RmZB?=
 =?utf-8?B?KytNNkszNEd5cWg2cXRuL3pwRnUvemtMNXNWaFR5VUxtSklKVWUzOStocTBy?=
 =?utf-8?B?Q3VIN2dSOTdHQ0QxeEZmeS9wTTEvOCtsTHFqTmpVK1czSHhGTDl6NVR4NkRk?=
 =?utf-8?B?Mmt5dWlrQ0hLVlQ5Z2VzOXRrMG1TaFRQWVN6MERNZUJWdi9wWTgzajAzTmVn?=
 =?utf-8?B?NXVLNlk4anZiQ1Npa1dtMEJDdDNsRVdlaVJkUEJWV3BQdlNKRUhzREp4dXk0?=
 =?utf-8?B?S3VaeHhVbGMxTjFFbTFqMlNOR2YzSHlJQ2hkSWJHQXp1cFFQc2dDb3RJdUhk?=
 =?utf-8?B?aG1zVTNickRQcVhKMTM2eFNKTStveFdlR1VuRjNqY1JVVkpmZmZ2Ni9jTENJ?=
 =?utf-8?B?emRWV2RMRDJMV0s5OTkyNjJObUNsRjZ6Z0dMWWVJaXhtR3hBRDhhZ2hmcnVp?=
 =?utf-8?B?QzU3VENHUDlPbHBBOTdPQWRRbExvdG9QSEUvQjRrZWNtdW0xSURwL1pVekJn?=
 =?utf-8?B?RExQUWlwcWp6MnBnZDg0bUFBWTlHODBXOXNPbm54Vytyby9NL3FZSi9BdlpN?=
 =?utf-8?B?bzZMd2VUR2wydFhOdjBTUnZ5NzBNOGU2R1dCTkQzK3NKRGlBdGpCaTJjeGg3?=
 =?utf-8?B?ejFTRXVVdE1DcmU2U0x1SExKc1g0RXlnaVh3Ym5xMmxpa0JMM05MOWJpV095?=
 =?utf-8?B?eEdpZDZ6MEpzYXc4dkRtK2VvdVRVMUJDSHYwZ04yZXZhcFpEakVyTWFzYU8x?=
 =?utf-8?B?b2dqTlBEQytKUlFBZGlYVHR3MHNBcVRLZDFUKy9CT0FZdEFnQXpHSDBhZnoz?=
 =?utf-8?B?dzFMS3JVVTVWUGphN29hcmM5dnc1R3h2VkNJVzdoTjRUcVZHMnpNcFkwQWtF?=
 =?utf-8?B?ei9OWHFxR2hXK0JCWHhMRUc2bS9ZcFVPRDI1Mk9YenJYTGJpRjJvdnQ2REZU?=
 =?utf-8?B?a3pqOFJZTnpqTjVQSlFmNVFWdFc0eHF1UVdDOTlRVWw5QWVNbEdOd1VrMHJY?=
 =?utf-8?Q?Tkt1V3FLQOW1AOZWn5gxZ80i1hsgx9mN?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cjhhdHZ6MU5JVEtGaklFMkN2OGJkZDJmbStTOUtpbXN5VU9YeGdCL2lqWFhl?=
 =?utf-8?B?eDRkcjA2ZDR3MGZNZ2xrQllGWlNjRG5LWkFEWmZHNWJhUzhZYURrUFpMSGI3?=
 =?utf-8?B?OGJLMkRKUldVUFcxQ0ZTdXFsWmljYkNidytGM0RsWWdTSHpxM2FDS2IvcnZG?=
 =?utf-8?B?eWozYUZtUXBhTGZ1Q29xbEJ2MGtJenRmMlp6TVlQRVRDK0lVZTY5UDk4TWtv?=
 =?utf-8?B?Q0U3Ymg5ZmQ0ZC9rVlZHWlNPZFlWTkRwNTRRL0RYd0tsZFE5Z2JGQU1jeWto?=
 =?utf-8?B?ZzRBZEZ6MWpld3JWbzhzSFVoblozV2tybmlHSnI1L0xEc0JFdGFLMkZtYjBP?=
 =?utf-8?B?eU9OeWtBYWlyQlpIcWF2ZFlZTXg1QkJTZzh0VjJXVHVuMFp1cVdVZTArM2pp?=
 =?utf-8?B?ZWNSZEdwTk5XSkFKZE12QkIxMzg1NG4vQXh5b3J6VlRrZ1ZLTmtqbjhYS3Rk?=
 =?utf-8?B?VFJSRkJHSXc4MDQ4UWhtazB6bzQrbnY4RnhmcFlNNlhQcm9RMm5Pbk9qbU5z?=
 =?utf-8?B?dGJ4MENIL25vYnZsYk8xVTMvN2wzdVk2cXJ6dUhwYlRSdUtNaXJOakNNZzVj?=
 =?utf-8?B?M2pEeFR4SWkzRUNzUHFYaWw3dXZtRGF4UnUxNmx1RE1EZUJCZWQ3c2R1d3Nl?=
 =?utf-8?B?ajAzT2p6blFtRHZrUVV2aVdBdjQwcmlXbnpaOVcwTTNRMGUxd3p2MFdCbE1v?=
 =?utf-8?B?R2Zma3IvTTNkOUpyVGlWQ0xlSE4ydER0c3M5MWNyZlZjVzNhZ2s1T3hpMjVV?=
 =?utf-8?B?aXo3dGtvSWdkZzAyR1VmM2Z5ZzNnckh6K1FOUExHRmFvK2pQK0Nna0pxOVR6?=
 =?utf-8?B?NDFwUWs2ajArRmg5S3l1K1V1aHlqVHNQeTdxeHlDdDNLUTVIQVBieGZQSmV6?=
 =?utf-8?B?OTJrZnlaYUVMMGxQOWsrUUN2QkVoOThSN210eUk5U3B6cDRFNG54S3BiN0RY?=
 =?utf-8?B?OVhEQ1c4MitXL1o4d3QrMC96WHZjLy9UVFJUb0FHampyeGlHVTlpaGxGa01W?=
 =?utf-8?B?S1pXUmpnSExGVmlreENYVElFMUNWWnR1OEhxYWtVdjJONmVOdGpsTXZKMnZL?=
 =?utf-8?B?NmcySUVlcTd6UXlHSFVFaU1ab2t0a1QrU1Q2Ni80eDBnTldiZEs0R01RdVBS?=
 =?utf-8?B?TFQ4V2lWSGVHVmp3WW03UTJqTmtEeVpPUTVXSE5ObWZuOVpUZXh6SXhBTWor?=
 =?utf-8?B?NDFGTllPSHNHSERCN2RhZmZGdElVZEltQ2gyUW5DY2wvNW13S3dJd1RCczdh?=
 =?utf-8?B?Skpid2M3MjdaVXhUT0pyZ0JJMDdXRnNIa1NVWWlIbnBENi9VeVg4R3pEWVpV?=
 =?utf-8?B?VjJRMVJLWUk3NUwvWklWaldrd1FwOGpEaWhuMXNnSko3aUw2VUtvaHZsc1Uv?=
 =?utf-8?B?VGx1eXMzSWdpS3AvS3p3Q2NhQS9NZy90allickV6VjdYVWhTK3N1a2x2UlRG?=
 =?utf-8?B?TUZBZU44YThaM2ROY0l5QXo4SElTQ3p3WWIzUERoWURYbWdFaUxtbU1Sbkkz?=
 =?utf-8?B?N01kc2hmTVUvc3QyQUpyWklYLy9nM1RRcFIwYUtDeEw0cUg3d1lNZjdxb0U0?=
 =?utf-8?B?dlZqbC9hOHFKdnNZTEhVd29YcHhEUnFoNDZQS1RLd2VPdTdZU3F0alozbFUy?=
 =?utf-8?B?S3JGdG9tNFVuWXZmVkFJTTRXUk1jR1NBbStvL1dHZTFaaUU0b2E5Q0trTG04?=
 =?utf-8?B?VEQzN3A4N0Nvby82VGtDVzc5MnAzNzMySGxKdGt5NlBCYU41dzNYQ0RXNnZX?=
 =?utf-8?B?UlgxTWJTTWQ5MnExWmlNMzZpNjMwR2dKTWhGaC9paXlubjY2UmhURVNZczFT?=
 =?utf-8?B?S3pwU2RNZE5mdE9PdGN6ZFlsTnFsalpBZjRUZnEzSklVY3VxNjdiSlhWTlhS?=
 =?utf-8?B?dWdxVXV0RGQvY2RVNDdxd0I1Q2s5dXVibUEvbTZRWHFxb1B5cmZGNFZzUEtU?=
 =?utf-8?B?WHFTMWFTYjZZczltU1pUTUtvY2JqbWVYazBacE5iR0QraGxJckZNb1ZhbnMr?=
 =?utf-8?B?Umt0NU9QVElvZG1yNWtSY212Y2I2cXBkTjhsY0k3L1E5V3cxSkdFb2V0Q2hM?=
 =?utf-8?B?Z2NHNmhSdk0rakJ1aCtTSEJPb1lSLy9oYjVjd3BpZy9LZFNKay9TZFpaa0Jy?=
 =?utf-8?B?amY2K3kvcTZtQ2JWczI5bDR5c1J6NEhjSnNxa2tZcTAzb251T2EvWnM3KzRq?=
 =?utf-8?Q?9dNMmtdii9vNHqvVQmjJgSQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CF06C6F358563E449D320C0096C470DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4806043-f9bb-489a-73e0-08dd5b27c4ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Mar 2025 14:20:51.9985 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hel3uz45rEbthpbZka/xzgRA6UF/wCHEHvOdipohJZ6OmPaNlmXM+VGqhEEtfB6G0VTWfz90Nh1EXgbXpVgPvdsb1rHuLShqx1NkuXXsPPM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7864
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

T24gVHVlLCAyMDI1LTAyLTE4IGF0IDIzOjE5ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gV2Ugb25seSBjb21wdXRlIGJ3X3N0YXRlLT5kYXRhX3JhdGUgYW5kIGJ3X3N0YXRlLT5u
dW1fYWN0aXZlX3BsYW5lcw0KPiBvbiBpY2wrLiBEbyB0aGUgc2FtZSBkdXJpbmcgcmVhZG91dCBz
byB0aGF0IHdlIGRvbid0IGxlYXZlIHJhbmRvbQ0KPiBqdW5rIGluc2lkZSB0aGUgc3RhdGUuDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2J3LmMgfCAxMSArKysrKysrLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDQgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9idy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9idy5jDQo+IGluZGV4IDMwZTZmMzNkNmYzMC4uMmE2NjliODUzNWUwIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+IEBAIC04MDksMTMgKzgwOSwxNiBA
QCBzdGF0aWMgaW50IGludGVsX2J3X2NydGNfbWluX2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ICpjcnRjX3N0YXRlKQ0KPiDCoHN0YXRpYyB2b2lkIGludGVsX2J3X2NydGNf
dXBkYXRlKHN0cnVjdCBpbnRlbF9id19zdGF0ZSAqYndfc3RhdGUsDQo+IMKgCQkJCSBjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gwqB7DQo+ICsJc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGNfc3RhdGUpOw0KPiDC
oAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsNCj4gwqAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNy
dGMtPmJhc2UuZGV2KTsNCj4gwqANCj4gLQlid19zdGF0ZS0+ZGF0YV9yYXRlW2NydGMtPnBpcGVd
ID0NCj4gLQkJaW50ZWxfYndfY3J0Y19kYXRhX3JhdGUoY3J0Y19zdGF0ZSk7DQo+IC0JYndfc3Rh
dGUtPm51bV9hY3RpdmVfcGxhbmVzW2NydGMtPnBpcGVdID0NCj4gLQkJaW50ZWxfYndfY3J0Y19u
dW1fYWN0aXZlX3BsYW5lcyhjcnRjX3N0YXRlKTsNCj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxh
eSkgPj0gMTEpIHsNCj4gKwkJYndfc3RhdGUtPmRhdGFfcmF0ZVtjcnRjLT5waXBlXSA9DQo+ICsJ
CQlpbnRlbF9id19jcnRjX2RhdGFfcmF0ZShjcnRjX3N0YXRlKTsNCj4gKwkJYndfc3RhdGUtPm51
bV9hY3RpdmVfcGxhbmVzW2NydGMtPnBpcGVdID0NCj4gKwkJCWludGVsX2J3X2NydGNfbnVtX2Fj
dGl2ZV9wbGFuZXMoY3J0Y19zdGF0ZSk7DQo+ICsJfQ0KPiDCoAlid19zdGF0ZS0+Zm9yY2VfY2hl
Y2tfcWd2ID0gdHJ1ZTsNCg0KVGhpcyBmb3JjZV9jaGVja19xZ3YgY2FuIGJlIHdpdGhpbiB0aGUg
ZGlzcGxheSA+PSAxMSBhcyB3ZWxsLg0KDQpBbHNvIGRvZXMgdGhlIGJlbG93IGRlYnVnIG1lc3Nh
Z2UgbmVlZCBhIHR3ZWFrIHRvbyB0byBleHBsYWluIHdoeSB0aG9zZSB3aWxsIGJlIDAgaW4gZGlz
cGxheSA8IDExPw0KT3IgY2FsbCB0aGlzIGludGVsX2J3X2NydGNfdXBkYXRlKCkgb25seSBmb3Ig
ZGlzcGxheSA+PSAxMSA/DQoNCldpdGggdGhvc2Ugc29ydGVkIG91dCwNCg0KUmV2aWV3ZWQtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQoN
Cj4gwqANCj4gwqAJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgInBpcGUgJWMgZGF0YSByYXRlICV1
IG51bSBhY3RpdmUgcGxhbmVzICV1XG4iLA0KDQo=
