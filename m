Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBAEBE63DC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 06:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96B110E0A0;
	Fri, 17 Oct 2025 04:00:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KQxRTJ0X";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F4510E0A0;
 Fri, 17 Oct 2025 04:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760673622; x=1792209622;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QF+4onEindg8hkcPevtXRJszk49GYLBgD7eiyyTDcWk=;
 b=KQxRTJ0XThWO8vvbo8L6qMrMd3rXgzqJTeKXI3fSBx9YJE/icc1o0RYR
 LWZvFybeSAmAQ44JCOAaQgBORjwDlqykHwEZubNcXwfuz3jFPiX33rNFi
 6vrJ4IASA7LQezS+UoraOrrifqqyRghDJ/Bx+nBtE7V98OuL/3zsFB86o
 sGRSZGKZcot43eKx3oOBcMPZtSydHjE0l1ltZklS3EI2HoA8zwacxDvPn
 1kCP/+2GgB28jMeqE0LN6btRSueoPUtxuIZ6tq5r5dhJINZek7pEKLVxS
 HxoPgQQQmuZXy57r8icHc6PfD9oPAh244nNDjIaakaSEJ045ZgYgbQJ18 Q==;
X-CSE-ConnectionGUID: HnlkU5QlRCuYHr9i3lOKMQ==
X-CSE-MsgGUID: AILCkxvMT2iQmkVMSFkErg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62781828"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62781828"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 21:00:22 -0700
X-CSE-ConnectionGUID: 2hPixuDpRBeakuYVZaOS9w==
X-CSE-MsgGUID: Gm+Xe64/Q22Fc+iG5PjZfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182433433"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 21:00:22 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 21:00:21 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 16 Oct 2025 21:00:21 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 16 Oct 2025 21:00:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q0eX+SPnU6Z7SC7XAEs6UbnxeAYJ0bwSUf1SiAC7tzBMfiMtMMWDTQM+5+FBi3t/0gcdeSTD2icM/c8RdJXxdgaAWXQFtfJZHpUDWDeya+lfgSRHZgBNIAbpczmZtMn0I9Dny/e1RzvPuZ7FHbpeTumgXJR4i2VsC+Inh0MDbuOE0XBVXXhlqLnvG6MI1saK/jR4964TzR9rn+KaOfYfpvVI0J98l+ogGvaRzked8tGOQU0nc4B3ENn+tJ0K0WF3wdrM9YK0wodHZWYpc6jdtQrnwrC1ekDivJfN7IgdPaqtwunIrWNrVdx0ZFAD4A9FjG2ZiMGB8aOKkvLxM/9THQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QF+4onEindg8hkcPevtXRJszk49GYLBgD7eiyyTDcWk=;
 b=d0QEQ24dbX6/KkB8hZ3mVWRjnxQgCpaVUKkSs1uoGLsai4jTWNzXnB6FnMJ6BMcjbJxRRhawx/thPuOT4hjGCodVJAQJQbWN/O6PDfmLQ90ywuCx+G+tIeCdQbyXAIOMWJzvlsqs51EW49msOLBa41apIekq5WmB56fIZU0938RLUbMfZS4Dni+MjQP/tJLk8EM90has1abGVy2sWjWhqQe1ZxeZs75RZeAx7/pts++txbZOPMOCrtKmKk9QJ8spgVe1rOOaaKZgNMzzY2A7yFShWl/BBT9iw/+oz6RCUd9XOe/kGvzciGy740pv2QDGk58lDPWW1w/zkCEIsVw96A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CO1PR11MB4865.namprd11.prod.outlook.com (2603:10b6:303:9c::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9228.13; Fri, 17 Oct 2025 04:00:19 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 04:00:18 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Topic: [PATCH v2 3/7] drm/i915/dp: Export helper to determine if FEC on
 non-UHBR links is required
Thread-Index: AQHcPfCPOcdmabUN+ka2SLx7q8MpW7TE/8OAgAAGOICAABIPgIAAGz8AgACF7oA=
Date: Fri, 17 Oct 2025 04:00:18 +0000
Message-ID: <412a97c64dd4a16de81c69d281400600ec086611.camel@intel.com>
References: <20251015161934.262108-1-imre.deak@intel.com>
 <20251015161934.262108-4-imre.deak@intel.com>
 <55a897534e3d0ab51ebdbc56a08281e20a30e937.camel@intel.com>
 <aPEo95sLX2TSol7q@ideak-desk>
 <daf90b518850e8daf14a6aeaf173d43287dc5543.camel@intel.com>
 <aPFO-HXGJXSkLjy7@ideak-desk>
In-Reply-To: <aPFO-HXGJXSkLjy7@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CO1PR11MB4865:EE_
x-ms-office365-filtering-correlation-id: 1f3d8760-43da-4265-02d5-08de0d31afee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|10070799003|1800799024|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?ZlB2bjRHWExndC80S2VBdVdpNkhCamJqd0J1NGNEdXRrSDRXM3BuYUMwSEhQ?=
 =?utf-8?B?RjhuOW5lYVdWQlVVTm9NSUZsVmk2dkxjRzFESmg0MUFEbSs3UTNWN0xUemhJ?=
 =?utf-8?B?SzAzOVF0dWtrcUNYM3dPVTJWWUcrVVM5QWNpbmQvMnd6S2FPR2U2N3VzSk5P?=
 =?utf-8?B?bCtpMEJucGJUek9YUmJkSnFoeFVUdDJ5a2NCMlV5ZDZVcDFsaVBmMlZ5WlNH?=
 =?utf-8?B?K0ZZdkpSRHJVZDlDY041TzJpS2xXSWFXSDJCS3orbHR5Y211YndNMllRMisr?=
 =?utf-8?B?UHRlS2pRZWkzcW43QngxUTloa2FWUGN1Qk93VzhJMllOMHQ4OFFqOXBTZ0hU?=
 =?utf-8?B?M0h0a2hHb0N6dXl6WXpzYlNhc3d3c1NSditIaTdTaUNzcitaUWV0bEUrcmlZ?=
 =?utf-8?B?ZzNkQS9ZbHFVUXlLME5JQTBrZjk1aWhsbTRQaXJ4Z1lxZkRxRFVQV2NpR2RH?=
 =?utf-8?B?R2VSc1o1QWtHWlc0RTE3YVpwL3ovSnFhdU10Rk5ybDNLSTVKTkljVWE4M20r?=
 =?utf-8?B?clJqZ1F1SHJzZTB2MGEzb2hIY1VEN0dVL0NybHhUSkpybVVDR0VpVHp5bUN2?=
 =?utf-8?B?ZnI5clJlRFBkL3N2RlFmL3FmcFQvRmRRYmdvWnptWXhWK3drVUJZUjNsUXBj?=
 =?utf-8?B?Z0t2OVlUZDk3cWRveUVEaFdaUThMaitYbXlaY1ZkSldZMWJFdmh0QnJEVXhJ?=
 =?utf-8?B?VTNDbWxqa2VZLzZsNThUT1pzb2lUblFZaTVHSVNsOHBEVXdMUUsxOGw0eTc2?=
 =?utf-8?B?ZlpRdTZaZEM1WUY1R3VqaFBVOXFDRjhsdTJOWnlJSkJYVjlDZU0xTXM5Skh1?=
 =?utf-8?B?WnJJQVZDWEFROTM5ZGx0bUdDNFRBUGdndnJET0JRQ2pIcWpmbzhqNFVPSm4v?=
 =?utf-8?B?TFQrSkVIUSsrL29RSnRKVC9pNHNVK1Q2bHBxekwwS2Z5UUI4UklNVG5ncEEx?=
 =?utf-8?B?OVhraFZSL3hqNE5ERDIzeFBub2tSV0xYNWtvcE5ZNUlKZlc3VUc3SkpUb054?=
 =?utf-8?B?R0dQZjlXS0tqdEs4c2g2YkF6Mmh4czg0dDVMY3pNeDZyby8zRHVIb0h3VGh4?=
 =?utf-8?B?eTAvbzZNWFVXRm0zNFdlVTJlbHM2cVk4NzRXNTZERDhUR3pDaWttZFlwTTVI?=
 =?utf-8?B?UCtlS3ZEZFUzUCtCQWo5am5UZXNSaCtyMjlGUWZ0QWs2SFJHaE1WUFNCa1Mr?=
 =?utf-8?B?N1NNcWtROVhFbmZtRXBOalZucWlXK3pDa0dhYUV5NEhxb1FpQkF6T2VDZ2s4?=
 =?utf-8?B?aUllbitDcGRWRHZUQlhmcEtqNXNtUzlZYzlhYVF3RjcrNEE2MGpMUU9ZQ0lp?=
 =?utf-8?B?Z2tUdXZOWXJJL1BOVWNaeldpWXd2WG10VFNHcllIRkk4ODVRNGNrWU9MOHQ4?=
 =?utf-8?B?OWNYZWk3KyswbndCaDhCeUp2aktqQlhlNFdnbmtVbVZzN0djcy9GM2FFQndI?=
 =?utf-8?B?YmVZYk1ieHRERitNWjIwZEp4SmZ3ZkRmMlM2RHJKNThiMXJlOW51bTVpR09B?=
 =?utf-8?B?RVZhZnV2RlVub3ZEbTNGYUhPWTV6dlNQVDlxMFQ1cTdwU09aWlUwUSt0bXhC?=
 =?utf-8?B?VkluYkFsUUtpbk5XWS9EeC9zallGdVJGZGpBWFJvRGZMUG1PQXAwV2JYbTcz?=
 =?utf-8?B?ZTVBY3RVYzh2S1dsYmxZTzdibVAwRUU1cHkzbE1EdkF3T3JoM0dUZGlUMHFC?=
 =?utf-8?B?S2tMQ1NKazdtNHc2NTRDWVMzTkZmSUdtRGxmQlFRTUt6MEJ6STNKRWM0YVRN?=
 =?utf-8?B?T0IxREx2VkNicnpaVExoYXo1US9VZkgxMjFNWEg3UmRtbStuT1kvL1RuWHox?=
 =?utf-8?B?K1ZJd1czaVRyQXBFWURBd1RpVm1GQ2NDWERmNWRxaElGWkg4V292RCtRQm8x?=
 =?utf-8?B?R1pBYXhmTUJPeWpuY2xlZE8rdlE4TFMra1J0VGZXQ0RraHdUUHNFYXAxWS9l?=
 =?utf-8?B?Zjl1eVNDMWEwOWJvSzJPRWc0UFlKTDFtMTM2MlhFSElwbHd3MkM2SlNGSVJz?=
 =?utf-8?B?Q0hSYmd3dUY0U3F3UkIvY25kNHRua1NyTnZYSEN1MXQyT3QwVGNYTFdKaE9m?=
 =?utf-8?Q?CYDKo5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFFIeCtxSUZPUTFoL0pQVGN5ajNBT251Q1dJMlIwcXIxMHBoeFJ2UGdGNXFy?=
 =?utf-8?B?VzYzaTkvVFRNOTF0MlhvRTZOZk5VVG1nSG9OYWt0a0RkRFdTRmdjSE9oVUJ5?=
 =?utf-8?B?MlFUVUQwblNFRW9DaDF6dnFTWExCUnR3VDE0d2hDVklrc0puWDZwQlp0MWha?=
 =?utf-8?B?eXNldW5jVkg2Y3Fwdll6WnhiQW1mUjl2dzBqSDVwcHpRZFoyRTBtcllTc3F5?=
 =?utf-8?B?cmFRMFpNN1p1cUllR2wzL016ZmRLRjJERE5ZSjNVb1cvV2tyYTA4RFNSVkd3?=
 =?utf-8?B?V2dSa2pjMjE2ZGRYZ1RkR2V4SjVucS9OV0VtcDgzY2FQRW5zaFdQckRjRndn?=
 =?utf-8?B?RlFmRWFGandIOHVYNVpDVG9QbVZkUWJueXBYOXp3NEZOM3owSGswaWw0amdS?=
 =?utf-8?B?OUJlci9uRUc2ZERrM3dINEVoS3AzR0JSc2RBeGpNQlFmZFcxUjcxTlpmN0tp?=
 =?utf-8?B?Ly9IRHhzYkFMdUVwTmh0SGhOVmUybXhzVmRCUzBHU0s1ckMzcGExWEljU1NQ?=
 =?utf-8?B?TWJPR2w0YjBhWTFRa0h2NGQ2cWdCMHE1RFM0SzJLVzhsS0F0dzVJU2RzVEdo?=
 =?utf-8?B?Z1pRWmFFYWFPYVlwbWp6MmVBWWE5ZGtRRGRWRWNhLzZvMGtvSnNycnZPc1Bl?=
 =?utf-8?B?V2VJbnNyZnpDZ1c1RVk0ZUxHdXI3TVFoRXNqaXVBWEt1WXg0K2Q1V3AzSjZG?=
 =?utf-8?B?clNHZkZESnVOdENnRkQzODgvNmRYQmJjOTJvYjN0V1FiNDlYdXhHOFludit1?=
 =?utf-8?B?Mkp3ZUFweC9BMkRvbzc4QnRpR3I5bUpwZzJ0TGg0SUVScmpwNEs3NHNIN3JF?=
 =?utf-8?B?amh4NjhhZlhXZGExYndqM2E1WFRiZGFxbEdMWE9nUUhrc0FpVmxuaGQ1NEpR?=
 =?utf-8?B?RUlpblo5OVJsRlNWSzd4ZVlXTXFDQXl5Uk1VRVN0VFdGaXRnQjlIaTlaa2lF?=
 =?utf-8?B?bmRDdGhQeE5SQ2syS0VBaVlTZnNqdXlxVFU2TjV6U2ZnZnI0d3pzVGFwWFhJ?=
 =?utf-8?B?L3B5UExKdk90UXZnR3BnMUNsUnZ1aFljbjBFdERlZ1hOVzN1RWZWREgvTzlD?=
 =?utf-8?B?d2hRMFBCSzY1NHl0YVBCMFpnRE5CcHlYVk1YTjB2SzdXVm02ZHZDZkwzUEZG?=
 =?utf-8?B?dTQ4K3Q1UHJsZVJQU201OTRFcC9BSE93S3IrU0ZYNkNwMHBuMDR1QUhKRGY3?=
 =?utf-8?B?MzZuZzMvMDdxcUNScW9tdm5RTzVxQTZKN0JLN1BhTVpWaGVFNXZLMUMwNzNC?=
 =?utf-8?B?VkZMMzRkZlVLWUJBWHRhMlhHWlJxRU4xY2l0eGl2M01kZVAwL25hWW1zaTlC?=
 =?utf-8?B?ZElMcFRUWFExQldrVkNQWUpEOUNiUHFUTUpWMXk5Umc1WWFlQjExcmRHbzBp?=
 =?utf-8?B?T1VpZDR2ek5qc2IwUjdvd1o3d3FnY0djbjFoOEtKaHVCSWZJbkdsQk5WK3ZV?=
 =?utf-8?B?b2dycTB1TndnWEkwZklaOG1wOHZkankrVEdHU1BKUTcwMjFQM0d6c3RxWlhN?=
 =?utf-8?B?Tk8rTUgvRkF4d2JIVExFaWZ2U3NHakd1c05XUXZQdXBuUEhzZzNmZUlnNnFW?=
 =?utf-8?B?a21FK3owK1IvanNaZVVpbWlCb2xhQ3VjZUhzWEpPdTVUbGltYWFMYnlxSmlu?=
 =?utf-8?B?emxTclh4ZUJ6YUJMVnRBTUtsdHpjSjZGeVllbUw1SHlTamtJZXpGU3VMZDBE?=
 =?utf-8?B?QzY0MnJ1VmgwTkRjZmdaTUNCZzVMQi9LWUgrOEtrb0VZK2pFL1dmL0FPWlJv?=
 =?utf-8?B?T2VjYUg2TSttRzRwQ013SkdkQmxGL3l2MGJjM2xTMUJ2dDg1YjQ4R2ZGODZT?=
 =?utf-8?B?VEVoK2QxWHdFNWRBN1RhVVd4bFJCZk1nMFdwbmhGUk1GSzcyKzRURlBRbXdo?=
 =?utf-8?B?UnY0bFYyeG5oeU8vWWZjY1ZvUnpHVTN2SjNvRGlIYzVzZzhHVCtZbUxvcGhI?=
 =?utf-8?B?czlrVFJ3TE1LTm1LeFdpRUppSVhEeHBtejZTUFJ2bHFRYnJ0dGdLYlNmN2Q2?=
 =?utf-8?B?N0dETFo2eE9JYTd3RUR6UWluOUg3ZlNFNTBJYThkTWgwRC9OaWU5NksvVzRV?=
 =?utf-8?B?RHFZTUNuY0lGaEJVTnVId08xUmxvaUxJUG1iQjZoUHdSSXBqbVpIWFFMS05o?=
 =?utf-8?B?ZElCV3dIYlVpRkxzRFQzeE8zVitGM1V0QkdLeVR6TS9ncjJBSnpGRm9iWHY3?=
 =?utf-8?B?N2dHbkVlWTlxVTVNQ0l5clRQYkIvc1FvcGxDeHpxVTRUSytJZC9VVkZyUFdN?=
 =?utf-8?B?dnJtU2tpUW1VeWs2ZncrRWhFNm1nPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FBC4EE05E8C05B4FBB2067528CE85291@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f3d8760-43da-4265-02d5-08de0d31afee
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2025 04:00:18.9158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZArwMrSKOWitY+Xn+vHLo/Etzo6UiMt3MvjdLFkefuN9PqK48ey2jHzFh8GDd6m8XTKY1qi4Rc/bxgJldYZPstC3K280ClEi1rzPff8ckYY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4865
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

T24gVGh1LCAyMDI1LTEwLTE2IGF0IDIzOjAwICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IE9u
IFRodSwgT2N0IDE2LCAyMDI1IGF0IDA5OjIzOjI2UE0gKzAzMDAsIEpvdW5pIEhvZ2FuZGVyIHdy
b3RlOg0KPiA+IE9uIFRodSwgMjAyNS0xMC0xNiBhdCAyMDoxOCArMDMwMCwgSW1yZSBEZWFrIHdy
b3RlOg0KPiA+ID4gT24gVGh1LCBPY3QgMTYsIDIwMjUgYXQgMDc6NTY6MzJQTSArMDMwMCwgSm91
bmkgSG9nYW5kZXIgd3JvdGU6DQo+ID4gPiA+IE9uIFdlZCwgMjAyNS0xMC0xNSBhdCAxOToxOSAr
MDMwMCwgSW1yZSBEZWFrIHdyb3RlOg0KPiA+ID4gPiA+IEV4cG9ydCB0aGUgaGVscGVyIGZ1bmN0
aW9uIHRvIGRldGVybWluZSBpZiBGRUMgaXMgcmVxdWlyZWQgb24NCj4gPiA+ID4gPiBhDQo+ID4g
PiA+ID4gbm9uLSBVSEJSICg4YjEwYikgU1NUIG9yIE1TVCBsaW5rLiBBIGZvbGxvdyB1cCBjaGFu
Z2Ugd2lsbA0KPiA+ID4gPiA+IHRha2UNCj4gPiA+ID4gPiB0aGlzIGludG8gdXNlIGZvciBNU1Qg
YXMgd2VsbC4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXaGlsZSBhdCBpdCBkZXRlcm1pbmUgdGhl
IG91dHB1dCB0eXBlIGZyb20gdGhlIENSVEMgc3RhdGUsDQo+ID4gPiA+ID4gd2hpY2gNCj4gPiA+
ID4gPiBhbGxvd3MgZHJvcHBpbmcgdGhlIGludGVsX2RwIGFyZ3VtZW50LiBBbHNvIG1ha2UgdGhl
IGZ1bmN0aW9uDQo+ID4gPiA+ID4gcmV0dXJuIHRoZSByZXF1aXJlZCBGRUMgc3RhdGUsIGluc3Rl
YWQgb2Ygc2V0dGluZyB0aGlzIGluIHRoZQ0KPiA+ID4gPiA+IENSVEMgc3RhdGUsIHdoaWNoIGFs
bG93cyBvbmx5IHF1ZXJ5aW5nIHRoaXMgcmVxdWlyZW1lbnQsDQo+ID4gPiA+ID4gd2l0aG91dA0K
PiA+ID4gPiA+IGNoYW5naW5nIHRoZSBzdGF0ZS4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBBbHNv
IHJlbmFtZSB0aGUgZnVuY3Rpb24gdG8gaW50ZWxfZHBfbmVlZHNfOGIxMGJfZmVjKCksIHRvDQo+
ID4gPiA+ID4gY2xhcmlmeSB0aGF0IHRoZSBmdW5jdGlvbiBkZXRlcm1pbmVzIGlmIEZFQyBpcyBy
ZXF1aXJlZCBvbiBhbg0KPiA+ID4gPiA+IDhiMTBiIGxpbmsgKG9uIDEyOGIxMzJiIGxpbmtzIEZF
QyBpcyBhbHdheXMgZW5hYmxlZCBieSB0aGUgSFcNCj4gPiA+ID4gPiBpbXBsaWNpdGx5LCBzbyB0
aGUgZnVuY3Rpb24gd2lsbCByZXR1cm4gZmFsc2UgZm9yIHRoYXQgY2FzZSkuDQo+ID4gPiA+ID4g
DQo+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29t
Pg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5j
b20+DQoNCj4gPiA+ID4gPiAtLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgIHwgMjENCj4gPiA+ID4gPiArKysrKysrKysrKysrLS0N
Cj4gPiA+ID4gPiAtLS0tDQo+ID4gPiA+ID4gLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuaMKgwqDCoMKgIHzCoCAyICsrDQo+ID4gPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jIHzCoCAyICstDQo+ID4g
PiA+ID4gwqAzIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0p
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ID4gPiA+ID4gaW5kZXggYjUyM2M0ZTY2MTQxMi4uM2ZmYjAxNTAw
NGM1NCAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMNCj4gPiA+ID4gPiBAQCAtMjM2NSwyNCArMjM2NSwyOSBAQCBzdGF0aWMgaW50
DQo+ID4gPiA+ID4gaW50ZWxfZWRwX2RzY19jb21wdXRlX3BpcGVfYnBwKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAsDQo+ID4gPiA+ID4gwqAJcmV0dXJuIDA7DQo+ID4gPiA+ID4gwqB9DQo+ID4g
PiA+ID4gwqANCj4gPiA+ID4gPiAtc3RhdGljIHZvaWQgaW50ZWxfZHBfZmVjX2NvbXB1dGVfY29u
ZmlnKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gPiAtCQkJ
CQlzdHJ1Y3QNCj4gPiA+ID4gPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4g
PiA+ICsvKg0KPiA+ID4gPiA+ICsgKiBSZXR1cm4gd2hldGhlciBGRUMgbXVzdCBiZSBlbmFibGVk
IGZvciA4YjEwYiBTU1Qgb3IgTVNUDQo+ID4gPiA+ID4gbGlua3MuIE9uIDEyOGIxMzJiDQo+ID4g
PiA+ID4gKyAqIGxpbmtzIEZFQyBpcyBhbHdheXMgZW5hYmxlZCBpbXBsaWNpdGx5IGJ5IHRoZSBI
Vywgc28gdGhpcw0KPiA+ID4gPiA+IGZ1bmN0aW9uIHJldHVybnMNCj4gPiA+ID4gPiArICogZmFs
c2UgZm9yIHRoYXQgY2FzZS4NCj4gPiA+ID4gPiArICovDQo+ID4gPiA+ID4gK2Jvb2wgaW50ZWxf
ZHBfbmVlZHNfOGIxMGJfZmVjKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gPiA+
ID4gKmNydGNfc3RhdGUsDQo+ID4gPiA+ID4gKwkJCcKgwqDCoMKgwqAgYm9vbCBkc2NfZW5hYmxl
ZF9vbl9jcnRjKQ0KPiA+ID4gPiA+IMKgew0KPiA+ID4gPiA+IMKgCWlmIChpbnRlbF9kcF9pc191
aGJyKGNydGNfc3RhdGUpKQ0KPiA+ID4gPiA+IC0JCXJldHVybjsNCj4gPiA+ID4gPiArCQlyZXR1
cm4gZmFsc2U7DQo+ID4gPiA+ID4gwqANCj4gPiA+ID4gPiDCoAlpZiAoY3J0Y19zdGF0ZS0+ZmVj
X2VuYWJsZSkNCj4gPiA+ID4gPiAtCQlyZXR1cm47DQo+ID4gPiA+ID4gKwkJcmV0dXJuIHRydWU7
DQo+ID4gPiA+IA0KPiA+ID4gPiBOb3QgcmVhbGx5IGNoYW5nZWQgaW4gdGhpcyBwYXRjaDogRG8g
eW91IGtub3cgaW4gd2hhdCBraW5kIG9mDQo+ID4gPiA+IGNhc2UNCj4gPiA+ID4gImNydGNfc3Rh
dGUtPmZlY19lbmFibGUgPT0gdHJ1ZSIgYmVmb3JlDQo+ID4gPiA+IGludGVsX2RwX25lZWRzXzhi
MTBiX2ZlYyBpcw0KPiA+ID4gPiBjYWxsZWQ/DQo+ID4gPiANCj4gPiA+IFllcywgdGhhdCdzIGFu
b3RoZXIgY29ybmVyIHdoaWNoIHNob3VsZCd2ZSBiZWVuIGRvY3VtZW50ZWQgYXQNCj4gPiA+IGxl
YXN0Og0KPiA+ID4gdGhhdCdzIHRoZSBjYXNlIHdoZW4gdGhlcmUgYXJlIHR3byBvciBtb3JlIENS
VENzIG9uIGEgOGIxMGIgTVNUDQo+ID4gPiBsaW5rLCBvbmx5IG9uZS9zb21lIG9mIHRoZW0gZW5h
YmxpbmcgRFNDIChidXQgbm90IGFsbCkuIEZvcg0KPiA+ID4gaW5zdGFuY2UsIENSVEMjMSBlbmFi
bGVzIERTQywgYnV0IENSVEMjMCBkb2VzIG5vdCBlbmFibGUgRFNDLg0KPiA+ID4gRmlyc3QNCj4g
PiA+IENSVEMjMCdzIHN0YXRlIGlzIGNvbXB1dGVkIChkdWUgdG8gdGhlIHJlZ3VsYXIgb3JkZXIg
b2YgQ1JUQyMwLzENCj4gPiA+IGV0Yy4gc3RhdGUgY29tcHV0YXRpb24pIGFuZCBzaW5jZSBEU0Mg
aXMgbm90IGVuYWJsZWQgb24gaXQsIGl0DQo+ID4gPiB3aWxsDQo+ID4gPiBjb21wdXRlIGludGVs
X2NydGNfc3RhdGU6OmZlY19lbmFibGU9ZmFsc2UuIFRoZW4gQ1JUQyMxIHdpbGwNCj4gPiA+IGNv
bXB1dGUNCj4gPiA+IGZlY19lbmFibGU9dHJ1ZSwgZHVlIHRvIGl0IGVuYWJsaW5nIERTQy4NCj4g
PiA+IA0KPiA+ID4gQWZ0ZXIgYWxsIENSVENzIGNvbXB1dGVkIHRoZWlyIHN0YXRlLCB0aHJvdWdo
DQo+ID4gPiBpbnRlbF9hdG9taWNfY2hlY2tfY29uZmlnX2FuZF9saW5rKCkgLT4NCj4gPiA+IGlu
dGVsX2F0b21pY19jaGVja19jb25maWcoKSwNCj4gPiA+IHRoZSBmb2xsb3dpbmcgcGF0aCB3aWxs
IGRldGVjdCB0aGF0IHRoZSBGRUMgZW5hYmxlZCBzdGF0ZSBpcw0KPiA+ID4gZGlmZmVyZW50IGZv
ciB0aGUgQ1JUQ3Mgb24gdGhlIHNhbWUgTVNUIGxpbmsgKHdoZXJlYXMgdGhlIEZFQw0KPiA+ID4g
ZW5hYmxlZCBzdGF0ZSBzaG91bGQgYmUgdGhlIHNhbWUgZm9yIGFsbCB0aGUgQ1JUQ3Mgb24gdGhl
IGxpbmssDQo+ID4gPiBzaW5jZSBGRUMgaXMgdGhlIHByb3BlcnR5IG9mIHRoZSBsaW5rIGVuY29k
aW5nKS4gQWZ0ZXIgZGV0ZWN0aW5nDQo+ID4gPiB0aGlzLCB0aGUgc3RhdGUgb2YgYWxsIHRoZSBD
UlRDcyBvbiB0aGUgbGluayB3aWxsIGJlIHJlY29tcHV0ZWQNCj4gPiA+IHdpdGgNCj4gPiA+IEZF
QyBmb3JjZWQgb24gbm93IGZvciBhbGwgKGZvcmNlZCwgZXZlbiBpZiBEU0MgaXMgbm90IGVuYWJs
ZWQgZm9yDQo+ID4gPiBhDQo+ID4gPiBDUlRDKToNCj4gPiA+IA0KPiA+ID4gaW50ZWxfYXRvbWlj
X2NoZWNrX2NvbmZpZ19hbmRfbGluaygpIC0+DQo+ID4gPiBpbnRlbF9saW5rX2J3X2F0b21pY19j
aGVjaygpIC0+IA0KPiA+ID4gY2hlY2tfYWxsX2xpbmtfY29uZmlnKCkgLT4gaW50ZWxfZHBfbXN0
X2F0b21pY19jaGVja19saW5rKCkgLT4NCj4gPiA+IGludGVsX2RwX21zdF9jaGVja19mZWNfY2hh
bmdlKCkuDQo+ID4gPiANCj4gPiA+IFRoZSBhYm92ZSB3aWxsIHNldCB0aGUgaW50ZWxfbGlua19i
d19saW1pdHM6OmZvcmNlX2ZlY19waXBlcyBtYXNrDQo+ID4gPiBmb3INCj4gPiA+IGJvdGggQ1JU
QyMwIGFuZCBDUlRDIzEsIHRoZW4gYm90aCBDUlRDcycgc3RhdGUgZ2V0cyByZWNvbXB1dGVkLA0K
PiA+ID4gZHVyaW5nIHdoaWNoIGludGVsX2NydGNfc3RhdGU6OmZlY19lbmFibGUgd2lsbCBiZSBz
ZXQgdXBmcm9udCBpbg0KPiA+ID4gaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZygpLiBUaGUgYWJv
dmUNCj4gPiA+IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZygpIC0+DQo+ID4gPiBpbnRlbF9k
cF9uZWVkc184YjEwYl9mZWMoKSB3aWxsIGJlIGNhbGxlZCBhZnRlciBhbGwgdGhlIGFib3ZlDQo+
ID4gPiAoZHVyaW5nDQo+ID4gPiB0aGUgc2Vjb25kIHJvdW5kIG9mIHN0YXRlIGNvbXB1dGF0aW9u
KSBhbmQgc28gd2l0aA0KPiA+ID4gaW50ZWxfY3J0Y19zdGF0ZTo6ZmVjX2VuYWJsZSBhbHJlYWR5
IHNldC4gVGhpcyBzZXQgc3RhdGUgbXVzdCBiZQ0KPiA+ID4gcHJlc2VydmVkIGZvciBDUlRDIzAg
YXMgd2VsbCwgZXZlbiB0aG91Z2ggaXQgZG9lc24ndCBlbmFibGUgRFNDLg0KPiA+IA0KPiA+IFRo
YW5rIHlvdSBmb3IgdGhlIGNsYXJpZmljYXRpb24uIFBhdGNoIDYgY29udmVydHMNCj4gPiBpbnRl
bF9kcF9tc3RfY2hlY2tfZmVjX2NoYW5nZSAtPiBpbnRlbF9kcF9tc3RfY2hlY2tfZHNjX2NoYW5n
ZS4NCj4gPiBJLmUuDQo+ID4gZm9yY2VfZmVjX3BpcGVzIG1hc2sgaXMgbm90IHNldCBhbmQgaXQg
ZG9lc24ndCBleGlzdC4gSW5zdGVhZCB0aGVyZQ0KPiA+IGlzDQo+ID4gZm9yY2VfZHNjX3BpcGVz
IG1hc2suIE1heWJlIHRoaXMgY291bGQgYmUgZHJvcHBlZCBpbiBwYXRjaCA2IGFzDQo+ID4gaW50
ZWxfbW9kZXNldF9waXBlX2NvbmZpZyBpcyBzZXR0aW5nIGNvbXByZXNzaW9uX2VuYWJsZWRfb25f
bGluaw0KPiA+IGluc3RlYWQgYW5kIHRoaXMgaXMgYWxzbyBjaGVja2VkIGluIGludGVsX2RwX25l
ZWRzXzhiMTBiX2ZlYz8NCj4gDQo+IFllcywgSSBtaXNzZWQgdGhpcywgdGhhbmtzIGZvciBub3Rp
Y2luZyBpdC4gWWVzLCBpdCBjYW4gYmUgcmVtb3ZlZA0KPiBhZnRlcg0KPiBwYXRjaCA2LiBUaGVy
ZSBpcyBhIHN1YnRsZSBpbnRlcmFjdGlvbiBiZXR3ZWVuDQo+IChhKSBpbnRlbF9kcF9kc2NfY29t
cHV0ZV9jb25maWcoKSAtPiBpbnRlbF9kcF9uZWVkc184YjEwYl9mZWMoKSBhbmQNCj4gKGIpIGlu
dGVsX2RwX210cF90dV9jb21wdXRlX2NvbmZpZygpIC0+IGludGVsX2RwX25lZWRzXzhiMTBiX2Zl
YygpLA0KPiB3aGVyZWJ5IChiKSBjYW4gc2VlIGludGVsX2NydGNfc3RhdGU6OmZlY19lbmFibGUg
YmVpbmcgc2V0LCBiZWNhdXNlDQo+IChhKQ0KPiBoYXMgc2V0IGl0LiBUaGVuIChiKSBoYXMgdG8g
cmVzZXQgaXQgZm9yIFVIQlIsIGFzIHBhdGNoIDIgYW5kIDMNCj4gZXhwbGFpbnMuIFJlbW92aW5n
IHRoZSBpZiAoZmVjX2VuYWJsZSkgcmV0dXJuIHRydWU7IGNhc2UgYWJvdmUNCj4gcmVkdWNlcw0K
PiB0aGF0IHN1YnRsZXR5IGFjdHVhbGx5LCB3aGljaCBpcyBnb29kLg0KPiANCj4gSG93ZXZlciwg
dGhlIGNoZWNrIGFib3ZlIHNob3VsZG4ndCBjYXVzZSBhbiBpc3N1ZSAoYWZ0ZXIgcGF0Y2ggMikg
YW5kDQo+IGludGVsX2NydGNfc3RhdGU6OmZlY19lbmFibGUgd2lsbCBzdGlsbCBiZSBjb21wdXRl
ZCB0d2ljZSBpbiB0aGUgZW5kLg0KPiBUaGF0J3Mgc3RpbGwgYSBiaXQgc3VidGxlIGFuZCBzbyBJ
J2QgcmVtb3ZlIHRoZSBjaGVjayBpbiBhIHNlcGFyYXRlDQo+IHBhdGNoLCBhcyBhIGZvbGxvdy11
cCwgdG8ga2VlcCB0aGluZ3MgaXNvbGF0ZWQuIFdvdWxkIHlvdSBiZSBvayB3aXRoDQo+IHRoYXQ/
DQoNClllcywgaXQgc2hvdWxkbid0IGNhdXNlIGFueSBpc3N1ZS4gVGhpcyBpcyBvayB0byBtZS4g
UHJvdmlkZWQgcmIgYWJvdmUuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+ID4gQlIs
DQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyDQoNCg==
