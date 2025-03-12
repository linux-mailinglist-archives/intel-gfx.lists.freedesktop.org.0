Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3ABA5DC48
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 13:06:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1329510E778;
	Wed, 12 Mar 2025 12:06:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1x0xbXG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61BBC10E774;
 Wed, 12 Mar 2025 12:06:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741781197; x=1773317197;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=m/nUB4DeCOBdT50ze4a2gbEla3Xg8/G3kk06CLAMJBU=;
 b=T1x0xbXGX1nHOWR2QKe5sDuatJMNHmo5hvyx37oji6aKWwHNMuFQqiF0
 3dDfbw8FKIEObKspuQTr+DaWbXFnvep5iPlZEHQ0+w5wfh8tHLkd6+2r7
 LuumiCW7zznv8k2m3VoIt0dfsL3VcXuw3v6VDrOkdq8DbCW1BVza0l7cK
 bTNUXcpj6l3JvbSoD6VhxEW8Y5LlSDj8Qz/cEY11Zlq8/iS4Qj5nZrdo9
 NB+rcFeJif+tN/3GNp6uT4t4Elro4okQgMfj+ygVLtP3IZnGG/VAp37w5
 UN9ke8NmdPJi775nsjFrleFnN1lnFYS64rerEU3u6CAlVbSP0LJm1FVkX Q==;
X-CSE-ConnectionGUID: yxJd6UfNQQy5Purdlxckiw==
X-CSE-MsgGUID: RDYY9HkWTEOfCuH4kpPXeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43035464"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="43035464"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 05:06:36 -0700
X-CSE-ConnectionGUID: eaHISaP3Q/iyJN62RlbJ4g==
X-CSE-MsgGUID: d5edJ64RSbKjh/rbRRlejw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="125670042"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 05:06:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 05:06:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 05:06:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 05:06:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Y9x+KD6oXw9z/8OP7S+bggE8QnU4X5rLempPswsnFZewTiSFCqrsFBHFVJFt677XLPmVmB9T4MiLKTZB+OKIurlRcY5vrZ7b6IQEzBnqw7y+9X8Wd5dAez6tOBjizpo6/NFjTkvjJ94lbAPdqr3GV8oPwkrDe5K4R0CAyWX9g/Q4Pdjn3YE+++S8ovgIFNY6voqjgrvFk5kY6xChfdcXTp1Olx6fbD1R+SoLZ244GDdFK82fwwAixOva/4uSLP1fWYr4Xp0lOpBsfnZCZWHeF7AyYqEmOd3i6tWnBj/QKTGi8pH4g0jQFcmB7PxcxXz1j/FvpOixIFgLc8rsGJqRFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m/nUB4DeCOBdT50ze4a2gbEla3Xg8/G3kk06CLAMJBU=;
 b=fyyAgsNkvF3wcl1G7VF92zTw9TK2B3s461uNKdUV/F7+eVsFza8UixHxBeTOEZ24LL2xiC/plHqkYgZXyGUkrFk5LmIcjUmgrKAcu0UJqomVIas71xEnV66sL1nJs0yJK6+Yjk1FgaF3654oCA7G47ROw/Uyg7X34kqKm+jtUV5kK4vHzo8a0TAsuG+svFoPpEA40ZItbxqORJozlDHgwO2rOzRnw4alIKLvByk07CJEK6uh1y0tzijVMKK0JKxGBXhUCBaV2fH4h6nxUh+wwmMR8C4ht4ZDzs8bCkuXv4A+qqULdoxjc7iG0+cSwsjMiGDmnqUVo0eNeurWIBpQbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5861.namprd11.prod.outlook.com (2603:10b6:510:133::8)
 by IA0PR11MB8378.namprd11.prod.outlook.com (2603:10b6:208:48e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 12:06:05 +0000
Received: from PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::b320:4d74:ffda:ecbf]) by PH7PR11MB5861.namprd11.prod.outlook.com
 ([fe80::b320:4d74:ffda:ecbf%6]) with mapi id 15.20.8489.028; Wed, 12 Mar 2025
 12:06:05 +0000
