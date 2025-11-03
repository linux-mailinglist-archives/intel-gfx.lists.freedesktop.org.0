Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA549C2AF90
	for <lists+intel-gfx@lfdr.de>; Mon, 03 Nov 2025 11:16:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2524F10E3A1;
	Mon,  3 Nov 2025 10:16:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P6kmbKFe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7921891C0;
 Mon,  3 Nov 2025 10:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762165007; x=1793701007;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=OHdIzBN9Pbpf10BCbYwect++6jCf9jPc78V4cCByaXQ=;
 b=P6kmbKFeT73qrXRoD1Y/r54HMmAy6LEC8vsH7HeQjsNAfdEOL4omRYt9
 wK2rjgu5TTbX1GZhqAfToqfyFONaiMyrANTpSjasq29wXBJ0V0f91W4YU
 LwkAIbAnzf5wfgLsaUKhA8mXfsxJ2FBBmAXyVsBN4Q7i044S2CJrFiObw
 /PLn89jwiDeDbgA6jGWPq9MXYGmcbU0ILv8utPoXFeClK6VFSpzI9BgpW
 kueI/tvkBuLWO4XzwRiltd7tCDTAh7/b82rdMxt9+uhmx4aODQBpvP9bj
 XDliasadSIGNgwyxVNHik2nrwj7TVvD63NcParX6TQZNejX5wXrjYv2Dz w==;
X-CSE-ConnectionGUID: lPHt5rQOQR6o0Gb2LhHmQw==
X-CSE-MsgGUID: 8dDA5sl8QgiisRW7zDUNXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11601"; a="64275380"
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="64275380"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 02:16:46 -0800
X-CSE-ConnectionGUID: PJXj+HdMSXKiKaPB3LTDcg==
X-CSE-MsgGUID: 9o5HkM5yTQu6ioKvHHjg0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,275,1754982000"; d="scan'208";a="224069935"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 02:16:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 02:16:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 3 Nov 2025 02:16:46 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.33) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 3 Nov 2025 02:16:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UdglBSpQ/Xv0Lnf4lrdqLgKW2umErxtk+Ub4mDzltfTqkYNOWLuqFwSWvmCcpMfCy5+RiatnLkeo+LcL3XUGL+PZjo+TcznlDHN2Anl9oTWPW2QeON3Eo4JaU8Gx33/tZu/KVIuktKLbblEq4xULB9/3iGRqrmqeT6CsW0KMwzgNkRjp3ZB2grchlnfnY6M/rxe/H8PbmZZ853q1Cw3PZNbREwcz5pp+O6c237yjDNvVnzIzqZcHGHnzmvlL870D+Y20fOcG/oBx6lLXzFO+Ie2WXYWX8iN7Ih9WiTwTWefn6VpFEahAbGZaJxvIhM9jhLxA0Kdj9HecwumxAUOj5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OHdIzBN9Pbpf10BCbYwect++6jCf9jPc78V4cCByaXQ=;
 b=UtJp7lxMEkb1RlHfxk6ZMnjGd+EKF4KG6YejxukhnthvyMk7S7F1XAc/GsyW/zD11atueAuZXAvhOZmtXz5NthAvZPpVyP3QSmyXRvJzTy1SfFGxNaQYhetRz6q9iKLmBBWx0Sn99mIY4ENEIKSJRZjRKlCJG/nHH/Tq800R8vAGwlttVt7t1a5f4HujwzxceqNmtQ2j84NhBh/Qgw4vdcNgW8xk9OSc8TWom6Y5OCuZGubhPJymKSKqNBQWlqHqUyutXaSVOmhbPXQsVHCPcR3+qisDorv/GI2Y8JVizAivy5S0h22z7IOB40DJjK5A6akGB4ZoKVnnXtp6vEsHHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4927.namprd11.prod.outlook.com (2603:10b6:a03:2d6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Mon, 3 Nov
 2025 10:16:40 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9275.015; Mon, 3 Nov 2025
 10:16:40 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 0/6] Use display parent interface for runtime pm
Thread-Topic: [PATCH v3 0/6] Use display parent interface for runtime pm
Thread-Index: AQHcSdvSCllfo1EqikKTRkeHT0J74LTcFLiAgAStcoA=
Date: Mon, 3 Nov 2025 10:16:40 +0000
Message-ID: <4fc3f7aee628527ecd4c5040d6255ab567e04071.camel@intel.com>
References: <20251030202836.1815680-1-jouni.hogander@intel.com>
 <d28d4a6355e691f27c2dc2dffe62cc0242b11860@intel.com>
