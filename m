Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A1F0A132F5
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 07:11:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B54510E554;
	Thu, 16 Jan 2025 06:11:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dVb8nDAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4122E10E554;
 Thu, 16 Jan 2025 06:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737007862; x=1768543862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W7bI9ymDTBXAM7E6ms5e7zSwbrx/23UGM8d54R6koIg=;
 b=dVb8nDAJ1kbUXAHkkHPI3v3mFRQguFYSjHo4PlI9tAXvHWH9wWcCwAGy
 mPgku21Kfu52XLoZVr3mtVFlw4BORDxifo7GACdBQKdgQkxtK+XXGvbHX
 6bvymHKdfzLsta3F0WD0Pw7UdLbex4lDmL2gHIGF/0R+O11g5rukH5ONG
 WaKDJtQR3psowtLL+yV43orogQTocCnhZwRWNBOgygMPlrU9f7pQkAkv2
 xNai7/l5oHIMrPz3bbgU9FFK3NCL8a3GlMaym9NEEwfE/AJHogQhw2rKl
 s6ROvDT+K9iMLiTDZXxEPgLMO0EZj8GhcVpGkBn0j5uz+cfR58LeeTqaK A==;
X-CSE-ConnectionGUID: cbKKbso7S9iUzeDm/A+wug==
X-CSE-MsgGUID: I/YcKe9yQzye5omi69g9Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37406466"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37406466"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 22:10:59 -0800
X-CSE-ConnectionGUID: UNJNxOYrT1WhrZKU+TR02A==
X-CSE-MsgGUID: 7eHi7wmFQJqJyx/B31OdNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105538969"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 22:10:57 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 22:10:57 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 22:10:57 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 22:10:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f8Ebkgon/laBgJXU+zEcfvtEJPSZsH4iaHvcpd9SLG97OcIlm4pWZnDZGRK5KxbBtbWhmYpuH0VlvpZE7R5qyqUXk1HLLo+0G2/6I5rCl3upiMVU5clSCTXn/TnZoQA/QiJL/5MKDdbzPn/o8JO6pbo7p76umAId+Y+fKzbhEFJTaTooacsI35gDsRIB7fVGoimdbxLGE+NH+2iBa4lEGHvCM4gVFi6VBVYRInOHsCjxDKnPSRBTSomT2couJgyYeI/XVAACWjcgzNJety+SELxKoklH2x2teNTLO01BGkLofBKgZVA580VoBp7UgJLq0/mKzuqMoWkVugtz1um+uA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7bI9ymDTBXAM7E6ms5e7zSwbrx/23UGM8d54R6koIg=;
 b=U5GP/5i36/kqZZHtCYLp64CNZOXPBX52mIlRRFWn9A6y+ZrhYo32w484XxucXf5z7Y2STYcBPxXUEC4D0/d7pAyKaeHkG3Ru138a7qPTOgvMCB00RnHdIbgUTVIMic1stvyXESACt2QR9D0bLa+0Yf7EvAH7RLzXKRbuxddtrBDqM6VB62Pi5S+i488IdlO0i3bFdTZbIXYLmYLENzBpXeKE2dsbVfGRVWtf2cCKxPQFjy6KH78abZS884i1A+Q6mxaMqFIc+7Nn43cCxq7v1Ai9HIdH3QuH8uIUenLVV/G64To5JqLKLyee4ZFsZLHPeL//bQiBc5j2VQgQgs7X+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 PH0PR11MB5830.namprd11.prod.outlook.com (2603:10b6:510:129::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Thu, 16 Jan
 2025 06:10:26 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 06:10:26 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v3 07/10] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Thread-Topic: [PATCH v3 07/10] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Thread-Index: AQHbYmimEAA3TmC6uESnvPx8QgYBsbMY9aMw
