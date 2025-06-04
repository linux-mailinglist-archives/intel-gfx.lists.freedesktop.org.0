Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6981ACDC9A
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jun 2025 13:33:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EB7010E02F;
	Wed,  4 Jun 2025 11:33:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TbDOhKG+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17BF10E02F
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jun 2025 11:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749036824; x=1780572824;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4RR9KE8B32eufFrG1YuWGslPYUg79xCYfrd2S0ZyZHE=;
 b=TbDOhKG+lZ7CIfzQe4dUUoI4rFfoUVjRmWdF03t9/wg5Dy9K3wjL5zMW
 +0BF9sYZdgOOeUCwdjTiF+DB83yia4t3NUQI27pcciQpivUU/W9q1P9Ic
 zbC5gYooZR1i12RdIt21pNGQtoaaINXDlYTbK8tQKzgH+S2ewJUmt778+
 P6l9mBLI6zJ0kYKphCT4r4YmEu3m5M7Lx9YlJ8X5TXYwQnjyh6HWKk5aj
 fQ5JOWyzWbpRtv/3wsmfFMctgL+GV4NFX0DTh+CD8LJ9ucHtdwdKNlbf7
 POmAXb7B0cVy7mgG5RfVkLh6CtwCeFGI7PpQCTWA7pOPAT2SckrNY/ItF A==;
X-CSE-ConnectionGUID: xUh+iws5SLypC/+WK24NOQ==
X-CSE-MsgGUID: NME9DOE3RCOBanokxXfFMQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11453"; a="50976885"
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="50976885"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 04:33:44 -0700
X-CSE-ConnectionGUID: ed0e/aiBR/2HhZ65d7/Z+Q==
X-CSE-MsgGUID: bfVAHuEWS2WMM1GkUKuZpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,209,1744095600"; d="scan'208";a="146134859"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2025 04:33:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 4 Jun 2025 04:33:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 4 Jun 2025 04:33:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.44)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 4 Jun 2025 04:33:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XMj40PIjYOTL1jWEeWWxtvqueNbovP13EOUywXEisVTjOZn+NR6CDjmjfGWIFvOkFUAhVbT+tBIpucpACxO0IVPauZ2WR0hBJRQq7oH0W/S5mYAujrsKg0o8ELUleJZp/JEtjmICdzvez7cHeEJESJ9tfP8pIU/XwVXmw4dWAdxGSIsjlBM5P9grsaC5uOC1MAq584wEVrkXpqXvEBWUY9zfsgXl0FRxM2sm+r/hz3Q99YcvROOMc+WxETs/Tpm8rjNVy178RcwAh5snwIlukh9GPJ4op+TIImE+wVPgTAPGovZerI1ZHIdYlpmOltVhb7/qAZJeOT6A1GOIeT39zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4RR9KE8B32eufFrG1YuWGslPYUg79xCYfrd2S0ZyZHE=;
 b=FwumXHTtHjrV4RpooxjF+JZM5eNt5v6ujHHmnoZoJJYKpKNMRB3p3wDcO/+y5WqgstTWPlB6OnLTZngiYCLcjGWgzLl8Tb/2GOoyFmwU5L/A05QevwrgXw5paG3n4uvD/JvgYL6sfpn5qSthdL/FC3jXCE/xYEM1KPc1b6l6y/qmcW0fYIIhycgHtUbbQRYGzITBlk6+D1cK5IV+apWgbjyAeeNv6X4u3j+p6t/ixP7xcVMm89Z3rN7Jw3tghEQaXEroe9dVYSVrSjWmIhNqFbdZGaN5R2VldNx+po/bzyzV0TkWZjPm1hIm8PzO0fl232bsxdDVTgJsN989XOKJcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM4PR11MB5277.namprd11.prod.outlook.com
 (2603:10b6:5:388::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.34; Wed, 4 Jun
 2025 11:33:41 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::cd7d:8601:c9fb:ef8c]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::cd7d:8601:c9fb:ef8c%4]) with mapi id 15.20.8769.022; Wed, 4 Jun 2025
 11:33:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/dkl: return if tc_port is invalid in
 dkl_phy_set_hip_idx()
Thread-Topic: [PATCH 1/2] drm/i915/dkl: return if tc_port is invalid in
 dkl_phy_set_hip_idx()