In-Reply-To: <d28d4a6355e691f27c2dc2dffe62cc0242b11860@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4927:EE_
x-ms-office365-filtering-correlation-id: 6ddd6ede-3cc2-4eb0-f0ba-08de1ac21496
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?WUhYdnhtWGJ4cEcyTkpUUXU2MElhTS9MLzA5TjlUblA4aEhFd0pMbmh5dklD?=
 =?utf-8?B?SE82TW5RTW13aXZUakZmQTFwVjMxOGl4Z1kybGVPNTYvWlBQcGJZMEhiWjEv?=
 =?utf-8?B?RFIrbFdDemZ3U1dwMmt1amZheVhIU1NUVUZyTWZPTThKejE2U0Q4VkRjZk4y?=
 =?utf-8?B?NUhBTkEwRElweE1PYk9oVXYySXJYUmYyNVN5cXU3MU9DT2ZGZ2ZUM1pNTzNo?=
 =?utf-8?B?TzNCV05oU3lmaGkzSDBrcEJCWjlJR2FIYkIxU3dJYUd6bXdLMGxMOXRQTktr?=
 =?utf-8?B?R2YzaFpONWFnVnR6dys0czhwYWVnamRWckVwaVJNMnZadDdvTzdLMXp3MFd4?=
 =?utf-8?B?akFYM0NDTnc2RG11NGIxQmh0aEt5NGw1TnZ4ZkZ1d0o5Z2VTSmdnNmRwbEJI?=
 =?utf-8?B?SWhOdjVKODVueFc1bXBOeGJTRXY5enA3cDRKMksxN0tqQWdoNGhrbnJIaDRR?=
 =?utf-8?B?N3VJelRtKzFpb2R4VU5laURYdFZSWWhFMTJ0SUZTMDBqZGtucm91Nzk0VVo0?=
 =?utf-8?B?TGRJY2RDWVdrbzJuTzFyZlNlQXZWbmtEbEo4WEVPMVZqSW5jeUhPMWM1WjAv?=
 =?utf-8?B?TDZDTmtyWnZobXlNOXg1bVJkb0xQRG1EemlSdnBpMTJmWldOckd6SHZDS2Jw?=
 =?utf-8?B?aEw0WVhGZDA0WklkanFKakkyNEZLLzB1RE9CdFZvc2NmRVdaK2dwbUtETElq?=
 =?utf-8?B?YWtsWWNuUys0ZjRWdDhFTHRNdDhocUVFMEFxTG5PN2Z0WXgzRk16L1RKa2Rs?=
 =?utf-8?B?RlBUdFRoeFhCYTFSWWNWM1haMVJvUytyTGVpYTV0cFRhajdBeS9oOHJjVXBo?=
 =?utf-8?B?Rk8zVVhjT2NvSUVYRmovaTVNUTR4MWVmREdPSlVrWnVrMzhlWDRhc1FRc3lj?=
 =?utf-8?B?TVZvZ2hBQ3R5am1RMWtxS1RKZjZYT0lFSUs1RGVBTEhXbTE3bTNjMkhYdlVU?=
 =?utf-8?B?ei9qYmJsdFFscE1KN2RFQyt3OVhGWmM4ckhxazQxUFVNQVNNOFlwTElHWkxT?=
 =?utf-8?B?eVl3SmtUQVR4UnVKazk0MFdnTXdjLzdYclZZY3VPVTBPQnR6cTA1Ny95a3hW?=
 =?utf-8?B?aVcvMloySHpMMVRuaU4yRjhUMm1BQzc1WnVmalBBMnM3emxrRjBROG9NSGNR?=
 =?utf-8?B?bTlmcWJhcHdMY2U1NXNrZ3RYVXdkUDI3T00rTkVhMitBZW5sZUYrTitLSU4y?=
 =?utf-8?B?TGVHSFoxK3pXb2FFd0JkL1R4M0lWMDdQN1RGRHphRlVCNXBZWmpsTUV1TmtX?=
 =?utf-8?B?d3NINWduMnhnQVNESVFhd3p2WWxmRGdnNVpTQ2FLOFpKWWo5UUJ3N28rRnJO?=
 =?utf-8?B?QzNLM09WLzRaNHIvQ09SL3ErbzFWdFlZbTMxNEVTZDh4dFQzZFRnZWxaRDJV?=
 =?utf-8?B?ZkJkMkcvVS82WXhhT2tsZDJFUDlUVWZ4b2F2bWszTDZxVVVKKzY0eEM2eGhz?=
 =?utf-8?B?Nm8yMkw1U3h1bUFWcWFyUTJIeUwvWnFpZThzUnE0b1pkaFhGc2Fsdk5jZ3JR?=
 =?utf-8?B?M3M4ME9wTWZ1aWVNVm83dHlhbmN3M1NxNCtSYWRUcUNpMy9TR1BSYkFNaVdZ?=
 =?utf-8?B?aC9ZWCtXUC90NnNkdzAyTGhGaCtmOU0wcmFQSnc0RGFsckl0ZUVVZWRLeVR5?=
 =?utf-8?B?ditvMG5RRG9RZWF6RzZkcXFXUUd0a0hmQlJkVkM5bEc0NjNWcXdZemEzWkRH?=
 =?utf-8?B?MTh4NWtqR1RzR2tydVV5S1luc04wTkhXcmluZVRRVFUyT2VtOFBkZEZtVEpa?=
 =?utf-8?B?Wi9OclZXZDdzdUlDMzk1ZmprV3pJQkxFamVwUjdQTlFwTEZ1MlM0SzlzbGFr?=
 =?utf-8?B?YmpkWjluR3VYZWtaU2NFMjdENXFaRDJUaXNkd1FYYnBjL3RSeHdpa2lxWUF3?=
 =?utf-8?B?R1h2WmVoM1dwMHphekxwWUpNV2c4UlZ4VlJnMGYwR0VsT0E0SGlhclBXR0F3?=
 =?utf-8?B?M2ZmOWQ0WGd5SWJWVk4wd2xDNHc4am5mYmN1TE5zOGE5MlJUM2FaVU5Cd3dl?=
 =?utf-8?B?RmRKUUV3M3I1SE9GRmVvSjM5WHkxZFgyM2JldzJnQVpuZnA2NHYvMUlBMDNF?=
 =?utf-8?Q?JITADL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1RHNUhMdzZldm1HY0NZMVZBaVg1aVlqdlRBTkZkdDZaSk8rU0lvQTZvVmZI?=
 =?utf-8?B?alJpWTBCbG14SlJOdkFVT0srQ282ZnRtQ0VUYTMzYW9KR1pVd0d4Qm9ld2VZ?=
 =?utf-8?B?RDJxb1MrNjZlTHg2L3Y1aWViMVBoQTN4UzRIYU9Jb3NBVUozS2pscndqNDJs?=
 =?utf-8?B?RFlvQWhpUmdmbE9KTTFjWE1NdFV0OFpLQVJnOWI1RFpIOFhCenJRaCtWTTBm?=
 =?utf-8?B?VnBDVmxYb25mQ0hXQjE3OVRveXZEWnNSeTIwVkJnYkpQRDh3S1ZVZk9TUEFZ?=
 =?utf-8?B?Qk9XRExScFRTNUNaaGxod0poUURlSFQ4dUJ5ZUtvc0VpSklqdWg0VHVMcVNj?=
 =?utf-8?B?Qlo4SkNLS25mOXJVWTVZS2toR1AvZWtZWGw1VktQNnE1ZHZBNm1yZVdZci91?=
 =?utf-8?B?ZWdCMVNPMDZ5bld1RlBGcXI2M3h1c1V6T1dvVlM2aVVQVEc3RnVUNXJ6bkYz?=
 =?utf-8?B?M0pCS0JJMlg5T1hFaTM2TGRBeWQ1ZFFLTC9oVXkxYkI2RG94bGhLQUM2ODd6?=
 =?utf-8?B?YXRETzBIQzhFeXBITk9kdVFkdjdyM25JTy9iOTJ4SmQxTndLWStMNTRSalBO?=
 =?utf-8?B?RjY1NTZyelVnaWV2OWk1cUNXTys0WkdhZThGYjZPNy9PVlhjaW43WjV3dkh3?=
 =?utf-8?B?blpBM2FUdTJLNWFUMVFRRmVFSnpJSTljMWtyWFBlWmc4VE1TZjRUMUladHZ2?=
 =?utf-8?B?ajA2RnJsdG04aW9SUFJRM0JTQkVnbFNiVFRWZllKRkxqZ0hXbmJldktYdEpG?=
 =?utf-8?B?anRzczNxaXZ4Smk4SFhhRGVzcm55RDNubFRmNVViOFRYZFpPcnNYQnhOWXlL?=
 =?utf-8?B?NVJIVEI3VzFMUDcySVZHMDNFYmptbzZnVFJBZjFSWFNHNEt2Uk5uakFFVHlm?=
 =?utf-8?B?Sm9lV2ljdDUyWHFXMThlZmZTM3JZR3BOZEpRbEoySVA4OXdJN2lDOVRqdUU5?=
 =?utf-8?B?YWZIendhKzVZVTR6bi94VXg4N0NLRXorRHZLL1lzVWR4UnRhaVp3ZWNVRWFO?=
 =?utf-8?B?VnFSYUYwc0ZiSm9LMnlpYTJvOVNUR0xENExwYi9lTVd1N2ZkU1ROYnVoaDZ3?=
 =?utf-8?B?TUhxU3d1M0lLaXhqMEY0Q3doMU42MFdXbmdUY2dQZlg0ODlPVnY2U0hrZVBI?=
 =?utf-8?B?clZZb2hWTjJ2dll3N1Jrc2k3N3Z5Z2REd0NhUEFBRE5xazZZcEMrVC92V3Mx?=
 =?utf-8?B?QmFyN3JBaExEVG9reHZ2OVFJUXdYNkY1dUF1ZFlMN1ppM0dvdTJET0VGMkRU?=
 =?utf-8?B?NUVlVklFNXg0TGZsTHJQMFl1Qk5saGJCcHRlbmNkZUdndmhjVGt1Qk02cFNm?=
 =?utf-8?B?QVYwZFgzVGpzUFhNZzdMVFh2M2RGYlNYMXlrWmk0TURUczhoMmNkbHZWU1Ey?=
 =?utf-8?B?NUhLMmRCeXpMUGFNWTVSZCtqb0xjeVM0L0t5RDVVVVozd01kS05aMjFjNEds?=
 =?utf-8?B?WGNyd2V3Mjhub3JwZndBOVg0NWtPL1Y2VlVCZ0IvUDZYRmpNdVU5QlNmWXRW?=
 =?utf-8?B?TUpvR2VwK2cxTVR4SXZTbFZ0UWlBYkV4Z0lhbnBlc0ZCaHR2T0REL1JCbUcv?=
 =?utf-8?B?Mlh0OEEvbDB0bU1ZS24rclpFdWV0RzYybGE4NUN6K05xZVFYUjF5MlBCdkxT?=
 =?utf-8?B?aW9SbjYzRzN2MzlGTUZhUGYrQW9DOC9WV0NHNHJ3YUVib1loVTNocDR4VW1Z?=
 =?utf-8?B?cStYNlpERGFvbzZvcjluMmljYkxZZkN5VnhDYlBwbkk3ZE1HUUY2QkZ1QjVt?=
 =?utf-8?B?NkJPVnN1Nk02cHRhQXROZFZXVkx0U0xSRGFJWlZaV1dldGVMQ044bWhMR05w?=
 =?utf-8?B?THlEVUkwQlQxWU9SR0lrMUQ0TmtWZjM4T0tMQjVvbCtGektwQlY4NUFtMjY5?=
 =?utf-8?B?SEV6M3lkSyt4QTNwWHl1bFI5ck9tbmFYeU5RTU5IdnRqaTQ4WGtLT0w2NzBV?=
 =?utf-8?B?WGRoMzFFNmthZDlsb0lLeSsyZ0k4YThtRDUxaU05KzYyc0duM1Y5UDViajJP?=
 =?utf-8?B?ZWx2WDNUdHFXOVN0K2lFU2xEOXl1WFIzMmJPc283VHRHUUV5MHdmV0JiOVRp?=
 =?utf-8?B?OVhVN3Q3NkxEbGN2YnprUTVHWkR4dCs3cHFDbTZadTlhSG5paWc5TERPd3lU?=
 =?utf-8?B?bmQ5YkZUWUJ5dlBEbStvZFoxUEhpRC9Wa05TdWNsRDM3TmZGNlI0Y1FRQWo4?=
 =?utf-8?B?UVJ1ajBPNlFsL3pvR0N2ZVRMSUpwZGd0bjhXUGhvWkZld28xUVFsMlBON0ZN?=
 =?utf-8?B?M0FvK3JEY1liVGxIVGt0RjVFd1pBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <61374D68BA3F2F4BA7659D51728732A1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ddd6ede-3cc2-4eb0-f0ba-08de1ac21496
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2025 10:16:40.4347 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w1qG+IgyyBLmKhBW0RujbxvVrZwX/gURxszj6aDZnCHh0XoxJ2J8lzaheZ+0OtUkpY900z8vzO6aa05mu6LIKRxipgSkWIWtbf08qhY+fco=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4927
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