From: "Knop, Ryszard" <ryszard.knop@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: =?utf-8?B?UmU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06?=
 =?utf-8?Q?_Clean_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wbTogQ2xl?=
 =?utf-8?Q?an_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Index: AQHbkzSMR5KPV+YhLEGPcSDFTVksHrNvRjwAgAAhm4A=
Date: Wed, 12 Mar 2025 12:06:05 +0000
Message-ID: <8802f57555667355edd4e505c0fde5cf48b67978.camel@intel.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <174173495369.22166.15885117229945257147@18a75f3d1eae>
 <Z9FZailpdSXuyxKv@intel.com>
 <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US, pl-PL
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5861:EE_|IA0PR11MB8378:EE_
x-ms-office365-filtering-correlation-id: 2cd32b70-1637-478b-8f7a-08dd615e441f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bEpDRGZpbXpUMFpCcS9wRVpXVEF0aURzSHE5Tmg1MWtGdFlTekdzNGkwL0Jz?=
 =?utf-8?B?UWt4TE9nREtVR0twUGF4OUhpdjhGNncvNzVtbjVONkFFWU5KL29QWjRybUJE?=
 =?utf-8?B?UmQyVGxLd0NpN3VCV2w4RG1ZcU5lcW9UNVVGVHYwTWU0QXJ1RUVzMzk5ekYr?=
 =?utf-8?B?Nk1ZVjk3blRSQTZTd1VveXVhRHVmRk1kZzN5UHIwQVZLTk5FZHVhRUlYZFpY?=
 =?utf-8?B?c2ZMZ1NRVkdZMnRjdTdPdVdGR05MeWkrblBlbUo0dXZ5U0tCQmpSVUdIK3JT?=
 =?utf-8?B?aVRzNmdBWk56R1lOaVgwU2laSm1jSEE3dEphMDlDWC9sekpKQmRGbzZnYnNQ?=
 =?utf-8?B?M3p2TS9hdzIrM1J6N2xFbVBvYWx1bUxaeWdIczk3YzZYNUpnK3R6YkVQdUd6?=
 =?utf-8?B?cm0vaTFlOXVaSXBRZzZuNzJFNHdaUFV3dGVaS0R1aGxFc1R3UDcyREtxdlBu?=
 =?utf-8?B?emV3SnFSYk1aRUFpUExtWm9KMU40Wk5iekhFMmw0QjhhT0FhRlJuZUtMeDZF?=
 =?utf-8?B?UHVHVGxtYit4bVg3dVdyMzUrditqSkY5U1VYWDIzN3ROQWVuNnJmbGdmb0tT?=
 =?utf-8?B?REN5VU4rZm1lQXllRUJjRlFOdjExWXljbkZNSTVoVStjTjd6bkJudXVJdjBL?=
 =?utf-8?B?WDZCZ1RibEtVNlZZYUV1ZzdGZy8vb3hXeG13YzhvYXU1K3VMTGxoWXBFWitM?=
 =?utf-8?B?K3FyVFdIZ3pSSzM4Nkg2Y0F0VkMvV3NibGFaVmdBK0x3bCtrWSthS0VHa1dK?=
 =?utf-8?B?aFRPTjRNWEhUUmE0V2Q5cHlLMFo3NTI0VFVVejVnQm5oYktlZVJhcTc2ajVu?=
 =?utf-8?B?dVUxcWxXYmgxUlVDdUc4UTZCV3JtamFwamFHdTNjSVJHVnhyS1pBTWtSWlFq?=
 =?utf-8?B?b29iR2FhOXNGZmpSaGgxVUhCd3ZiOVozVHAxWDVZT3lNZitPV2tyOXlKUkxV?=
 =?utf-8?B?bGFkT1VvYjU5Nzg1dDdxdE1XQ2NVRmNmVERjVmg2a0tEeHhmQmxiVTR0YnFR?=
 =?utf-8?B?Y1pGNFdGMUdWY0ttWk00KzBtMVo1TzlPM1Q5MGlFQkJ4Z01sRXhrRExzekFw?=
 =?utf-8?B?NTd5Wld4MGNOZERHNzlRQkZWbys4MGova2FRcWRUTkc4VnV6dEc3WUhLOENr?=
 =?utf-8?B?bEFtQnJFRHo1bnFhSGZpTkNONFl0TlAvK1E0WnBRRTZHZUZCdVdLbGQxb3Ax?=
 =?utf-8?B?VmZkTzltM3VuZEJaalh0ME8yUnNraVF5SzdzKzVjT01hM3RQSXVtRks2bEpT?=
 =?utf-8?B?aGJzQy9laHQwLzhvSm96M1pORSt2djlXV1QwSXQ0akhqSTV4bEtBc0lBR1da?=
 =?utf-8?B?cFA2cFFpL3hyb1FQTTlUTFRMTDlRaDdabmhkQ2QveDNlMXhVazFXU0tqRHpk?=
 =?utf-8?B?aG5OMEpPSGdpVklNYmRrcFVYc092TkpMcVREOTRtbTQ4cVF2OTRhYUp3bDhD?=
 =?utf-8?B?bitCYkJkeThaUG5hY1A2c0hiWUNxbmZMYk9GdnRNazlMVDNPYlVLUGtscHc1?=
 =?utf-8?B?NTd4bEtyZTRwVkQ0RWx0MWk0NytKY2ZHSFVDYU5aSFJYZTIxUzV0RnhQVlhU?=
 =?utf-8?B?WkdFRXJuVWxzYTk2VlR2N2Y0bVRVT0dha2ZCZVErdE5rZndMTEFJSXp1T3Ja?=
 =?utf-8?B?SVI5dk52QWJDQUVLMnVUM0hHUEREQnJmdkY4UXpGRWZobEhoK0NQL3pOZkdt?=
 =?utf-8?B?RHBlQkhrNzN3N0s0MjNNNHU0dmRRQ3RiT0R2UGhYUC9HWFZKdHRJOU9tcVFs?=
 =?utf-8?B?OS9wcnRWQXJuN1hwUXVRM0xXWFFUaktNbEpZMk9OOWJJaU1adWpGaUhscTh1?=
 =?utf-8?B?TUk4MlVQdDA0NFJQc09OLzNGMDhYVzQyandyZjV5MStUZUhRSDdjUnRsem9w?=
 =?utf-8?Q?xioKpbxYCrNLR?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5861.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0RVdVM2czliVnljUXZ3Qk5jcldsa0tkUllqOFRaN1dJcTMwZ0N5dFFvVWZH?=
 =?utf-8?B?bzR6amtLM1VRcnNUTE1HSHZzejQxMTlYY3JyQzE1QzA5aVVZdWNxSG9BNDZJ?=
 =?utf-8?B?czJZRWtsMG1nbzEzdmZ1aHRzN0Vad3ovSW1lYmpxNUE0V09qYjN4NEptTVpa?=
 =?utf-8?B?QlhzcDAyT01pbW9hcXlneDM2RDRqc296OEdrTDBCNDZ4d21qNlRhNzFCczRK?=
 =?utf-8?B?RkhwWDNVOS9hRDcyNFVncytHV3M2K05TV1ZOQnJLZy9CSE9MN2NCK2dhbXdJ?=
 =?utf-8?B?cWdGUUVxSm9ZS0F5S2NvbDEzSmxvUnZEc3NtZXYxVkhTaURKNnc1MlZ3RXY5?=
 =?utf-8?B?T2F2K0VjNjNIWFQrTTdhQ2VJQytjdnlnQ0F1UnZFWjVINkV4dGlna0VSTlBX?=
 =?utf-8?B?bXQvZEQ0U0I2WHk5cktaa0VGL1J3bjJFY1VsaitoaENQemJqcEN3UVJkcmtC?=
 =?utf-8?B?czA3YUlpMmhyWms1RFJkTnhjM0VHdlhEWjR5MGNCUlFDeHhzcitsRjN4YjM4?=
 =?utf-8?B?alZXQy93UzZZNVZVZm5zdHZkV3N0bkx0aERVU3RJbndCOWJtWnhmWW5QVU5h?=
 =?utf-8?B?SEpkS0xScmRZeUFXSVdCYXdmb2dVbzFOUXVqaHUvVnNFS3FIVjJucnhBM29z?=
 =?utf-8?B?VHJKdEpQaTVCRUJJeWlQQlk0aTU5YUo5clJseXNiL0tlMVV6NzE5eEkwL2Zy?=
 =?utf-8?B?N0t6MlhHdXUrdEJVWnJsL0d6eHhaVFNua211TVR1T3J5OVdoRXYrMHZLbWc0?=
 =?utf-8?B?c1l1b3BnN3E1L3E0eE9ySXdKeUR1OFc5U1A0cjBoclcxRjduTHZVN0ZvdTMr?=
 =?utf-8?B?VDYzVXlHT3RKRTNUclFwbHRSejJOajBtRGJjbnBYSkdPSlU4M0dNWFdOK3hC?=
 =?utf-8?B?bC9CUmlZWWhVRjhKTUs2ZjVuOHJkZ2xOR0pzVmp3WjVXMFYrMUhpcHpId3c1?=
 =?utf-8?B?aEdYWVFoVyt5MG5wT05XeFhDQ2gzZ0RhZmw2NzNIR1BDWDlZbFlVOFVYeDBP?=
 =?utf-8?B?bnBvR3FnTlFXemRlNmszWnI5cUdJQk9jZkxuZklpVjlQMTdMZ1A0ZHF1bnpp?=
 =?utf-8?B?cWRsS1ZTNnM4Y1JBTHUzL25idDcwVS9WSnZialZtRzB6aWhDKzE4ZjRNS1Bk?=
 =?utf-8?B?NncrUHQ4Yy96cFFKYUJyajFrWGtrMzJSNWFqMlVXa3UwTjJTVmtEK2dhSVUw?=
 =?utf-8?B?a0hldkpLRlQ5OE11M3NaNUhhaFNwVEpOckxMWE5pV3dhYjVvSVE2N1hCYWRv?=
 =?utf-8?B?Smc5Wm05TW1vUEZEenlIYXk1cWNmMVJVYlFFV01NWmxvS0tNMTU0NHN4Q2lC?=
 =?utf-8?B?L3pLVnM3US9sbDR4U2IxMEk4aVRYbjJLcm1uRWFuZGRZY3IxN2g2bUpYVCtz?=
 =?utf-8?B?czdpNjdOWmMzOUtDMjVlWFl1cUdmak82TXZ0UVVrMm93NWV0eGJhVTlWMEp3?=
 =?utf-8?B?dk56THR1TU82V0F0Wis5MzdGSVRiYk5xTjlkQXI1dTBJdzVpa2JVZlBzY1ky?=
 =?utf-8?B?YW9UZXp2NFFzcHBJbUJ4QmFINE9mblRBczg2Z3lPZEM0R0kvVFdPcHFjZ1BE?=
 =?utf-8?B?QmdTL1BGNHdOdjV4WCtFT3FxYkovdDBDdm1Ic1B6Z2pUWTJWUWxqOFI0aXNo?=
 =?utf-8?B?Tjg5bit0NVV3dUFUSGUrb3puNnA0ZHRwdUxYRXFkTkF0VUFLbmJmWWRicWlY?=
 =?utf-8?B?ZUVsdGxhNHBTaTVFNGluZ1VKRWNDSDRnY3NlaXpWNFdzMlJIN0hNRzNGOG83?=
 =?utf-8?B?MndiZDVwNEZ1SW9tQnI1d0hmbTNvWHVHbzRyQkNYNzgvYSt6NjBEY3hJeUNi?=
 =?utf-8?B?aE9uelQvUWM3cDQvUHlXQ0p2enB1eHJVQ1FOaXdUQkJYdUxtenJBZUNsMFVa?=
 =?utf-8?B?Y0VMTFZZbDAwQkdIVkpxdVVsRFR5OFBoaXpYSW51UUJ0OVkxbGhaRG81bThm?=
 =?utf-8?B?azZrZCtMaTltMEptVFAxMzlGbHZyUkVoOHhXcVJxTG0wTVBmdnlDZTNCbWVa?=
 =?utf-8?B?Sk1uSys1d0xYVllUa0w1ZlRTWEtCTS9MaVN1cnJMV0hDOE4xOTh0d3N3Ri9I?=
 =?utf-8?B?M3JVM0xiTzFyQzIxRjhTaysvVC9DYTZaUi81TXcyWjN3MGx5UDNHQ3UrVDh2?=
 =?utf-8?B?Q01XK1BHTDB0cVA4TWZZV1A5YjdmOEtHakNjU0hqVUpGNGN0NWFJMm1CWlB4?=
 =?utf-8?B?RFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <84B7AC1DC0925245BCE7F50175961FD0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5861.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cd32b70-1637-478b-8f7a-08dd615e441f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 12:06:05.2992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EcQwrz9yBfw1b7+zEktWoJLwQhujRK8tO45LtAdppDVtvYgThQNFzpv1DFF6IpC6fUXAwqP2VH3c3U6SkMIvUw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8378
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