Thread-Index: AQHbyWFbULKXv6rZ8EWB/w8ZosDdILPy9fwA
Date: Wed, 4 Jun 2025 11:33:41 +0000
Message-ID: <DS4PPF69154114F350940DD22ED1F8AD2BAEF6CA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250520082917.1302665-1-luciano.coelho@intel.com>
 <20250520082917.1302665-2-luciano.coelho@intel.com>
In-Reply-To: <20250520082917.1302665-2-luciano.coelho@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM4PR11MB5277:EE_
x-ms-office365-filtering-correlation-id: 346ddee3-1c8a-43f1-9dc2-08dda35ba7fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aWhHaEhhWVpudHhkUUdsRGxOTmxQalMzVUVtS2xoMHMyR2d6OVhjQ2szZnhp?=
 =?utf-8?B?bGFmWVI2NFFxbnRPZnppcFBObzVvS1pqUkM1akx0cGFPSW5VbjF2RDU5MytV?=
 =?utf-8?B?MldRUi9nb1hsbW9DQ253NjJlT1B5aDg1TEpFa1pQT2Y1ODdnRmRqTCt4SFBk?=
 =?utf-8?B?QW5zWW5yNVZlbXRNWkVuVm50SXhSak9TRzNUVHhIY3B5Vjg3YnRJbURrYWE4?=
 =?utf-8?B?bGE5TlUySU9LNENhQmZRNVdaVkRvekZZNXk1NHhuWFErQmFTbHRPRk1pZEJ4?=
 =?utf-8?B?RVZXWlJKemZlWVBTcVNPUC95bXhsTCtaS3NHU3FwdE5JdkgvZi9NREpJeC9I?=
 =?utf-8?B?SUtFTDdzYWt6Ny9jYlFCYmg5QUlubHpBSENFbGxCcFZ2SFZFVWRRc0xLeWQ5?=
 =?utf-8?B?QTJlckVFajltdjFjZEdTaGdZY0t4bm44M1J2aWt6M2FSWUM5RmJJYUxEbHlE?=
 =?utf-8?B?aTdaNUw0ZTB2SFNOdzNybnYyNk8xVUJyRzRXNi9PM01wc0dBWnlGMVpFN24x?=
 =?utf-8?B?ZkphcFpUOFVPRUxVSVRDQmh0dC9ZeVZYYmRWbHo5Tk0wTDJBWmVHRlgvaDMy?=
 =?utf-8?B?V3NEQld4WTZYamRJY3c3Q3REZ1d3ZS9hbklMNVdiVTRpQk9Ed3RvUHRUejhU?=
 =?utf-8?B?QnY4Q3F0Qi8yWnZ5Tm4wWnQ4RVpkSmpzUWJPQVZlRnB5WHdjZWJHWWZ3NFln?=
 =?utf-8?B?aTFwL2V4RVVXbUs3Si8xTWEvY3lHVWVScEMzSERhVDNxa3dvUVJSQnpCSUg3?=
 =?utf-8?B?N0JHU0RIRVdMY0lYYjViOURtR2RvSlFVN2kxOFE3UVpUWURqN0hGL09vbFY5?=
 =?utf-8?B?SUpHczZRM2ZLcyt5OXdUREh3R0FBRU4vdFhYb1N5d1U5OEtHRDNMN1c5eHh2?=
 =?utf-8?B?a0Ryb2dIaVBVTFgrMElwZEhjVEQwQnpHRlZoWTNLdlp2cklXL1orK0oxK1Nr?=
 =?utf-8?B?NkhpRGtLSWhLa1FKRjM4ZSswNk4xTUlQc0YyOGRZOXNiQ1lmdVNnd0JEZ1F3?=
 =?utf-8?B?V3VEVE5CZUxaZytJZ2NoT1dzMW4vUTIycEhnYzRTL1BCTUllKzhpbXhBOGs4?=
 =?utf-8?B?a1AzdWE0dGhuVmZDeG9LRG4vRmFCcGpydFJIUlBySktDSzFlcXRyMnFFYmxE?=
 =?utf-8?B?SlVCeno5WlpyaDRTV0lWcWxSODFJRitOSTZwTmlCVzVSOVQ4czNrVzhCamZE?=
 =?utf-8?B?WnJoS0Z6N2xvTmVrNXI5QkdGaCswSUJwKysyazNrL3NEdndlZnJsQlRWMVBi?=
 =?utf-8?B?bFJYL2syWXFrOWhNOEVKYTRXZkg1WVFEYmZTSXE2enBIaVZuNkhacDJ5dUI5?=
 =?utf-8?B?ZlFIblk0dFZDSEZDVFc2aVJFakJHL1poU2VUdUV2OGdCYm9ZUVptNE5BdkYy?=
 =?utf-8?B?ak9zZDRwbmFLa0I3M1VPVkFTOHhIdklremlsTmFsejRXc2JtTUw2RThHaXJU?=
 =?utf-8?B?QW51RVBlbEdXK1hxTHJjajk1T0dEWFdQN2xZSWhCaDhYSk8zMUhkNm8yL3B3?=
 =?utf-8?B?N3prU2FHYjB5MUZ6WWRlcTRKYWxCazdXeGxPMzA4S0ZHYWk1emF5SGNaK3oz?=
 =?utf-8?B?dzQrSVpUR0dQL1BjZ01KOG5qc29YRHlCcktPMzkxKzh2aEJsSmhCWUw3M0pw?=
 =?utf-8?B?ZEsvRkZLNEpKZUQwVWpDcHRQRUgyWVI3Y3ZyR2xQVkpqbkdsZ3RlOENWTHJi?=
 =?utf-8?B?ZjhtRDRjMUROOCs4U2JPYVM4d2Rld2VRTXpiRFVMMjhkczJCYnltMDZPRVI1?=
 =?utf-8?B?Vlh0bWtLZHMwejRuazl6NXJ4dGxTbG15c0x0Z2gya3h3ODNqZExsQjBIL3RI?=
 =?utf-8?B?Ukl2RTNCMjY3dVlLMXBFVUJHUjVlaHROdFhFK1ZWRFV1RFpOTFpyM2NRd1I0?=
 =?utf-8?B?Rys1UlNrTHN0aW42dTlqakFLMGdwNGlJcVhOZ1ZOK05xd0lkNVJvNW9SWGJ2?=
 =?utf-8?B?TDFmMnRQczFLSmxpV0hpQkE1OU1Nd1MrTGpwYWRYVlJrZ1JTQnYwY1lYY2xK?=
 =?utf-8?Q?HSIzCqZFbSQlkpUvWet9skvXNL6ows=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVVZektRMUU3aWtVbXkwUjZWeFBXWk1nU0VzYjhUUmNUTjdBZjhmUThLZ1do?=
 =?utf-8?B?bXMybWs4QjR2aG4zVThwVFhyMi91UVBZWUdieHMrL1dzY0k0WU5hUERLbzdH?=
 =?utf-8?B?VUZjZ2NsYWQ5NW9sSmcrZzBqZENraWdORFRKd3hUei8rQTdINmhCQXdCUDJ0?=
 =?utf-8?B?amgwWmJROFowc3FXQWZQcUpZSTVuOW9zTm5JOEkrMENpY0xGUHk4cEx3VDVM?=
 =?utf-8?B?ZWthYWs5MmlIWnRNcmcvaS9yK2h5ajVxRjJMSWNzYUFjTjFZYzBKeU5rZkIz?=
 =?utf-8?B?TEtPOHcwWDVZajlvUTNBUFRkeXZ5WURVUG54S2RSWmgxLzJOZ281ZFBuSXRT?=
 =?utf-8?B?bXNFb2t3RkxUa0Y1WElnWUh3ckJFN2ZGazh0QkhlMmlhYWhtUlRhaEppWGYz?=
 =?utf-8?B?Y0ZscnNLZmIxeWszV2Y5czFCUDY3L0p4Szg5V2dhRjVDc0tHNUdKQmRDVEJN?=
 =?utf-8?B?bkllaUpiRGV3SjR0bVJmdjgvQ2kyUlBOazZnYjMrcnlNQjhQKzArd0U5VjFN?=
 =?utf-8?B?Mi9JR2xMNDZQbkhzS0h6N1hKbkxZNGNTbXdFQnQ5elcrTDdOeTA4RHg4Njhi?=
 =?utf-8?B?ZHVVNXlaTHU5NTJMNXpJL2xzT3dyNndCTEo5ajluNFMwRUtHL3hNN0Y4aVNl?=
 =?utf-8?B?bThZb3d2T1ZZOGpHMTZvUTl2OHFPV0dUckdxb3ZJNzZNZHpHYlIrQkxHL3BU?=
 =?utf-8?B?bVhUazF3b2U4eGcwVVUvK3ZqQXZNZ1lCMEZXSWoxZ09SWCt2NE0vNmFHSDlS?=
 =?utf-8?B?dlQrQzJzMCtKcUpYQkcra0VvN3lYNGpmMjZTZVdzc25zeUxvRHpGZEpRV3Ir?=
 =?utf-8?B?d2ZqdUZFeXVIdGF1Tkdmd0pLYWFpQkZBcXU0UEZadTdNMityaWNFRXdaREY0?=
 =?utf-8?B?UUx2Q2FwSEk5YzRBdWVoeUlBOHZheS90UkVrQ0JCS0QrcUhDV3cvTXM0U1Vl?=
 =?utf-8?B?ay96cWxKam5WZjllSFcyZDEzaForQTBZcFd0VWlPOWRQZU1wUE5tWGVUaEl0?=
 =?utf-8?B?VENNT2tqUUxyVWlNZEpNVHdITnA5aUEyQ2hMNnJyb1FnM3JJYUdLbXZrcmht?=
 =?utf-8?B?aU9FMXFHUmZvZ01HWHk5OHdNcVZjU1BmaEpGUExGd3RvWk1PY2NRdmZmbGE5?=
 =?utf-8?B?WGo4czd4b2Y0WE5NWFUwd21oazlLOGZYLyt1d0RGeWY1K0x3eHRZdFBtQ09k?=
 =?utf-8?B?dmJlOUhlTmFNK3dCQWZFRExWeExoNURpNzQvMEhGdzl3NEo2WDFNbkRTQzJ0?=
 =?utf-8?B?UTRuQVVpRjVoRDZHOG1sUnhZTWZKaHV4THJVaG9xUEdRWEt3OUdoeFZJRXJU?=
 =?utf-8?B?Ykg0aVgzQkJtQzZ5OURnYStXWXBSSGRsMW0rMytPRk1BZVQ4UDF4eFA2T005?=
 =?utf-8?B?Zlp1OU9KcG13Vk93WVhpcUpYWnFLOTZYZUMzc25WWXgzS0tQQytQTDA4Vldm?=
 =?utf-8?B?eGdManlxV0RObUFrMElTaWFaVkN1akVJZFdwQ204N0h2Vm1KbkNXK1FFR0xO?=
 =?utf-8?B?cDBrd3ZqMVFpcUpTV2VhYnU5dDZYTnhTS1RReS9KOEhtWDJHYmoxa3FPMEpx?=
 =?utf-8?B?ZXNMSllTUUVrY3hOYUk0aitSSXZxeVV0QmlXbnprTTd1T0ZqVk0yUldLMW9V?=
 =?utf-8?B?NTB6STJqZ1F3WjdaNVhTUkFiSmE2SmNTUjFxNlJqZlBYTjg4NUQ4Tmt2TmdY?=
 =?utf-8?B?WjJtaFRPRitCdDExUDhoaWUwRW5xMFRWNlA0VTRJMEkwQzVMZDREeUkzZVVS?=
 =?utf-8?B?K1VacFluNWhhYklDNVQ4ajh4cWUrbGJVOVQzTk1VL3hJY2tsVzhHQVQ4czJO?=
 =?utf-8?B?enpqU200SzdyRHUwRjVaM3BPZUdzcWZxRkNGeUxEUG9TV3lTdUtsd1VTSzlj?=
 =?utf-8?B?R1pMcmZrbnJnTHV0K25FOE0wWHkvWGJUVk9jc0pLdFZtOXJhRkZ1TDBoK0g1?=
 =?utf-8?B?Qmg3RytSbTFIbG1GL2k1UTNHakNmMlVLWk9VUFBvZEZCY2ZDNHRlOVdCWTQy?=
 =?utf-8?B?bmc0QWErR1o4VnNaRWFVeHAwQ0V1L3ZjTnpGWHBxNHFsZGd6VG5pUGVBNzFz?=
 =?utf-8?B?RVVScUM2SFFkSGVYTVZDdXVtNGtEMjM2NCt0U0pLTHJOMkJ0K3V4T2s4clJq?=
 =?utf-8?Q?H/snUqH4XRI7R/G+YLOGe5Ubn?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 346ddee3-1c8a-43f1-9dc2-08dda35ba7fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2025 11:33:41.2157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gT030CX/KPRDhMJ7zLJ9s6HgeomHzezXcSqjt8NzXYvFWdLxv1i+DMpdSsJ9WVyRe+xi0vkXt8ientwM7zr0Ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5277
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
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEx1Y2EgQ29lbGhv
DQo+IFNlbnQ6IFR1ZXNkYXksIDIwIE1heSAyMDI1IDExLjI3DQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAxLzJdIGRybS9pOTE1L2RrbDog
cmV0dXJuIGlmIHRjX3BvcnQgaXMgaW52YWxpZCBpbiBka2xfcGh5X3NldF9oaXBfaWR4KCkNCj4g
DQo+IEluIGRrbF9waHlfc2V0X2hpcF9pZHgoKSwgd2UgbWF5IHRyeSB0byBzaGlmdCBhIHZhbHVl
IG5lZ2F0aXZlbHksIHdob3NlIGJlaGF2aW9yIGlzIHVuZGVmaW5lZC4gIFRoaXMgY2FuIGhhcHBl
biBiZWNhdXNlIHdlIGRlZmluZQ0KPiBUQ19QT1JUX05PTkUgdG8gLTEsIHNvIHRoZW9yZXRpY2Fs
bHkgdGNfcG9ydCBjb3VsZCBiZSAtMS4gIFdlIHdpbGwgdGhlbiB1c2UgdGNfcG9ydCB0byBzaGlm
dCB0byB0aGUgY29ycmVjdCBhZGRyZXNzIG9mIHRoZSBzcGVjaWZpZWQNCj4gcG9ydCwgYnV0IGlm
IGl0J3MgbmVnYXRpdmUsIGFueXRoaW5nIGNhbiBoYXBwZW4uDQo+IA0KPiBJZiB0aGlzIGhhcHBl
bnMgb3IgdGNfcG9ydCBleGNlZWRzIEk5MTVfTUFYX1RDX1BPUlRTLCBpdCdzIHNhZmVyIHRvIHJl
dHVybiB3aXRoIGEgd2FybmluZyB0aGFuIHJpc2sgYW4gaW52YWxpZCB3cml0ZS4NCj4gDQoNClRv
IG1lIHRoZSBhcHByb2FjaCBsb29rcyB2YWxpZC4NCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xh
IDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogTHVjYSBDb2VsaG8g
PGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RrbF9waHkuYyB8IDQgKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGtsX3BoeS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ka2xfcGh5LmMNCj4gaW5kZXggZGFkNzE5MjEzMmFkLi4zNWU5MTll
YWUzNjkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGtsX3BoeS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGts
X3BoeS5jDQo+IEBAIC0yNSw3ICsyNSw5IEBAIGRrbF9waHlfc2V0X2hpcF9pZHgoc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXksIHN0cnVjdCBpbnRlbF9ka2xfcGh5X3JlZyByZWcpICB7DQo+
ICAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBES0xfUkVHX1RDX1BPUlQocmVnKTsNCj4gDQo+IC0J
ZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCB0Y19wb3J0IDwgVENfUE9SVF8xIHx8IHRjX3BvcnQg
Pj0gSTkxNV9NQVhfVENfUE9SVFMpOw0KPiArCWlmIChkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0s
DQo+ICsJCQl0Y19wb3J0IDwgVENfUE9SVF8xIHx8IHRjX3BvcnQgPj0gSTkxNV9NQVhfVENfUE9S
VFMpKQ0KPiArCQlyZXR1cm47DQo+IA0KPiAgCWludGVsX2RlX3dyaXRlKGRpc3BsYXksDQo+ICAJ
CSAgICAgICBISVBfSU5ERVhfUkVHKHRjX3BvcnQpLA0KPiAtLQ0KPiAyLjQ3LjINCg0K
