Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEBEC3216A
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 17:35:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33FAB10E644;
	Tue,  4 Nov 2025 16:35:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F/SjeeWQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0639210E644;
 Tue,  4 Nov 2025 16:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762274148; x=1793810148;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ehSlewdwA6sZEDVvpjE+tNOuHp4QyljcJ9eSpMcxMdU=;
 b=F/SjeeWQMZ4kYYhCsnoLBIIW6K+qnyuZy7b3DphTAXjM56V4QcEYn+S9
 OnJdSXd8c5H5uMkfyQUGRQtKY+1HkXETcJVERmy0q11/74v+JL+YagWvC
 YQRfEbta5tRFX0FyA/WnHd8NL5/juTHjTiVUp55ryYcSsopyZtqsSfqkV
 O2q/idcYpWc7cln3MsuSLV6sdM8polmHqo5VGz8n4RHBIcD3KJLecknFH
 LUAYDGgSgkWcV/LmdY4yOO5s8hOHYx5mVob3ilIoNKdE5yZSY7YbWxf95
 19uDac7Cbp4WvA/G4Wo72vNMcaicwKsXx51uCbypmbcd+bjt1fwc0mAvc A==;
X-CSE-ConnectionGUID: RJLssabtRySHpNMg84ONBQ==
X-CSE-MsgGUID: ak7QFGB2QpmIeg3hLxxlUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64523938"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="64523938"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:35:48 -0800
X-CSE-ConnectionGUID: FI0AaERuRYeDOwGYFjVidg==
X-CSE-MsgGUID: RQyxgI1tQ2+Rm2hWsbPlJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="186496040"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 08:35:47 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:35:47 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 08:35:47 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 08:35:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sJpI0knRlKzevdNO9WICvHWFP+49dKra4xNbSMLoxDRDjdAboMU/lSGAbk817fjUY300VhC3RBSSUl5DCWGfV3J/edPhkl1p1lk5yPgS2Yel14S1S5IuJKeJevxA4nZxy5unegf0+lskCAfG8zaQbYh3GPFcCgphfuIB32krlR/SqnLFe2rgtSVnSoll0AmS93V5xaNjY2zHmiC02sqx1osHQQnYYiKM2FCLy0rc7nXqwnGndtgwnTNNeGBhdGxj/a73ENOxkKrnQiPnFf11DcI4ewO95z/kUElSTxPi1GV7oM82PAUH14cLKXSOMI+ATWTNrF2qnnEWEYbMTRWbyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ehSlewdwA6sZEDVvpjE+tNOuHp4QyljcJ9eSpMcxMdU=;
 b=ICjyn4PilugqQIkvzybBr2pvn8d1QQtejNUt0J492z4Vcsy417hMZBjUi0Xro5Qvd+c52b1HoXJcsf4sieOEKPvgq/ev/RGOp7RwVPDK1VrZ1MgH0+B757krR6sVtZW+SaNIM9IJBCqsND2Vuej2QylGnKYIbbHbG/cOyokxqFUqFgcpuZg6M4nSBfcI7gs4MwdtaPgdfgL7m1pZ/swzMzez8Wh1ugHhZdvuOqn1Fa2d6EEs1c6uf6+yPgqR5fsGWHW4M19+b/6cwkaDrf58wL7rQ5wWZXiEeqfdPNHIp/QDRqD1ufgjYTVdYjD5FIRvNKDojoWq09jufPdq5WKLEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB5972.namprd11.prod.outlook.com (2603:10b6:8:5f::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9275.16; Tue, 4 Nov 2025 16:35:44 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9275.015; Tue, 4 Nov 2025
 16:35:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Hogander, Jouni" <jouni.hogander@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>
Subject: Re: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
Thread-Topic: [PATCH v3 21/29] drm/i915/xe3p_lpd: Enable system caching for FBC
Thread-Index: AQHcTOY79dedra/UAkyRADPDREq3rrThpn2AgAER1IA=
Date: Tue, 4 Nov 2025 16:35:43 +0000
Message-ID: <7bde5fa23c84894057bd52235f7065675e366083.camel@intel.com>
References: <20251103-xe3p_lpd-basic-enabling-v3-0-00e87b510ae7@intel.com>
 <20251103-xe3p_lpd-basic-enabling-v3-21-00e87b510ae7@intel.com>
 <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20251104001537.GX1207432@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB5972:EE_
x-ms-office365-filtering-correlation-id: 1b9f34d5-24e1-45e2-c325-08de1bc032f5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|10070799003|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?Nkc4ZTBWcWZxS0cyMk1ZQUNMbmp5OUtsR2tWR1didXpscXkzdFFIUE4wZ2lS?=
 =?utf-8?B?Z0wwdGdrTnU4UmF0OVIzcTB1c1ZNVEdxV0xPRno1ZkVKNzBKUVZpY1k4aTZu?=
 =?utf-8?B?c1dHQndjNDFWODdjTlNKTkFpWHZkTkFDUWxVRzRMdGJmVzI4dlc4cnZITFdm?=
 =?utf-8?B?cXB3N2xaM1VJRTZCaUdvVGxaRXV5Wnp5OFk5ZjJUL3Nrd3pzZlpiK1J6V0Ri?=
 =?utf-8?B?RlhENHc5Z05LL3FlTXVSYnE1MUp2aVdYa3VLbkxZaWt3UVpiR1FVSTZaYzVz?=
 =?utf-8?B?R2tTZHRJZXBMeVBPSU5YM2Y2Qng0czFUcGVOSWp5N3g2NjVYZm5JNUZZMWtZ?=
 =?utf-8?B?dFYzb2x6SllFSW81ZitKNENteFA2RElJRC9UQ0k2RVh4Z3ZvM1kwL1pmQVJw?=
 =?utf-8?B?dEh3V2tvdjJpa3o1UDhKNHhoV0JWY0x5ZlpBcWhCM0pXZjZOYUVmZTlwVHRX?=
 =?utf-8?B?b0tXNDgxaHJ0b0JBdWVmMjdFS0x1N3hrVVU0ckpJZEkxYkxCZGNHek51M2w5?=
 =?utf-8?B?d3pya0NieGdYcGx0M2h4bE43ZmRhcFV4Yy9iZUtPSjdURk1kY0s5bzcxMEs2?=
 =?utf-8?B?anBWQmhwdXkxdUt3QUdhdXhzMzVYZlBhZG00cW4xSVhhd1cwWEI5SVowRVNq?=
 =?utf-8?B?Q3FjdTdZWDdwYTYwbGZGOXFUdEorTzBBcE5INmZRcFpyOHN0WEVsTElrY1Fa?=
 =?utf-8?B?WWZSeTE5bDViKzB1NzVhR09oaUoyUjdkKzRZblVOTEtDVGlLSWV5d3pnOEY2?=
 =?utf-8?B?RXZtd1BUUTRvenRlR1phK2kyV1FKK0o0YnBwWTcrcjQ5OWFzR294ZW9WZGVL?=
 =?utf-8?B?cUplQjI0cVZwai80MnVxdE1URHFaQWdHMzc2bXBDODg1dURvQk50VjBqU0RK?=
 =?utf-8?B?dlZEWTBnRHNSWmZtR1pSTGtzZjVpTU44NzJWUFlNS3pvRmU1MjFkTnozWk5Y?=
 =?utf-8?B?T2Y4eDhCWUNodlhLV0Jra0piZTlzSjlRZTRqdHh0YTh4WlVUZVlPR1QwOUNU?=
 =?utf-8?B?WUt6a003VFpqOUlQU1ZDZ3llMWJNT3ErZm95OHcyY0tJbGxhTWNTVDQrR2Jk?=
 =?utf-8?B?N0ZJY3lvWmdKbUk3ZmVLVi8vcFVmS25oL0dPRHNORk5jU3l3NkhxWVQwSU9Y?=
 =?utf-8?B?dkV0emJUbWlRM3VvWlJGN1hWQ1pFa2lOdlZxNkgvUWdIanhsQ2h2enVXZEZt?=
 =?utf-8?B?QXhGVnZqbWR2S0ZuZU0rOU5XaEwwSkRyRjJKa0I4V2wxMzFib1pQQ0tFdUJ5?=
 =?utf-8?B?Tkp0STdGL3puN080QVoyNFlYcDNZVHVDbk92WkFQdXNqR1NRbWFkSXVaS0F6?=
 =?utf-8?B?MHVyNVNPdWEyZVBURDJCUjVIa09OUklUU2RaTTlrWE91NzFMOFZYV3BvZ05S?=
 =?utf-8?B?SzlIRDE1aVFGZldNdlBFVUNqWUdBaFhaekRTWmhQTDlCTFRyZHRtNHpYWXlD?=
 =?utf-8?B?c1hRZnNaWHNaT1VnYjBZL1NuY3dseHhOV0pTc2d0RERSbFc1d2dJSkd0emJU?=
 =?utf-8?B?SkJEYmFKcTBaa09ZWDB4bXRtRmFLbGJhTXZEQkRkd0JSczNlQW5EOGlQT0Ix?=
 =?utf-8?B?K2sxUjlYdHZQMG1HT09XRDNRSmhCbHQ3blJJMWVUbWlUZm1yYW8vTWloWTFp?=
 =?utf-8?B?ZS9LYWJOUXZGc3dldmM1VkNpRzZZVG4vcFRzRVhYeVFORkhPRGExcEs5UlBQ?=
 =?utf-8?B?T3k3azRuVVlaTE91MnppaXYxcitQN2R6a21VU0t3VjZGZ04zUUorTXBkTGxm?=
 =?utf-8?B?RFAwTkVJbUZvS1RVa1ZBSWtPcTNEWnUwYmUyQmlTNmNScmtSdjBtSFByeWNn?=
 =?utf-8?B?STRxd1U0aC80dUNNSjJuVFZmdjByT0dtV3RBVFN5M2pQdm1oZ3ZITmxjR1A3?=
 =?utf-8?B?dDUwK3hWYm9zVHVVb3JGUHZxY09FUzZKeUdrckx5VFVhZUN5cWRiZjc0TjRC?=
 =?utf-8?B?ZHNGZFEzbmxOS1gzd3p3Tnh6NmRSQ0o1Q2loaGVzM2d2cG9xeTFISGJEKzYw?=
 =?utf-8?B?VlFjN20wUVNHWUpydGhUeWRYRlJraU1VSGR3VEhzV1Z6WkRyTzdyVE1QMXdB?=
 =?utf-8?Q?LBc+F6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(10070799003)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2tFcktkY1JrQWNENGNyeGJrYlhaNlhLNWhDckNybXgrL3YxcndNNW5ycGl5?=
 =?utf-8?B?WWR0UFJYNWs4dG12WnQxUDVlM1dRRDBnUG1mTXVkeHpSZGFwYWIvc3k3eVVC?=
 =?utf-8?B?MnRuVzdIcm1sTnFidkRIdEVhTml6V1RSc0NGb2E0UFZGMktDRkM1U1UyeHR6?=
 =?utf-8?B?SFB4RlVSaG5NSUw5VThsRVRnejRsbUppNGxZOXp4a0VudVYwL1dGUkd1dGRV?=
 =?utf-8?B?VktQeXJBY0RiLzJlcnpvZyt5Zk9nYmxHOVNDdEkyanNobEJxY01jQm5aWS9D?=
 =?utf-8?B?dXNUcjBYdE5RTDhPMlNvaGs4R2NEVXlSTWtsYjFkbkZBRW1IRGJlMnJ0TFVn?=
 =?utf-8?B?bjVhbDl1d2YvU2NhVXA0WEFBWDAvZEZ1elBzNTFsSDJhVlRjcm5DaTJQcG1w?=
 =?utf-8?B?UTdERHJtRUNFemljc2xONC9GMGJiSFNhWTdMVHM4NHU5Nmw5K1crZnc1NzJo?=
 =?utf-8?B?RDM1Q1dJVzN5YWNKaUFNZVhCZWNQYVVQYjRZSlhuNHlvTDZKZUlmNTRreHJC?=
 =?utf-8?B?K1ZJcUVxQm00WXhpLzhERksrbTBmeFhEbFAxYTZIdGxxaUt5T2lvSUc5SzE3?=
 =?utf-8?B?dTdkN1RYRU0wODJ5Tis3YXNxYWl4cEpNRHpWREM1SHRiR1pPSGNRbjFIVHpD?=
 =?utf-8?B?bDA0U3NqU1hLa1B6TXJrMHVMQThPMWhYZkhRU3pVR2wvcTB4dUQ5UEhDZDNn?=
 =?utf-8?B?YWl4NytuK0VlVGVBbWU3NjRERktSRjEzY29rcklVOXIrOXJad1ZUVCtYbVJE?=
 =?utf-8?B?SkJxNkRoaTBBRGtsMTV3U0pHOEpvUDRIbVJmQlg0QlFEeVcyR3pyUm1zQXZv?=
 =?utf-8?B?UjZ3R0drck1MVjFZNHZUR3liK2V0REk0WHZzc1VwMCsvNUVqbFdVMnJLUzd4?=
 =?utf-8?B?UCs1REhFTTgyRC9CeEpPTkNpS3haOHk3RUUrN3NGT1N6d1FuZkVqcm9iSWM3?=
 =?utf-8?B?bUZVSzkyOWhtSjRZTWp3d1JPZDRpam90ZkFSTVZTZ0VBWTVwcXFESmYzMzRa?=
 =?utf-8?B?bVlFcUQra2oxREU5amxUUmdibWNzSmRXbDA4d2kzMWFiNXg0TEpLZUJVbnp4?=
 =?utf-8?B?WHNBanJ2UzJITFlId1hTeUI3bURXYmxPN1FOMVM2VFNFYWtIQ3YrQ2FwZVpi?=
 =?utf-8?B?aGZPOWx1dmEvbTh6Uml0RXN4UWh4V2N6RlprWGlsa3VUWUkxbkcvbGYyZStI?=
 =?utf-8?B?UkdXYjZIcjhtdzYxQmJVMzRVK2ZBVDVSNmk3Q1RpZ3RRS0VQcFBIRGRhMzFR?=
 =?utf-8?B?cnFQeHFXY0JTOE81dTVGb0ptTVhCR3o1cS9nbk96VHk0ZWEwNW95VElRZGZ5?=
 =?utf-8?B?ajlUMGJXbURxdXJ5ZGVtSk5NbmRLTlRUUmhHNXp5OTUvZWt1Y0ptbkNLZGJt?=
 =?utf-8?B?emdESnQ1b20xL1NxSmlkWThUM25WNmE2aUpHb041OEttSWZyK2d0SU5KV3Zp?=
 =?utf-8?B?aDZPaks4S0tYRnlGYjZhaTRaWUpUaXNXOHh0MjEyRW5OUlBOQXFaTnZ4ZVUy?=
 =?utf-8?B?ODVtQlgvclVpL0pVenBsblN3NXIrZVJSbzN6MklCZmNubW5kV2xEU3VMWE9Z?=
 =?utf-8?B?ZSs1eXF3amI1WDVnUWh2Qk0veDlXbitmT005SHZyQzdwQkdpMHFSUCs3eWdJ?=
 =?utf-8?B?ZjZGVmxPWGhrRUk3aHdFMWtwRVUzTkRZTmNvbFZkOXQ5R1IvZlVKdmF3cktR?=
 =?utf-8?B?c2kxL3RIOXBTUmUycVVXbFNMbmJjamJSbUVFbGdTTzZuQjR0aUoyTnpia3I5?=
 =?utf-8?B?d1VrVThjeU5UUkdKRzl2RUVFUlFNMkJ0MEUrRFpxU0prbFVKeGM2OHRUM3VD?=
 =?utf-8?B?VTBCNXRYaVBYYXA1bXR4cFlldWpJeU1VejlCdFJhY1UvaVNpWkxiZmFMY2Vv?=
 =?utf-8?B?Z1hYWHNKZzV0UVdJWkZBUjdBMkxKVDJNejcxQ0szTTNwMXord29kR3FTd1hT?=
 =?utf-8?B?ZDJ6aWdxWStCeExDL0ozUUxnVFk5VWlYV1RTc2lXelhiNGI1YVViL0Raa0Jw?=
 =?utf-8?B?M0tyMWRIbkhNM0UwSzlTaVNsZUJjNEJDdFJ4bGNodzVxWVcyUlBWbWJpcy8w?=
 =?utf-8?B?RDlwSXlvWHpkZ05weWRObVduY1c3MEdsTHFCVlgwekN5ZzBRS0ZRMDQ3MlBy?=
 =?utf-8?B?THJIYXNqNFBPMWFuaWRJaDB6dTFCeGVOZkRqcXp4OHE4S29QZ3phTmtUWG9l?=
 =?utf-8?B?VWNyUXpSY0J1dHNtZVlKRnd5eUtLUWNZOGdVbXFCQStqbEozYmdKOFYzWmFr?=
 =?utf-8?Q?6qZ5VPLpiunORcwd/yD2C9r8OdCJqJtAvoVJmxoyDY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C96F90E743C0DC42AAED5FD06D31DC7F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b9f34d5-24e1-45e2-c325-08de1bc032f5
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2025 16:35:43.5403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WyJ/vbbCMlBrwE+8LPtWLE7QUw0HbCQm97XTnTo4WbgJNZVXgdVsOydgv0B+7QcNu4FBtUIes9CA0JVrOak5MVAlRvW3647feB52kYcahhw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5972
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

SGkgTWF0dCwNCg0KDQpPbiBNb24sIDIwMjUtMTEtMDMgYXQgMTY6MTUgLTA4MDAsIE1hdHQgUm9w
ZXIgd3JvdGU6DQo+IE9uIE1vbiwgTm92IDAzLCAyMDI1IGF0IDAyOjE4OjEyUE0gLTAzMDAsIEd1
c3Rhdm8gU291c2Egd3JvdGU6DQo+ID4gRnJvbTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2Qu
Z292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+ID4gDQo+ID4gQ29uZmlndXJlIG9uZSBvZiB0aGUg
RkJDIGluc3RhbmNlcyB0byB1c2Ugc3lzdGVtIGNhY2hpbmcuIEZCQw0KPiA+IHJlYWQvd3JpdGUg
cmVxdWVzdHMgYXJlIHRhZ2dlZCBhcyBjYWNoZWFibGUgdGlsbCBhIHByb2dyYW1tZWQNCj4gPiBs
aW1pdCBpcyByZWFjaGVkIGJ5IHRoZSBody4NCj4gDQo+IFdoYXQgZXhhY3RseSBpcyAic3lzdGVt
IGNhY2hpbmc/IsKgIFdlIGhhdmUgbG90cyBvZiBkaWZmZXJlbnQgY2FjaGVzDQo+IGluDQo+IGN1
cnJlbnQgcGxhdGZvcm1zLCBhbmQgaXQncyBub3QgcmVhbGx5IG9idmlvdXMgdG8gbWUgZnJvbSB0
aGUNCj4gZGVzY3JpcHRpb24gaGVyZSAob3IgdGhlIGJzcGVjIHBhZ2UpIGV4YWN0bHkgd2hpY2gg
Y2FjaGUocykgYXJlDQo+IGludm9sdmVkDQo+IGhlcmUuDQo+IA0KPiBJcyB0dXJuaW5nIHRoaXMg
b24gYWx3YXlzIGEgd2luIG9yIGlzIGl0IHNpdHVhdGlvbmFsP8KgIEkuZS4sIGlzIHRoZXJlDQo+
IGFueSBwb3RlbnRpYWwgZm9yIGRpc3BsYXkgbWVtb3J5IHRyYWZmaWMgdG8gZmlsbCBhIGNhY2hl
IHdpdGggRkJDDQo+IGRhdGENCj4gYnkgZXZpY3RpbmcgZGF0YSB0aGF0IHdhcyBwYXJ0IG9mIHRo
ZSBDUFUgb3IgR1QncyB3b3JraW5nIHNldD/CoCBJZg0KPiBzbywNCj4gdGhhdCBzZWVtcyBsaWtl
IGl0IGNvdWxkIHBvdGVudGlhbGx5IGhhcm0gdGhlIHBlcmZvcm1hbmNlIG9mIG90aGVyDQo+IHdv
cmtsb2FkcyBydW5uaW5nIG9uIHRoZSBwbGF0Zm9ybS4NCj4gDQo+IE9yIGlzIHRoaXMgd2hvbGUg
dGhpbmcgYWJvdXQgYSBjb21wbGV0ZWx5IG5ldyBjYWNoZSAodW5yZWxhdGVkIHRvDQo+IGFuZCB1
bnVzYWJsZSBieSBhbnl0aGluZyBlbHNlKSB3aGljaCBpcyBkZXZvdGVkIHNvbGVseSB0byBGQkM/
DQo+IA0KPiA+IA0KPiA+IEJzcGVjOiA3NDcyMg0KPiANCj4gWW91IG1pZ2h0IHdhbnQgdG8gYWRk
IDY4ODgxIGhlcmUgc2luY2UgaXQgaGFzIGEgYml0IG1vcmUgaW5mb3JtYXRpb24NCj4gYWJvdXQg
aG93IHdlJ3JlIGFjdHVhbGx5IHN1cHBvc2VkIHRvIHNldCB0aGUgZmllbGRzIGRvY3VtZW50ZWQg
b24NCj4gNzQ3MjIuDQoNCk9rYXkgSSB3aWxsIGluY2x1ZGUgdGhhdC4gSSBndWVzcywgdGhlIEhB
UyBhbHNvIHRhbGtzIGFib3V0ICJzeXN0ZW0NCmNhY2hlIiAtIG5vIGZ1cnRoZXIgZXhwbGFuYXRp
b24uIEJ1dCBvbmx5IGEgZml4ZWQgcG9ydGlvbiBpcyBhbGxvY2F0ZWQNCnNwZWNpZmljYWxseSBm
b3IgdGhlIGRpc3BsYXkgdXNlIGFuZCBpcyAiY29uZmlndXJhYmxlIi4gTW90aXZhdGlvbiBpcw0K
dG8gcmVkdWNlIHRvIG1lbW9yeSBzdWJzeXN0ZW0gcG93ZXIgZXNwZWNpYWxseSBpbiBpZGxlIHNj
ZW5hcmlvcy4NCg0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2
aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZv
IFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmPCoMKgwqDCoMKgIHwgNDcNCj4gPiArKysr
KysrKysrKysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjX3JlZ3MuaCB8wqAgOSArKysrKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA1
NiBpbnNlcnRpb25zKCspDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJjLmMNCj4gPiBpbmRleCAyNGI3Mjk1MWVhM2MuLmUyZTU1YzU4ZGRiYyAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IEBA
IC0xMjcsNiArMTI3LDkgQEAgc3RydWN0IGludGVsX2ZiYyB7DQo+ID4gwqAJICovDQo+ID4gwqAJ
c3RydWN0IGludGVsX2ZiY19zdGF0ZSBzdGF0ZTsNCj4gPiDCoAljb25zdCBjaGFyICpub19mYmNf
cmVhc29uOw0KPiA+ICsNCj4gPiArCS8qIE9ubHkgb25lIG9mIEZCQyBpbnN0YW5jZXMgY2FuIHVz
ZSB0aGUgc3lzdGVtIGNhY2hlICovDQo+ID4gKwlib29sIG93bl9zeXNfY2FjaGU7DQo+ID4gwqB9
Ow0KPiA+IMKgDQo+ID4gwqBzdGF0aWMgY2hhciBmYmNfbmFtZShlbnVtIGludGVsX2ZiY19pZCBm
YmNfaWQpDQo+ID4gQEAgLTU2OSwxMiArNTcyLDUxIEBAIHN0YXRpYyBib29sIGlsa19mYmNfaXNf
Y29tcHJlc3Npbmcoc3RydWN0DQo+ID4gaW50ZWxfZmJjICpmYmMpDQo+ID4gwqAJcmV0dXJuIGlu
dGVsX2RlX3JlYWQoZmJjLT5kaXNwbGF5LCBJTEtfRFBGQ19TVEFUVVMoZmJjLQ0KPiA+ID5pZCkp
ICYgRFBGQ19DT01QX1NFR19NQVNLOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gK3N0YXRpYyB2b2lk
IG52bF9mYmNfcHJvZ3JhbV9zeXN0ZW1fY2FjaGUoc3RydWN0IGludGVsX2ZiYyAqZmJjLA0KPiA+
IGJvb2wgZW5hYmxlKQ0KPiA+ICt7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxh
eSA9IGZiYy0+ZGlzcGxheTsNCj4gPiArCXUzMiBjZmJfb2Zmc2V0LCB1c2FnZTsNCj4gPiArDQo+
ID4gKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZmYmMtPmxvY2spOw0KPiA+ICsNCj4gPiArCXVzYWdl
ID0gaW50ZWxfZGVfcmVhZChkaXNwbGF5LA0KPiA+IE5WTF9GQkNfU1lTX0NBQ0hFX1VTQUdFX0NG
Ryk7DQo+ID4gKw0KPiA+ICsJLyogU3lzdGVtIGNhY2hlIGFscmVhZHkgYmVpbmcgdXNlZCBieSBh
bm90aGVyIHBpcGUgKi8NCj4gPiArCWlmIChlbmFibGUgJiYgKHVzYWdlICYgRkJDX1NZU19DQUNI
RV9UQUdfVVNFX1JFU19TUEFDRSkpDQo+ID4gKwkJcmV0dXJuOw0KPiANCj4gUmF0aGVyIHRoYW4g
cmVseWluZyBvbiB0aGUgY3VycmVudCByZWdpc3RlciBjb250ZW50cywgc2hvdWxkIHdlIGJlDQo+
IHNhbml0aXppbmcgdGhpcyBvbiBkcml2ZXIgcHJvYmUgKGluIGNhc2UgdGhlIHByZS1PUyBmaXJt
d2FyZSBhbHJlYWR5DQo+IHNldA0KPiB0aGlzIHVwKSBhbmQgdGhlbiBtYWtpbmcgb3VyIG93biBk
ZWNpc2lvbnMgKGFzIHBhcnQgb2YgYW4gYXRvbWljDQo+IHRyYW5zYWN0aW9uKSBhYm91dCB3aGlj
aCBwaXBlIHRvIHByaW9yaXRpemUgYWZ0ZXIgdGhhdD8NCg0KDQo+IA0KPiA+ICsNCj4gPiArCS8q
IE9ubHkgdGhlIGZiYyBpbnN0YW5jZSB3aGljaCBvd25zIHN5c3RlbSBjYWNoZSBjYW4NCj4gPiBk
aXNhYmxlIGl0ICovDQo+ID4gKwlpZiAoIWVuYWJsZSAmJiAhZmJjLT5vd25fc3lzX2NhY2hlKQ0K
PiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwkvKg0KPiA+ICsJICogTm90IHByb2dyYW1taW5n
IHRoZSBjYWNoZSBsaW1pdCBhbmQgY2FjaGUgcmVhZGluZw0KPiA+IGVuYWJsZSBiaXRzIGV4cGxp
Y2l0bHkNCj4gPiArCSAqIGhlcmUuIFRoZSBkZWZhdWx0IHZhbHVlcyBzaG91bGQgdGFrZSBjYXJl
IG9mIHRob3NlIGFuZA0KPiA+IHRoYXQgY291bGQgbGVhdmUNCj4gPiArCSAqIGFkanVzdG1lbnRz
IG9mIHRob3NlIGJpdHMgdG8gdGhlIHN5c3RlbSBodyBwb2xpY3kNCj4gPiArCSAqDQo+ID4gKwkg
KiBUT0RPOiBjaGVjayBpZiB3ZSBuZWVkIHRvIGV4cGxpY2l0bHkgcHJvZ3JhbSB0aGVzZT8NCj4g
DQo+IFRoZXJlJ3Mgbm8gaGFyZHdhcmUgZGVmYXVsdCBkb2N1bWVudGVkIGZvciB0aGUgcmFuZ2Ug
ZmllbGQsIHNvIHVubGVzcw0KPiB0aGUgcHJlLU9TIGZpcm13YXJlIHNldHMgaXQgdXAgKHdoaWNo
IHdlIHByb2JhYmx5IHNob3VsZG4ndCByZWx5IG9uKSwNCj4gSSdkIGV4cGVjdCB0aGlzIHRvIGJl
IDA7IEkgZG9uJ3QgdGhpbmsgdGhhdCdzIHdoYXQgd2Ugd2FudC4NCg0KVGhlIEJzcGVjIHNheXMg
aXQgaXMgMk1CLiBCdXQgYWNjb3JkaW5nIHRvIHRoZSBIQVMgaXQgaXMgImNvbmZpZ3VyYWJsZSIN
CmFuZCBJIGNsYXJpZmllZCB0aGF0IHRoaXMgaXMgYXQgdGhlIG1vbWVudCAyTUIgYnV0IGNhbiBj
aGFuZ2UuIFNvIEkNCnJlYWQgaXQgYXMgc29tZXRoaW5nIGFscmVhZHkgY29uZmlndXJlZCBhbmQg
c2V0IGFzIHRoZSBkZWZhdWx0IHZhbHVlIHRvDQp0aGUgcmVnaXN0ZXIgYW5kIGl0IGNvdWxkIGJl
IGNoYW5nZWQgYnkgdGhlIHNvYyBwb2xpY3kuIFRoYXRzIHRoZQ0KcmVhc29uIEkgdGhvdWdodCBp
dCBiZSBrZXB0IHVudG91Y2hlZC4gV2lsbCBmb3J3YXJkIG9uIGVtYWlsDQpjb252ZXJzYXRpb24g
SSBoYWQuDQoNCg0KPiANCj4gPiArCSAqLw0KPiA+ICsJY2ZiX29mZnNldCA9IGVuYWJsZSA/IGk5
MTVfZ2VtX3N0b2xlbl9ub2RlX29mZnNldChmYmMtDQo+ID4gPmNvbXByZXNzZWRfZmIpIDogMDsN
Cj4gPiArCXVzYWdlIHw9IEZCQ19TWVNfQ0FDSEVfU1RBUlRfQkFTRShjZmJfb2Zmc2V0KTsNCj4g
DQo+IEFuZCBpZiBzb21ldGhpbmcgKmRpZCogc2V0IHRoaXMgdXAgYWxyZWFkeSwgdGhlbiBPUidp
bmcgYSBuZXcgYWRkcmVzcw0KPiBvdmVyIHRoZSBvbGQgb25lIGlzbid0IGdvaW5nIHRvIHdvcmsu
wqAgV2UnZCBuZWVkICIob2xkICYgfm1hc2spIHwNCj4gbmV3Ig0KPiB0byBlbnN1cmUgd2UgZG9u
J3QgaGF2ZSBsZWZ0b3ZlciBiaXRzIHN0aWxsIHNldCBieSBhY2NpZGVudC7CoCBCdXQgaXQNCj4g
d291bGQgcHJvYmFibHkgYmUgYmV0dGVyIHRvIGp1c3QgYXZvaWQgUk1XLXN0eWxlIGhhbmRsaW5n
IGluIGdlbmVyYWwNCj4gYW5kDQo+IGJ1aWxkIGEgY29tcGxldGUgcmVnaXN0ZXIgdmFsdWUgd2l0
aCBleGFjdGx5IHdoYXQgd2Ugd2FudCByYXRoZXIgdGhhbg0KPiB0cnlpbmcgdG8gbW9kaWZ5IHRo
ZSBwcmUtZXhpc3RpbmcgdmFsdWUuDQo+IA0KPiA+ICsJdXNhZ2UgfD0gZW5hYmxlID8gRkJDX1NZ
U19DQUNIRV9UQUdfVVNFX1JFU19TUEFDRSA6DQo+ID4gRkJDX1NZU19DQUNIRV9UQUdfRE9OVF9D
QUNIRTsNCj4gPiArDQo+ID4gKwlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBOVkxfRkJDX1NZU19D
QUNIRV9VU0FHRV9DRkcsDQo+ID4gdXNhZ2UpOw0KPiA+ICsNCj4gPiArCWZiYy0+b3duX3N5c19j
YWNoZSA9IGVuYWJsZTsNCg0KT2theS4gVGhhbmtzLiBXaWxsIGZpeCB0aGF0IQ0KDQo+IA0KPiBJ
dCBmZWVscyBsaWtlIGluc3RlYWQgb2YgaGF2aW5nIHRoaXMgYXMgYSBib29sZWFuIGZsYWcgaW4g
ZmJjLCB0aGlzDQo+IHNob3VsZCBiZSBhIHBvaW50ZXIvSUQgdHJhY2tlZCBhdCB0aGUgaW50ZWxf
ZGlzcGxheSBsZXZlbC7CoCBFLmcuLA0KPiANCj4gwqDCoMKgwqDCoMKgwqAgZGlzcGxheS0+c3lz
X2NhY2hlX2ZiYyA9IGZiYzsNCj4gDQo+IG9yIHBvc3NpYmx5IGNvbnZlcnRlZCBvdmVyIHRvIHNv
bWV0aGluZyB0cmFja2VkIHdpdGggYXRvbWljIHN0YXRlIHNvDQo+IHRoYXQgd2UgY2FuIG1ha2Ug
YmV0dGVyIGhpZ2gtbGV2ZWwgZGVjaXNpb25zIGFib3V0IHdoaWNoIEZCQyB3ZSB3YW50DQo+IHRv
DQo+IGVuYWJsZSB0aGlzIG9uIGFzIHZhcmlvdXMgZGlzcGxheXMgZ2V0IGVuYWJsZWQvZGlzYWJs
ZWQuDQoNCk9rYXkuIFdpbGwgY2hlY2sgdGhpcyBhbmQgZ2V0IHJpZCBvZiB0aGUgYm9vbCBmcm9t
IHRoZSBpbnRlbF9mYmMNCnN0cnVjdHVyZSEgQXQgdGhlIG1vbWVudCB3ZSBjYW4gYWxsb2NhdGUg
b25seSBiYXNlZCBvbiB0aGUgZmlydCBwaXBlDQplbmFibGluZyB0aGUgZmJjLiBCdXQgbWF5IGJl
IGluIGZ1dHVyZSB3ZSBjb3VsZCBoYXZlIHNvbWUgbG9naWMgZm9yDQp0aGlzIEkgZ3Vlc3MuDQoN
Cj4gTWF0dA0KPiANCj4gPiArDQo+ID4gKwlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJTeXN0
ZW0gY2FjaGluZyBmb3IgRkJDWyVkXQ0KPiA+ICVzXG4iLA0KPiA+ICsJCcKgwqDCoCBmYmMtPmlk
LCBlbmFibGUgPyAiY29uZmlndXJlZCIgOiAiY2xlYXJlZCIpOw0KPiA+ICt9DQo+ID4gKw0KPiA+
IMKgc3RhdGljIHZvaWQgaWxrX2ZiY19wcm9ncmFtX2NmYihzdHJ1Y3QgaW50ZWxfZmJjICpmYmMp
DQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSBmYmMtPmRp
c3BsYXk7DQo+ID4gwqANCj4gPiDCoAlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBJTEtfRFBGQ19D
Ql9CQVNFKGZiYy0+aWQpLA0KPiA+IMKgCQnCoMKgwqDCoMKgwqAgaTkxNV9nZW1fc3RvbGVuX25v
ZGVfb2Zmc2V0KGZiYy0NCj4gPiA+Y29tcHJlc3NlZF9mYikpOw0KPiA+ICsNCj4gPiArCWlmIChE
SVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzNSkNCj4gPiArCQludmxfZmJjX3Byb2dyYW1fc3lzdGVt
X2NhY2hlKGZiYywgdHJ1ZSk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiDCoHN0YXRpYyBjb25zdCBz
dHJ1Y3QgaW50ZWxfZmJjX2Z1bmNzIGlsa19mYmNfZnVuY3MgPSB7DQo+ID4gQEAgLTk1Miw2ICs5
OTQsOCBAQCBzdGF0aWMgdm9pZA0KPiA+IGludGVsX2ZiY19wcm9ncmFtX3dvcmthcm91bmRzKHN0
cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiDCoA0KPiA+IMKgc3RhdGljIHZvaWQgX19pbnRlbF9m
YmNfY2xlYW51cF9jZmIoc3RydWN0IGludGVsX2ZiYyAqZmJjKQ0KPiA+IMKgew0KPiA+ICsJc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSBmYmMtPmRpc3BsYXk7DQo+ID4gKw0KPiA+IMKg
CWlmIChXQVJOX09OKGludGVsX2ZiY19od19pc19hY3RpdmUoZmJjKSkpDQo+ID4gwqAJCXJldHVy
bjsNCj4gPiDCoA0KPiA+IEBAIC05NTksNiArMTAwMyw5IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxf
ZmJjX2NsZWFudXBfY2ZiKHN0cnVjdA0KPiA+IGludGVsX2ZiYyAqZmJjKQ0KPiA+IMKgCQlpOTE1
X2dlbV9zdG9sZW5fcmVtb3ZlX25vZGUoZmJjLT5jb21wcmVzc2VkX2xsYik7DQo+ID4gwqAJaWYg
KGk5MTVfZ2VtX3N0b2xlbl9ub2RlX2FsbG9jYXRlZChmYmMtPmNvbXByZXNzZWRfZmIpKQ0KPiA+
IMKgCQlpOTE1X2dlbV9zdG9sZW5fcmVtb3ZlX25vZGUoZmJjLT5jb21wcmVzc2VkX2ZiKTsNCj4g
PiArDQo+ID4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzUpDQo+ID4gKwkJbnZsX2Zi
Y19wcm9ncmFtX3N5c3RlbV9jYWNoZShmYmMsIGZhbHNlKTsNCj4gPiDCoH0NCj4gPiDCoA0KPiA+
IMKgdm9pZCBpbnRlbF9mYmNfY2xlYW51cChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmNf
cmVncy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiY19yZWdz
LmgNCj4gPiBpbmRleCA3N2Q4MzIxYzRmYjMuLjU5MmNkMjM4NDI1NSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiY19yZWdzLmgNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiY19yZWdzLmgNCj4gPiBAQCAt
MTI4LDQgKzEyOCwxMyBAQA0KPiA+IMKgI2RlZmluZcKgwqAgRkJDX1JFTkRfTlVLRQkJCVJFR19C
SVQoMikNCj4gPiDCoCNkZWZpbmXCoMKgIEZCQ19SRU5EX0NBQ0hFX0NMRUFOCQlSRUdfQklUKDEp
DQo+ID4gwqANCj4gPiArI2RlZmluZSBOVkxfRkJDX1NZU19DQUNIRV9VU0FHRV9DRkfCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgX01NSU8oMHgxMzQ0RTApDQo+ID4gKyNkZWZpbmXCoMKgIEZCQ19T
WVNfQ0FDSEVfU1RBUlRfQkFTRV9NQVNLwqDCoMKgwqDCoMKgwqDCoCBSRUdfR0VOTUFTSygzMSwN
Cj4gPiAxNikNCj4gPiArI2RlZmluZcKgwqAgRkJDX1NZU19DQUNIRV9TVEFSVF9CQVNFKGJhc2Up
wqDCoMKgwqDCoMKgwqANCj4gPiBSRUdfRklFTERfUFJFUChGQkNfU1lTX0NBQ0hFX1NUQVJUX0JB
U0VfTUFTSywgKGJhc2UpKQ0KPiA+ICsjZGVmaW5lwqDCoCBGQkNfU1lTX0NBQ0hFQUJMRV9SQU5H
RV9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgIFJFR19HRU5NQVNLKDE1LCA0KQ0KPiA+ICsjZGVmaW5l
wqDCoCBGQkNfU1lTX0NBQ0hFQUJMRV9SQU5HRShyYW5nZSnCoMKgwqDCoMKgwqDCoA0KPiA+IFJF
R19GSUVMRF9QUkVQKEZCQ19TWVNfQ0FDSEVBQkxFX1JBTkdFX01BU0ssIChyYW5nZSkpDQo+ID4g
KyNkZWZpbmXCoMKgIEZCQ19TWVNfQ0FDSEVfVEFHX01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgUkVHX0dFTk1BU0soMywgMikNCj4gPiArI2RlZmluZcKgwqAgRkJDX1NZU19DQUNI
RV9UQUdfRE9OVF9DQUNIRcKgwqDCoMKgwqDCoMKgwqDCoA0KPiA+IFJFR19GSUVMRF9QUkVQKEZC
Q19TWVNfQ0FDSEVfVEFHX01BU0ssIDApDQo+ID4gKyNkZWZpbmXCoMKgIEZCQ19TWVNfQ0FDSEVf
VEFHX1VTRV9SRVNfU1BBQ0XCoMKgwqDCoMKgwqANCj4gPiBSRUdfRklFTERfUFJFUChGQkNfU1lT
X0NBQ0hFX1RBR19NQVNLLCAzKQ0KPiA+ICsNCj4gPiDCoCNlbmRpZiAvKiBfX0lOVEVMX0ZCQ19S
RUdTX18gKi8NCj4gPiANCj4gPiAtLSANCj4gPiAyLjUxLjANCj4gPiANCj4gDQoNCg==