T24gV2VkLCAyMDI1LTAzLTEyIGF0IDEwOjA1ICswMDAwLCBTYWFyaW5lbiwgSmFuaSB3cm90ZToN
Cj4gSGksIA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBP
ZiBWaWxsZQ0KPiA+IFN5cmrDpGzDpA0KPiA+IFNlbnQ6IFdlZG5lc2RheSwgMTIgTWFyY2ggMjAy
NSAxMS41Mw0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6
IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gU3ViamVjdDogUmU6IOKc
lyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06IENsZWFuIHVwIHRoZSBoaWJl
cm5hdGUNCj4gPiB2cy4gUENJIEQzIHF1aXJrIChyZXYyKQ0KPiA+IA0KPiA+IE9uIFR1ZSwgTWFy
IDExLCAyMDI1IGF0IDExOjE1OjUzUE0gLTAwMDAsIFBhdGNod29yayB3cm90ZToNCj4gPiA+ID09
IFNlcmllcyBEZXRhaWxzID09DQo+ID4gPiANCj4gPiA+IFNlcmllczogZHJtL2k5MTUvcG06IENs
ZWFuIHVwIHRoZSBoaWJlcm5hdGUgdnMuIFBDSSBEMyBxdWlyayAocmV2MikNCj4gPiA+IFVSTCAg
IDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzkwOTcvDQo+ID4g
PiBTdGF0ZSA6IGZhaWx1cmUNCj4gPiA+IA0KPiA+ID4gPT0gU3VtbWFyeSA9PQ0KPiA+ID4gDQo+
ID4gPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gPiA+ICAgKiBpZ3RAa21zX2Fk
ZGZiX2Jhc2ljQHRvby1oaWdoOg0KPiA+ID4gICAgIC0gZmkta2JsLTg4MDlnOiAgICAgICBOT1RS
VU4gLT4gW0ZBSUxdWzZdICszIG90aGVyIHRlc3RzIGZhaWwNCj4gPiA+ICAgIFs2XTogaHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTM5MDk3djIvZmkt
a2JsLQ0KPiA+IDg4MDlnL2lndEBrbXNfYWRkZmJfYmFzaWNAdG9vLWhpZ2guaHRtbA0KPiA+IA0K
PiA+IEEgYnVuY2ggb2Ygc3R1ZmYgc2VlbXMgdG8gaGF2ZSBicm9rZW4gaW4gQ0k6DQo+ID4gLSBz
b21ldGhpbmcgaXMgbm93IGxvYWRpbmcgYW1kZ3B1IHdoZW4gd2UgZGlkbid0IHdhbnQgaXQgbG9h
ZGVkDQo+IE9uIGJvb3QgSSBzZWUgDQo+IDw2PlsgICAgMC4wMDAwMDBdIENvbW1hbmQgbGluZTog
Qk9PVF9JTUFHRT0vYm9vdC9kcm1faW50ZWwgcm9vdD0vZGV2L252bWUwbjFwMiByb290d2FpdCBm
c2NrLnJlcGFpcj15ZXMgbm1pX3dhdGNoZG9nPXBhbmljLGF1dG8gcGFuaWM9NSBzb2Z0ZG9nLnNv
ZnRfcGFuaWM9NSBsb2dfYnVmX2xlbj0xTSB0cmFjZV9jbG9jaz1nbG9iYWwgeGUuZm9yY2VfcHJv
YmU9KiBpOTE1LmZvcmNlX3Byb2JlPSogZHJtLmRlYnVnPTB4ZSBtb2Rwcm9iZS5ibGFja2xpc3Q9
eGUsaTkxNSxhc3QgbW9kcHJvYmUuYmxhY2tsaXN0PWFtZGdwdSBybw0KPiANCj4gSXMgdGhhdCBu
b3QgZW5vdWdoPyANCg0KSXQgbG9va3MgbGlrZSByZW1vdmluZyB0aGUgc25kX2hkYV9pbnRlbCBi
bGFja2xpc3QgY2F1c2VzIHRoaXMsIHNlZToNCg0KdGVzdHJ1bm5lckBmaS1rYmwtODgwOWc6fiQg
bHNwY2kgLXYgLXMgIjAxOjAwLjEiDQowMTowMC4xIEF1ZGlvIGRldmljZTogQWR2YW5jZWQgTWlj
cm8gRGV2aWNlcywgSW5jLiBbQU1EL0FUSV0gUG9sYXJpcyAyMiBIRE1JIEF1ZGlvDQogICAgICAg
IFN1YnN5c3RlbTogSW50ZWwgQ29ycG9yYXRpb24gUG9sYXJpcyAyMiBIRE1JIEF1ZGlvDQogICAg
ICAgIEZsYWdzOiBidXMgbWFzdGVyLCBmYXN0IGRldnNlbCwgbGF0ZW5jeSAwLCBJUlEgMTYzLCBJ
T01NVSBncm91cCAxDQogICAgICAgIE1lbW9yeSBhdCBkYjU2MDAwMCAoNjQtYml0LCBub24tcHJl
ZmV0Y2hhYmxlKSBbc2l6ZT0xNktdDQogICAgICAgIENhcGFiaWxpdGllczogPGFjY2VzcyBkZW5p
ZWQ+DQogICAgICAgIEtlcm5lbCBkcml2ZXIgaW4gdXNlOiBzbmRfaGRhX2ludGVsDQogICAgICAg
IEtlcm5lbCBtb2R1bGVzOiBzbmRfaGRhX2ludGVsDQoNCitMdWNhcywgc2hvdWxkIHdlIHJldmVy
dCB0aGF0Pw0KDQo+IA0KPiA+IC0gdGhlIGZ1bGwgZG1lc2cgaGFzIGJlZW4gbG9zdCBzbyBJIGNh
bid0IGV2ZW4gZmluZCBvdXQgd2hlbiBhbWRncHUgIGdvdCBsb2FkZWQNCj4gQ0kgdGVhbSwgY2Fu
IHlvdSBnZXQgYWxsIGxvZ3MgdHJhbnNmZXJyZWQgPyANCj4gT24gZGlnZ2luZyBpbnRlcm5hbGx5
IEkgc2VlIGZyb20gZG1lc2cgKHN0YXJ0IGZyb20gdGhhdCBmaWxlKSANCj4gDQo+IDw3PlsgICAz
OS4zNjU2MjldIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6IGV4ZWN1dGluZw0KPiA8Nz5bICAgMzku
MzczOTkyXSBbSUdUXSBpOTE1X21vZHVsZV9sb2FkOiBzdGFydGluZyBzdWJ0ZXN0IGxvYWQNCj4g
PDc+WyAgIDM5LjM3NjA5MV0gW0lHVF0gaTkxNV9tb2R1bGVfbG9hZDogZmluaXNoZWQgc3VidGVz
dCBsb2FkLCBTS0lQDQo+IDw3PlsgICAzOS4zNzYxOTddIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6
IGV4aXRpbmcsIHJldD03Nw0KPiA8Nz5bICAgMzkuNTUxNzQzXSBbSUdUXSBjb3JlX2F1dGg6IGV4
ZWN1dGluZw0KPiA8Nj5bICAgNDIuMTk2ODkyXSBbZHJtXSBhbWRncHUga2VybmVsIG1vZGVzZXR0
aW5nIGVuYWJsZWQuDQo+IDw3PlsgICA0Mi4xOTcwNjVdIFtkcm06YW1kZ3B1X2FjcGlfZGV0ZWN0
IFthbWRncHVdXSBObyBtYXRjaGluZyBhY3BpIGRldmljZSBmb3VuZCBmb3IgQU1EMzAwMA0KPiA8
Nj5bICAgNDIuMTk4MDY5XSBhbWRncHU6IFZpcnR1YWwgQ1JBVCB0YWJsZSBjcmVhdGVkIGZvciBD
UFUNCj4gPDY+WyAgIDQyLjE5ODkzM10gYW1kZ3B1OiBUb3BvbG9neTogQWRkIENQVSBub2RlDQo+
IDw2PlsgICA0Mi4yMDA1OTVdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGVuYWJsaW5nIGRldmljZSAo
MDAwNiAtPiAwMDA3KQ0KPiA8Nj5bICAgNDIuMjAxMzUyXSBbZHJtXSBpbml0aWFsaXppbmcga2Vy
bmVsIG1vZGVzZXR0aW5nIChWRUdBTSAweDEwMDI6MHg2OTRDIDB4ODA4NjoweDIwNzMgMHhDMCku
DQo+IDw2PlsgICA0Mi4yMDE0MThdIFtkcm1dIHJlZ2lzdGVyIG1taW8gYmFzZTogMHhEQjUwMDAw
MA0KPiA8Nj5bICAgNDIuMjAxNDIwXSBbZHJtXSByZWdpc3RlciBtbWlvIHNpemU6IDI2MjE0NA0K
PiA8Nj5bICAgNDIuMjAyMzA3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVk
IGlwIGJsb2NrIG51bWJlciAwIDx2aV9jb21tb24+DQo+IDw2PlsgICA0Mi4yMDIzMTFdIGFtZGdw
dSAwMDAwOjAxOjAwLjA6IGFtZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyIDEgPGdtY192
OF8wPg0KPiA8Nj5bICAgNDIuMjAyMzE0XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRl
dGVjdGVkIGlwIGJsb2NrIG51bWJlciAyIDx0b25nYV9paD4NCj4gPDY+WyAgIDQyLjIwMjMxNl0g
YW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1iZXIgMyA8
Z2Z4X3Y4XzA+DQo+IDw2PlsgICA0Mi4yMDIzMThdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFtZGdw
dTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyIDQgPHNkbWFfdjNfMD4NCj4gPDY+WyAgIDQyLjIw
MjMyMV0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1i
ZXIgNSA8cG93ZXJwbGF5Pg0KPiA8Nj5bICAgNDIuMjAyMzIzXSBhbWRncHUgMDAwMDowMTowMC4w
OiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrIG51bWJlciA2IDxkbT4NCj4gPDY+WyAgIDQyLjIw
MjMyNV0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jayBudW1i
ZXIgNyA8dXZkX3Y2XzA+DQo+IDw2PlsgICA0Mi4yMDIzMjddIGFtZGdwdSAwMDAwOjAxOjAwLjA6
IGFtZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sgbnVtYmVyIDggPHZjZV92M18wPg0KPiA8Nj5bICAg
NDIuMjAyNDI3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IEZldGNoZWQgVkJJT1MgZnJv
bSBWRkNUDQo+IDw2PlsgICA0Mi4yMDI0NDldIGFtZGdwdTogQVRPTSBCSU9TOiA0MDg0MzUuMTgw
MzAxLjA0cw0KPiA8Nj5bICAgNDIuMjI4MzQ4XSBbZHJtXSBVVkQgaXMgZW5hYmxlZCBpbiBWTSBt
b2RlDQo+IDw2PlsgICA0Mi4yMjgzNTNdIFtkcm1dIFVWRCBFTkMgaXMgZW5hYmxlZCBpbiBWTSBt
b2RlDQo+IDw2PlsgICA0Mi4yMjgzNTZdIFtkcm1dIFZDRSBlbmFibGVkIGluIFZNIG1vZGUNCj4g
PDY+WyAgIDQyLjIyODczNF0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogdmdhYXJiOiBkZWFjdGl2YXRl
IHZnYSBjb25zb2xlDQo+IA0KPiA+IA0KPiA+IC0tDQo+ID4gVmlsbGUgU3lyasOkbMOkDQo+ID4g
SW50ZWwNCg0K