T24gRnJpLCAyMDI1LTEwLTMxIGF0IDEyOjUwICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVGh1LCAzMCBPY3QgMjAyNSwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEFkZCBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9wYXJlbnRfaW50ZXJm
YWNlIHdoaWNoIGlzIHN1cHBvc2VkIHRvDQo+ID4gY29udGFpbg0KPiA+IGZ1bmN0aW9uIHBvaW50
ZXJzIHBhc3NlZCBhdCBkaXNwbGF5IHByb2JlLiBUaGlzIGlzIHN1cHBvc2VkIHRvDQo+ID4gYWxs
b3cNCj4gPiBkaWZmZXJpbmcgaW1wbGVtZW50YXRpb25zIGJldHdlZW4gaTkxNSBhbmQgeGUgZHJp
dmVycy4NCj4gPiANCj4gPiBBZGQgcnVudGltZSBwbSBhcyBhbiBleGFtcGxlIGFuZCBmaXJzdCBz
ZXQgb2YgZnVuY3Rpb25zIHVzaW5nIHRoaXMNCj4gPiBuZXcNCj4gPiBtZWNoYW5pc20uIFBhc3Mg
b3duIGltcGxlbWVudGF0aW9ucyBvZiBydW50aW1lIGZyb20gaTkxNSBhbmQgeGUNCj4gPiBkcml2
ZXJzIGR1cmluZyBwcm9iZS4NCj4gDQo+IEdvb2Qgc3R1ZmYsIGxldCdzIG1lcmdlPyBXZSd2ZSBn
b3QgdHdvIHNldHMgb2YgZXllcyBvbiBwYXRjaCAxLA0KPiB0aGF0J3MNCj4gZW5vdWdoLg0KDQpU
aGVzZSBhcmUgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4gVGhhbmsgeW91IEphbmkgZm9y
IHJldmlld2luZyBteQ0KcGF0Y2hlcy4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0K
PiBCUiwNCj4gSmFuaS4NCj4gDQo+ID4gDQo+ID4gdjM6DQo+ID4gwqAgLSB1c2VsZXNzIGluY2x1
ZGVzIHJlbW92ZWQNCj4gPiDCoCAtIGRyb3AgeGVfZGlzcGxheV9ycG1fe2dldCwgcHV0fV9yYXcN
Cj4gPiB2MjoNCj4gPiDCoCAtIHVucmVsYXRlZCBpbmNsdWRlIHJlbW92YWwgZHJvcHBlZA0KPiA+
IMKgIC0gYWRkIF9pbnRlcmZhY2Ugc3VmZml4IHRvIHJwbSBmdW5jdGlvbiBwb2ludGVyIHN0cnVj
dA0KPiA+IMKgIC0gYWRkIHN0cnVjdCByZWZfdHJhY2tlciBmb3J3YXJkIGRlY2xhcmF0aW9uDQo+
ID4gwqAgLSB1c2Uga2VybmVsLWRvYyBjb21tZW50cyBhcyBuZWVkZWQNCj4gPiDCoCAtIG1vdmUg
aTkxNSBkaXNwbGF5IHJwbSBpbnRlcmZhY2UgaW1wbGVtZW50YXRpb24gdG8NCj4gPiBpbnRlbF9y
dW50aW1lX3BtLmMNCj4gPiDCoCAtIHJlbmFtZSBpbnRlbF9kaXNwbGF5IGFzIGk5MTVfZGlzcGxh
eQ0KPiA+IMKgIC0gbW92ZSB4ZV9kaXNwbGF5X3JwbV9pbnRlcmZhY2UgY29kZSBpbnRvIHhlX2Rp
c3BsYXlfcnBtLmMNCj4gPiDCoCAtIHJlbmFtZSB4ZV9ycG0gYXMgeGVfZGlzcGxheV9ycG0NCj4g
PiDCoCAtIHVzZSA8PiB3aGVuIGluY2x1ZGluZyBkcm0vaW50ZWwvZGlzcGxheV9wYXJlbnRfaW50
ZXJmYWNlLmgNCj4gPiDCoCAtIGRyb3AgY2hlY2tzIGZvciB2YWxpZGl0eSBvZiBycG0gZnVuY3Rp
b24gcG9pbnRlcnMNCj4gPiDCoCAtIGtlZXAgeGVfZGlzcGxheV9ycG0uYw0KPiA+IA0KPiA+IEph
bmkgTmlrdWxhICgxKToNCj4gPiDCoCBkcm0ve2k5MTUseGV9L2Rpc3BsYXk6IHBhc3MgcGFyZW50
IGludGVyZmFjZSB0byBkaXNwbGF5IHByb2JlDQo+ID4gDQo+ID4gSm91bmkgSMO2Z2FuZGVyICg1
KToNCj4gPiDCoCBkcm0ve2k5MTUseGV9L2Rpc3BsYXk6IEFkZCBkaXNwbGF5IHJ1bnRpbWUgcG0g
cGFyZW50IGludGVyZmFjZQ0KPiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IFJ1bnRpbWUgcG0gd3Jh
cHBlcnMgZm9yIGRpc3BsYXkgcGFyZW50DQo+ID4gaW50ZXJmYWNlDQo+ID4gwqAgZHJtL3hlL2Rp
c3BsYXk6IFJ1bnRpbWUgcG0gd3JhcHBlcnMgZm9yIGRpc3BsYXkgcGFyZW50IGludGVyZmFjZQ0K
PiA+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IFVzZSBkaXNwbGF5IHBhcmVudCBpbnRlcmZhY2UgZm9y
IGk5MTUgcnVudGltZQ0KPiA+IHBtDQo+ID4gwqAgZHJtL3hlL2Rpc3BsYXk6IFVzZSBkaXNwbGF5
IHBhcmVudCBpbnRlcmZhY2UgZm9yIHhlIHJ1bnRpbWUgcG0NCj4gPiANCj4gPiDCoC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaCB8wqAgNCArDQo+ID4gwqAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jwqDCoCB8wqAgNSArLQ0KPiA+
IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaMKgwqAgfMKgIDQg
Ky0NCj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3JwbS5jwqAg
fCAzMyArKysrLS0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxMiArKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJpdmVyLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAyICsNCj4gPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uY8KgwqDCoMKgwqDCoCB8IDc3DQo+ID4g
KysrKysrKysrKysrKysrKysrKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVu
dGltZV9wbS5owqDCoMKgwqDCoMKgIHzCoCAzICsNCj4gPiDCoC4uLi9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL21vY2tfZ2VtX2RldmljZS5jwqAgfMKgIDQgKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS94ZS9NYWtlZmlsZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMSAr
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9kaXNwbGF5LmPCoMKgwqDCoMKg
wqAgfMKgIDggKy0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2Rpc3BsYXlf
cnBtLmPCoMKgIHwgNjEgKysrKysrKy0tLS0tLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0veGUv
ZGlzcGxheS94ZV9kaXNwbGF5X3JwbS5owqDCoCB8IDExICsrKw0KPiA+IMKgaW5jbHVkZS9kcm0v
aW50ZWwvZGlzcGxheV9wYXJlbnRfaW50ZXJmYWNlLmjCoCB8IDQ1ICsrKysrKysrKysrDQo+ID4g
wqAxNCBmaWxlcyBjaGFuZ2VkLCAyMTUgaW5zZXJ0aW9ucygrKSwgNTUgZGVsZXRpb25zKC0pDQo+
ID4gwqBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfZGlz
cGxheV9ycG0uaA0KPiA+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHJtL2ludGVsL2Rp
c3BsYXlfcGFyZW50X2ludGVyZmFjZS5oDQo+IA0KDQo=