Date: Thu, 16 Jan 2025 06:10:26 +0000
Message-ID: <DS7PR11MB59906EE8EA784B5610F8D990F91A2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-8-jouni.hogander@intel.com>
In-Reply-To: <20250109073137.1977494-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|PH0PR11MB5830:EE_
x-ms-office365-filtering-correlation-id: 38922c26-af0b-42fb-b9d3-08dd35f478a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YjhoaE03ZXVqTEF6Q3lEZTFBZGlCVjdjOS9hK0dUclpCL2daa0M1VUNOa3A1?=
 =?utf-8?B?WTBsYWVCdFEwQlp4TG1mZVhkQ0grVGRJR05WQjNnbWpEQ3QwRWJINENycVo4?=
 =?utf-8?B?dXMrQXN1anlPNXRMSTAzTGtkTGxrUzg5ZURSbzFXSTlpaVNEN25ScXI2Yllo?=
 =?utf-8?B?WDNMYi9VUUcralRQMlRhaDVzSXJ3TnRnZkVLN2ZBZHZHdmZPdDJTeXVXMEtZ?=
 =?utf-8?B?bGlxKzE1ZVZ0MlovcUZXODRxaThkNjBJa1pSUWRCemZVL3Bjb0dncy9ZSys1?=
 =?utf-8?B?QnV0aS9TazViMXI3M05pdDY5SVd3aDJBMEJkOTRJcW1sSXFENUtQTHpYRi9i?=
 =?utf-8?B?SnRPVW9vVHlTdjZhdWNiTGJCT1d6QzJnbFB1OW5xUFlZNmtWdmsxTi8xVlpS?=
 =?utf-8?B?NTRPaWl5S205RlJjcTZsbG51eHVGek53MDZ1ZXJEZUdTNE1YcGJoNUdNejBr?=
 =?utf-8?B?WXhYa3AwbUVYQmlzVUV5ZEthTTZLQWltcllCeVRKcGpCUEh0QzExL2FFRy9a?=
 =?utf-8?B?VFp0dU9TK1oyUFovbm1xamVDNmVSMWhIZHVuMk5VLytZMnpPTnJpZDdsUGZK?=
 =?utf-8?B?bkMwU01wbStOQUJGVFhlS3JTRytkYmVPc2hkMmdSMDNQTUlFVnpSc05ITW41?=
 =?utf-8?B?U1NxUWZzbFZZOE1KUnQ4MlBoOXZPaXRZVUV3RndLaDFHc2xvSjNZcExUU1Fp?=
 =?utf-8?B?ZkNLNUpOVnB0Uk9OaUVNa3VZUk1PU29BTmpNS1Z2RXlNbncya1p5aFJYVUtn?=
 =?utf-8?B?WDdzWC9JYjF0OW8zeHhRbUFnOGgzOURNcVU4MHQ2UkxtNWhBSkh0RVJOclhT?=
 =?utf-8?B?eThIY0hOTFlIL00zY25WUHFwVUJBZzFPajB2VkdvdkI4ZVFQTHNrY0RCODh3?=
 =?utf-8?B?RFZVR0c0M3Y2OFFaZlg1aGJCajFFRVNNdDhSQjFqTU5pNS9lOGVlMjBObXov?=
 =?utf-8?B?MVpoQzIwUDVMWlorbDFySVdGb2dSSW1mSUo3Qm1TMlRoS0FGSGNDcHRZRWZC?=
 =?utf-8?B?TnhocEYzRTJtckRZaEdYa3hFS3Ayd3kyVjZ4Y0JyNlBCYVhEK0lvTzVyK2dG?=
 =?utf-8?B?ZnFCc0ZlTDJaWnRKZ1F3ZkZ4SU0xZklWZnpPSEIraU1CaC9ycVF6NzdjS09J?=
 =?utf-8?B?b3BCU3BGVG9DYjJvZ2tNa0ZHRzdEWktHM0VSUnBuaVBuRUVtTFBpUTQ5ZlQy?=
 =?utf-8?B?Ym5wNCswb29vYm1TSDlwUW9VVnAvYXJVUEdSRm1ENXpGTFhnS3ptK0RwWXc5?=
 =?utf-8?B?TlhLcHVSUDcxOEEvUmQzNVhlSjNUVDRZQ3lCYXc2bTVlMDF4Q1dMZTRFY1Bi?=
 =?utf-8?B?SThPMDY5WGp0cmhwT3Q2RE85MHFoOWlQMUFLMEZ0YVJEL1lsbU1mcVRtQWM4?=
 =?utf-8?B?SVlaOUZPM21LaVVaZUZzR3pHOVhKRGFObGgyOVdsNUExTUNCbHNMOEtiT2VX?=
 =?utf-8?B?Ky9wMHBta3VCbTUvcDhVcVlnK1NqbU04VzBubDg4NnYyUzcxcjdVUXZqa0NO?=
 =?utf-8?B?WTR4cTAxd0hzVVNmQTBOaWIvQndmMlR0emZvZDJYZXlvY2k5aGtreURWN0wy?=
 =?utf-8?B?OHI2MnFlS1g0dXV6MktZeXJ1dkFYVjRCZmhscHNBZC9aYnhWaFZnMURBTTRa?=
 =?utf-8?B?MkhGa2p1TlNUQUdPVXRlTFNoVnZYajFrMWxSU0hVU3gzaTVNMnJ3QzFGNS9Y?=
 =?utf-8?B?cjR3bDFLMkV2UVF2WEQ4NHlqbE1hMnNiZVlvRDByYWl6MTYyQk02WTFGeWs2?=
 =?utf-8?B?TDhMb1pFbmk1YmQwRlRSSXc5MUFQNW41QUxPb3dONVNjVjFXKytnUCtDNUto?=
 =?utf-8?B?TzFoVldkY0JLK3gyMlAycUtFRTJOVDZtenF2ZDBhbit4Y1JwaEQxM1hPNUdY?=
 =?utf-8?B?WlE0T0ZFcnMyM29CeWJRcUhYeUtFZWY0UXN3TWFZNGlSbVJhT1pJNVkvc1hI?=
 =?utf-8?Q?XkpTWMsfdMe2JqBqGwY17ssTTMS3jQZ2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a3grYkw3Q0R0cTVLVXVPZ3QycU5oRm9Ic3V5UytIZFlZRUNlazdzS1AvRjNi?=
 =?utf-8?B?bjQ1dzBESmVmYUdYR0plNGdUSWFzNjRyVTRGZDlsZzVLamYvbDFQVGN6NEtO?=
 =?utf-8?B?SitFV3BNdHMyOGlBcURHVzN4dG9WOE1WK2FvV3E3Z0cvSXpuY096OHlFMytx?=
 =?utf-8?B?RjhHeHNPbWZsak5BbGwxdndZZHU0eHlzM2NtcUE0b2x2Q1JnTzBTWDJPM3FP?=
 =?utf-8?B?VVF5QjZ1ZFVZWVQrb2t3c2EwY1l2YkFleVRjNEZnL2lrVjVhdTB0K1Y4MS9G?=
 =?utf-8?B?VUlFcHJ3ZDFTdUJYMlU5Skl3U0dmaHF0Mnd4Sml5WDAyTGhMQkdlZFNNRTFl?=
 =?utf-8?B?MWprMjZDUlUzUE83ZWNDM3o2VTJuRGtDL0YvTjA1NjlzZ092aGV3MlFwZUhm?=
 =?utf-8?B?WWw3S3ptTXVKd0JsYWdDVmlwcWg5VmFyUzdPRjBVMENHck5OZE1jM2dETVRv?=
 =?utf-8?B?SWpFZkQvMFVJQ3gzdENTajE4ODNZcnFLK1ZsQXpvbUJzU0h3WDcrdXV1dXM0?=
 =?utf-8?B?d291UnVEaE43TGVvOGZnUW1tWHo0T2ZXdTZPbVFRY21WSUJ2VUlCblh3cTEr?=
 =?utf-8?B?NU9XNmtnOU13Nmp4TFFLWWVTNXlTcmN2VlNucElsS0ptUXM0NFJUdEpqcDZR?=
 =?utf-8?B?eURuYUUzdElqN0V3NVd4cDhUNGNMNTRZMHhycVJoMUpHUFBSQmlrM08ya0N3?=
 =?utf-8?B?ZE1QVHZBK1pvMEJEVDVBN09KL1ZRYlJHTzc5VWFUeG1JU1B1MW9YejRoU0Yx?=
 =?utf-8?B?cGNwejZTenN1eWxkVDJIQTB4elFxZFBmUFdvOERxU0lkMWdSUTRWZnV4OHF6?=
 =?utf-8?B?dUxjZ3BZNTVMQnptUUxTME5KVTZBSStqeXdOZzNBaHptOU5ZR2ZxUnVIL01B?=
 =?utf-8?B?b2ZYRnFjeERTWDlqMDZCMjJ2a2dqbm1TOUNLSjA0TUdvdExLcFdXc0kxTlIr?=
 =?utf-8?B?TFdmRzlQV0ltZjFVOUFQVnVHUVNobVJPS1pEbHBwUjJ2eEFXa1AxQklyNDB6?=
 =?utf-8?B?emdVcEp4VnpZWXAwYW9ZSUZzakNVUTVCK0JKT1M0Uk1semxoNUF1RVpRdkNZ?=
 =?utf-8?B?b3hDZEtEOVNJOElCS0VCVUZjZXdYZEpOY0pnQnpkajFueTFVRERBNVdsL21m?=
 =?utf-8?B?VjNsMm15RmVLL1I5ZVFVdTBHRiszb1AwbDFQcHVSVDZTZzZZM2MxUmhxVm5z?=
 =?utf-8?B?Q3ZocnA5Tmd6T1F3RXNteDh0c25WL3F3UlI0aSszdThtRHhvL09IR0JrMTA5?=
 =?utf-8?B?MVZoNGh2TXl2OXVJUi9kQmZpZHZLc0xCeUFGcVpjMmJneWhEQWJwWTdZM0or?=
 =?utf-8?B?Qms3WVlaMEJtenlVTnd1Uk5wdTA0clNIOFhjM2hDL3RCYW9oUkNWVEcxRXZV?=
 =?utf-8?B?VkJ0MllGZE5CYXVTSkQ0SmxTN2YrTmsvSWxPWXpRMWU5d01pTVVHa0duanBJ?=
 =?utf-8?B?bEo3TC9pdEtacktpQkU3TzlxazNWQUtIbWNaT05pZzVTYjdpbHNIc0FBODEw?=
 =?utf-8?B?WmJrUVZLT2MyTTJUSHpQVmRxMkRLV1BEeXA1aVFSZGVaWmg4dUF1b2o1WDRC?=
 =?utf-8?B?aU5ROHBGNG40MmE5YzIvWmhtZGxDZGN2dkMrRExac2lsZCtzT0lCMlNVckVl?=
 =?utf-8?B?MlUrQjNWTDlBdnBKOHhCQ3pKZFlqa28vWlNack9JTXhXUkJIUXkyTzBmWmN5?=
 =?utf-8?B?YU41YUlQdklxdVk4MTlmUUhPR1JoQkoraENmZTV2em1Lb1l6WTR0MGwzY0FS?=
 =?utf-8?B?NzN3WHdmZlJLT0pPeUllTmIyZVU5Q1BMS1l1S3dXYWtkTGlCS1lsamdLT3Fa?=
 =?utf-8?B?RFhxS0FDcXZCOHR5bG5jalY0eDB6THJTWGM4d01CTnFrUk1KTHVoMnRRL0hN?=
 =?utf-8?B?aGg5ekt0c0FzWHlGK2tOUkx6RzliOUdEemtMWWhyZEF3OGlSYnJFYmFmTmp0?=
 =?utf-8?B?NHFEc0xGOTZ2ME9Ka2FyNnd1Zi9XU09wR2pXdGdWN1pEcjMwN2NVS3JyYXRj?=
 =?utf-8?B?eTF2RDhDajJ5Njd3aE10V01kZVhWQXJhMU05czl0WCtBYnM5MWFZK3ZTUVZF?=
 =?utf-8?B?eFlpNGJuWjI3eTBpL0NtRkRVNHh2T3hEcm5hUXY0TVpwOHNQbmwzcTUrQ1Rl?=
 =?utf-8?Q?2RsonxHkF5baOwVORilzlDjel?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38922c26-af0b-42fb-b9d3-08dd35f478a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 06:10:26.8718 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6y36CHO9jEW8aWwpZTfDp+cgmJFpdiLq/wwdt7zvmyrRb/PteMcXy2rkV67Noh17is/0s6FfNr/p6PgU5OwChA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5830
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgSm91bmkNCj4g
SMO2Z2FuZGVyDQo+IFNlbnQ6IFRodXJzZGF5LCBKYW51YXJ5IDksIDIwMjUgMTowMiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnDQo+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDA3LzEwXSBkcm0vaTkxNS9wc3I6IENoYW5nZXMgZm9y
IFBTUjJfTUFOX1RSS19DVEwNCj4gaGFuZGxpbmcgd2hlbiBEU0IgaXMgaW4gdXNlDQo+IA0KPiBE
byBuZWVkZWQgY2hhbmdlcyB0byBoYW5kbGUgUFNSMl9NQU5fVFJLX0NUTCBjb3JyZWN0bHkgd2hl
biBEU0IgaXMgaW4NCj4gdXNlOg0KPiANCj4gMS4gV3JpdGUgUFNSMl9NQU5fVFJLX0NUTCBpbiBj
b21taXRfcGlwZV9wcmVfcGxhbmVzIG9ubHkgd2hlbiBub3QNCj4gdXNpbmcNCj4gICAgRFNCLg0K
PiAyLiBBZGQgUFNSMl9NQU5fVFJLX0NUTCB3cml0aW5nIGludG8gRFNCIGNvbW1pdCBpbg0KPiAg
ICBpbnRlbF9hdG9taWNfZHNiX2ZpbmlzaC4NCj4gDQo+IFRha2luZyBQU1IgbG9jayBvdmVyIERT
QiBjb21taXQgaXMgbm90IG5lZWRlZCBiZWNhdXNlIFBTUjJfTUFOX1RSS19DVEwNCj4gaXMNCj4g
bm93IHdyaXR0ZW4gb25seSBieSBEU0IuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7Zn
YW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2gg
TWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA1ICsrKystDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNCBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBpbmRleCA1YTUxMDBmMTQ3
YTYuLmQ3NjQ1NGE2OTM5OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTcwODksNyArNzA4OSw4IEBAIHN0YXRpYyB2b2lkIGNv
bW1pdF9waXBlX3ByZV9wbGFuZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCQlpbnRlbF9waXBlX2Zhc3RzZXQob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRl
KTsNCj4gIAl9DQo+IA0KPiAtCWludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChO
VUxMLCBuZXdfY3J0Y19zdGF0ZSk7DQo+ICsJaWYgKCFuZXdfY3J0Y19zdGF0ZS0+dXNlX2RzYikN
Cj4gKwkJaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKE5VTEwsDQo+IG5ld19j
cnRjX3N0YXRlKTsNCj4gDQo+ICAJaW50ZWxfYXRvbWljX3VwZGF0ZV93YXRlcm1hcmtzKHN0YXRl
LCBjcnRjKTsNCj4gIH0NCj4gQEAgLTc2NzgsNiArNzY3OSw4IEBAIHN0YXRpYyB2b2lkIGludGVs
X2F0b21pY19kc2JfZmluaXNoKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiAgCQkJCQkgICAgICAgbmV3X2NydGNfc3RhdGUpOw0KPiAgCQliZHdfc2V0X3BpcGVfbWlzYyhu
ZXdfY3J0Y19zdGF0ZS0+ZHNiX2NvbW1pdCwNCj4gIAkJCQkgIG5ld19jcnRjX3N0YXRlKTsNCj4g
KwkJaW50ZWxfcHNyMl9wcm9ncmFtX3RyYW5zX21hbl90cmtfY3RsKG5ld19jcnRjX3N0YXRlLQ0K
PiA+ZHNiX2NvbW1pdCwNCj4gKwkJCQkJCSAgICAgbmV3X2NydGNfc3RhdGUpOw0KPiAgCQlpbnRl
bF9jcnRjX3BsYW5lc191cGRhdGVfYXJtKG5ld19jcnRjX3N0YXRlLQ0KPiA+ZHNiX2NvbW1pdCwN
Cj4gIAkJCQkJICAgICBzdGF0ZSwgY3J0Yyk7DQo+IA0KPiAtLQ0KPiAyLjQzLjANCg0K
