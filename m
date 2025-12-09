Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07D4CAF468
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 09:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 693AC10E05F;
	Tue,  9 Dec 2025 08:24:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZK7L0WEa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AD8B10E05F;
 Tue,  9 Dec 2025 08:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765268683; x=1796804683;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=qMhUZZVlqCfD2j4Y5RtDJdwVPfBahqfUqHJZmiw+bZE=;
 b=ZK7L0WEaAS3/yeDlbzimwTtmbt+W1cpEdkaVw9nygBrxovnIe3Djtxi/
 8KKdP6U1sQUeJdxMFeWwZrLXB9H/91uKiSeiTk9e+PqEICih5ICoC7EPz
 cIUtd6EZJ1g+7dMGfmMQ509giUe/jmkIno8X7DDbaBOHTXxNQYjvB6Ta3
 nda50AsTy71ljb716DTsNqXV1IhrXGLso5TlLkDqS1BfY907XPs7jHc+V
 P94DAiNPNSMzsa9lkFrJFhkAVCT3q08s6SMsRcj3ehAtQ8iC6LhkVdQYl
 TmM7ys3g+DfjyWALag6mP0NSp9KOl6+7h2nYnbCg29ZKFCc/jWmUjN/fB Q==;
X-CSE-ConnectionGUID: F+Aqova5TW2kii4IyYMYjg==
X-CSE-MsgGUID: zLyTqVYNSTaSYWedtyQEQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11636"; a="67271122"
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="67271122"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:24:42 -0800
X-CSE-ConnectionGUID: FzULfz16SoCYUKpzveptlw==
X-CSE-MsgGUID: c7xc5NdZQJ+N321ROzYEcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,260,1758610800"; d="scan'208";a="195941389"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 00:24:42 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:24:42 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 00:24:42 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 00:24:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vPS8/+AZUlqlzGYXZMusRwbLU14TO7RBiXQYA3AFzq46XiNmo5Z3eGjFoArqBT9mFtpNoNB5ec44rT10Oke3yyXR2Xw+VgHjbDA9iYZjn4DkbTwPCycqJOuitvmJ/D3NPtTy3vEjn3kwTHDLM3Vtp5HcBelyherZRKaA7yInS//CB9N7jjnTgR8bsYe6bT+Jc0CX03zmqg4v+g6acQq3skQWSoIPxY+8SB5VJDTddRXc/HspsG3Y37wTup4FdJDiz7Q1ike88g+tLzDTDALylqNkTBZn7OUeEnGKy0lfO6jFypXy19KMdg9kETVOmXNsRRBrpvWfVkUnNHsGUJWqFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qMhUZZVlqCfD2j4Y5RtDJdwVPfBahqfUqHJZmiw+bZE=;
 b=TL/U/BnzCX2QIGteMuicyyRN223xZMmKvNAQoZYy7aS3WbyvswtC41hh/inNRY/505flHbu8EqDHVqysDURU0yVoGNSpy6b2s4kdP/y4nu7p7b2oTpfCqTKrUHHm6oxBFwdXPQkwGWsdQIieD9S8ByQG0NkDs2dmkkwXL03V1zdKKfUHLpULULfL8DmPDxMEotIwkP3JxGgX5KX4Mud2QYmkdL+f7utZyXaEcJt0flD/OibcyrAzAaMKVhiFwRj77agzr3F5uXo9pXJ7PvN7vf1d9Hb1nCwOVL2AnJDwH29Kzrdr5OeovIKEBX5N/xgPndfz0y4zf3pqT5SJOh0VYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 08:24:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9412.005; Tue, 9 Dec 2025
 08:24:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 36/50] drm/i915/dsc: Track the detaild DSC slice
 configuration
Thread-Topic: [PATCH 36/50] drm/i915/dsc: Track the detaild DSC slice
 configuration
Thread-Index: AQHcX9FqcAANqJ8nu0mdowzI2niuFLUZCuCA
Date: Tue, 9 Dec 2025 08:24:39 +0000
Message-ID: <60748a4046224f3c375ed8411afdf1a9c3aa7193.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-37-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-37-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN0PR11MB6086:EE_
x-ms-office365-filtering-correlation-id: 8721eb33-0375-420a-2033-08de36fc657e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?OHl6U2F5M1RmcTQrL3pPeDBzbnFpd2N2R2dDV25kZUxtUG0yUkUzc0pWaDdx?=
 =?utf-8?B?WFl3b3RtcVhKNkRJZUtsTUNnRUprVWpPODVtWFFKZit2NE9KTE43OXBKdkdR?=
 =?utf-8?B?NlN1aGxjL3FWWmVZK0lzZFFhalRLN21ScE5rSGRMSEFXRmgwUVdaS3V5Y3NJ?=
 =?utf-8?B?VUxaRTRXRkFsMENOMmt5eTg1MzVweXdxRzFpd2czVmg0R25jNmhLSGprcGhx?=
 =?utf-8?B?M1hXSHRWSURERzJTRW43MDZLKzRVSUtMNHVPcFJwNjFNNmlTMnQzbFJzWDhM?=
 =?utf-8?B?UWZjMDExVjV1Uy9Xc2ZiNVZoWU8vUE9xVHlJYUt1WGVTUHpJYmJuR2NwY09t?=
 =?utf-8?B?cUJjOUdyUyszVkpHOE1tVjBNVUU0Wmp4a2lGSis4MEk0ekNZOUJ2Y2ZLcjVF?=
 =?utf-8?B?YmowYjhwaWdqT25NU0JkL1l2SzQ3cXd4UEY0RnBSbmRYc3RVWXFtQkJaZ3RR?=
 =?utf-8?B?enRMK3QvNjUzZ0JwSUpaaEN1S2xpQjdMR2RvbWM3dllpeVk5K21ZOHhmRGFw?=
 =?utf-8?B?djRLcUo1bTFoejV1RFBuYzJpQlM1dXJZNmhFZzFQajZUVzc1NGc0d1p4Vjhx?=
 =?utf-8?B?NURUalcrVUVmcXdCbmFLeUwrNDRaRkNaWWVzcVhyeTRFdnFLeTNWUlhDcDVw?=
 =?utf-8?B?Qkc3U1hYaUlHTWwwT1dxc0xMTTE1U3BEYmFmaTJTdEMvRG5HQUFLU1gyajdj?=
 =?utf-8?B?TGQ0a1QyQWk2VVp2UEdoK3BwK3lXSVlUejFPWVdaK29RQUJXZjVXWkFzc2Iw?=
 =?utf-8?B?L2JDVDVERXFjZGROVzNjeWt2dEI3TXZOSDhndVY4RUV3THY3aGZyRzdxL3ht?=
 =?utf-8?B?ZWFhTVlUeUdkRDhwK213alRLZ0RzL2kxK21RR1hUSU5MU2hCUzlOeDNDM0pq?=
 =?utf-8?B?QS9ndXpnY1NtdUJwQmUvV3ZQb3dIUm9XY1ZMcHZzeXJEOEZGUkFCdVk0R1B3?=
 =?utf-8?B?SWpSbkIvNEVTMXo5ZUtTWVdyazdMcnpnNmdxRzMwdzdHcGhmSlZXK0tod2lI?=
 =?utf-8?B?a3lrSFVyTDQwMGMrMnhhYy9sci9xTWxpZUhxK1Rya1FiREpDMUVEa29MRVdP?=
 =?utf-8?B?S0VTY0Z1aVRHUGpWZXBIMDl5R0NvQm1Pemh5aWZLeHJlVk1DaWFmMERZMVp4?=
 =?utf-8?B?UEdvM2wzbnZJajBFT3NjZ2F1dkw5VGxxNEtNL2l4d3RJbm4reWxZRHVlU1Fy?=
 =?utf-8?B?QlFLdzVUc3cwemxrKy9qQmxCcTJIU0Y4dlJTUnBucWtCZnBLT0QvMEFEU0Z2?=
 =?utf-8?B?eW5uU1IvbnFsY1ZXcnFCUjQ3WEpvbktKTDl0SVJ5bDZscjFvMHArQlV1WDVB?=
 =?utf-8?B?TFBralBIa0JFNXFVQWZmUnhmeW43SXlMRE5NZythMUhlUTRIY2hOUTlVN1Rw?=
 =?utf-8?B?am1EVmFHWjQvaElTTkUyN2tDOEdqZk1IYlp6Ym9UZk4zVTluNnVNa1oxYUZF?=
 =?utf-8?B?Z2ZESEVlVmlQTGNmYUVodjREQjJRT2RBTmg1aUVwemdJMGJOeVU0OWFKUzNN?=
 =?utf-8?B?QkRxem9RWHJ6WTJPSHZ0UWdCclVHb0ZoeElJeDZMcVNyMHRLZlVSS1Awa0FM?=
 =?utf-8?B?eEFVUEFJU2JaTXZQWmduN1FFU0hkRy83K1k1d1o4U0Jvd0lmcnNwWWRtZ2xZ?=
 =?utf-8?B?UUprQkpsR0NyRng1L0FIOWdIRnh0dnJwaHU3Um41NTJkZ2FxcVlvOU12ZXRO?=
 =?utf-8?B?azhLd1h2STAvekgvZmVub3dKSzU4eEoyS1EvVXliRGZLRXROMHh4NkRBK0dj?=
 =?utf-8?B?aUNac2wyOWFjRmErT21pdXlDcFJrcFZwdUNxU3VrNXY4M1MwQXFRMHFFcm9I?=
 =?utf-8?B?UHFLaS83THp0Q0F3TmhqbW9DZEFJTk10R252SlU1ZzN3aEEzS0VIaXVXTm5C?=
 =?utf-8?B?M0hvWVJ2Q1lkbllxcE5TOXI4UXViVkdwUUkvcFFQNnF1Szk3QXMyTzF3emFh?=
 =?utf-8?B?b1pYRnBIczBNNDU4VTVaR1UvYjdRd3ZzblBUcUEwSThhOXJYR29rSVpBUkVj?=
 =?utf-8?B?Z2pLeG55dEtnZ1l0TmphengzaFRORGNjR214RW9yNUdCcjV6Z3BDajNMRjNa?=
 =?utf-8?Q?hNGwYJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWtPdEZyRmJjT1pVbUtqRlFqS3RlcGlHM1ZqQ2c2cExpRWJ6QnlkeGhoc2pL?=
 =?utf-8?B?eDVIdU4rajZQR0UzSjVNNGwvMi9qa0JFRFMwbHRmeGQxbUM0c29MRGJNcFFt?=
 =?utf-8?B?T0VvZFJIRlJpQklaMnRVejM0ZEFtaEU3QXlveFV6d2hnYVdIZlZFcUtXcVZL?=
 =?utf-8?B?aEZqaWgxWlJ5aW1kSlc3WkthcEREZTNXVFhidkdQUFlJK01rZWhWNTVIVTJn?=
 =?utf-8?B?VGQ2UGdvWHVaTXJGRUQrWHRpUncxTWpud2lpK1B3Tk80dWxrRW9OYnFDWjhY?=
 =?utf-8?B?QXcrbm1oK2VsWklTNWRVQVlOc3VhUkp1YUdFbHNkMnhncU1VQ01XWUM5TVE1?=
 =?utf-8?B?MUxIUkRaenBMZERucWtnWlV0cHBhbzhNdzQ0elQ5UVF2aHVUdkZHRHRON3h1?=
 =?utf-8?B?YXh3SkRza1AzWmFLQ05mRU91MDArdVArNVQ0UFV3YWpqSDNjYUh4M29kWDdt?=
 =?utf-8?B?NUkwOVVIVnp2UXpMd1h3dkFCNzRXKzZzaHMyeVlvdWkwZEdCcVVtT2ZrZVB3?=
 =?utf-8?B?MlVVTGJBeGp3bzFCa1ZiVUpwbHZUN1VkN3k1MnMweVpWNGo5d24xWmduQUhT?=
 =?utf-8?B?cmZLdlMvU3k3QTBqL2lwYjZuY1VoZDJTZVJENTFqOHF3d1d2cW9qZEdxTHp4?=
 =?utf-8?B?N290Q0o2a0J3YS8rSUxjYkQrb1VUNE1Bc01NV3JhUTMxbW5NN0FSUU5CcmxW?=
 =?utf-8?B?dmx2SjNIbjBKOStsYkJRT1Z0OGxRSy9XS3Rxa0JDWUdzRTAwUVBRcDY1Q2ZV?=
 =?utf-8?B?aTlWY2tRcGtoZWVRUmRLVkRCMlNMUW1ERU9KTTFiRU9aQ0pybmlUNDg3Q1lz?=
 =?utf-8?B?TTNwWk9NQ0h5N3RuZXA1bUp4TEs3ZWxTK3ZrNVNXOW16TXBVQnd5Nks1Qng3?=
 =?utf-8?B?aytyd0I2Q0UxL1l3MWdMVVZWcnpFVGY0cHdYWW9LZTFjemdqelhKdVVEZ21l?=
 =?utf-8?B?YUt5OFM5djYxQ2JUL29OdzVIM3htcE1adVhhVTVyendkUWloaExURkFXaERN?=
 =?utf-8?B?U3dNZHB2WlJFZGhyR2VjN0ltZVFNZ094NWhUR0VabVYwOXAwdTd1Qlc4cGNV?=
 =?utf-8?B?bWxyMk4wckE3cnZjNWl5SW40bFRpVGZTemJtcUlncENMc0kyZmdpUXBZdnhw?=
 =?utf-8?B?NnI4VnF0R0lVbjVSaldIZUhoWkQ4TXI1VXNQQWtvRG9QRW1Ed2JRZUZzbmxs?=
 =?utf-8?B?L3dFazdjM3FxaGJ0M09OWlNkdm9XSHkvRlZrOHJzeHNUWDBJc3Z2dW9uaG1p?=
 =?utf-8?B?MThiZ2JBbFMvaFRzOEFQYTBxTCtDaC9VSzFwb3R4R3JHek0wazZkQUJwZGM2?=
 =?utf-8?B?K01UdGpmRnBOa1BDVWh3bXJTYm9Xa1BLZSt0VnhhRitGdUtWMzNTamJKVTBz?=
 =?utf-8?B?Q21OcXJ3OXl6MnhncEJuc2tJU01jUVFlbWhEYktvWko0NURkVXRwVVpzc2Jk?=
 =?utf-8?B?c0hTTlJnT1UzYVg0Nit4TDBVRFRKa2dNY3ZEK2QrTHNoTm5MaUhwWnFKak9H?=
 =?utf-8?B?SDUyRys4L3hqZkVOek9UU244T3hZT3A0NWdJQnNicElCeVhiVVNWSHd2dEhj?=
 =?utf-8?B?NXBqZGpKdUU1Z3hHK09GcGdaT2lrSHpvK1NoTWRxc3dGTDIyTXNEdDR6aXln?=
 =?utf-8?B?MlNrYkp3UW51SFBQVFNpWGczR1B2S3c3WGRQSlNBWGFhc2wyY0I2RXBCd2dK?=
 =?utf-8?B?N2tYZ2pqc242dW9mNkU0UVBYQ05ZeXp1OGFlSCs0VGIrOXczT25WUFlkdHBx?=
 =?utf-8?B?azc0anhGVWR3dWxyWGJMWW1YWllodGxhUVNJTWp6WWd5NzJWVHlMZWhXeEps?=
 =?utf-8?B?TjZzeFBQelVTZU1oUUE1dWtUbTVpNEorTkQwQzJQQ21Lc1VkZkhpVGV2bUNJ?=
 =?utf-8?B?QU5Qdm9TcDVaUnZSZ2x6ck1aQXo3RUJtamh6TUtFdHppbTdjdWVxVUFxN2o1?=
 =?utf-8?B?RGlocmxxYnQyZHByakRkVlZTK0k3bTF1a0lwZDVYU091SXZCMkxoYzRGdm9M?=
 =?utf-8?B?UmY1ZlJFWEk0c08wb2xEUWYwNmREeE9nRmVzejV6UHdGdWxMSHBMbEJQV2FQ?=
 =?utf-8?B?NldxYUVKMThBOTJQalJ1cjllNjFVcExkZjQvQmhoL2tlWnNoa0tkUXpJd0lj?=
 =?utf-8?B?VmNhVlhMUE9OWDlEdGR4a1ZZMHFsQlM0ZXVCSXJrcUlEWmcxN1V1Z2dYOEpt?=
 =?utf-8?B?Q1ZwM2RGWTltY2t2bWgyVEYwNG8zd3J3b3VrYnBWTTk0SnYzckNyUHhOZy9Z?=
 =?utf-8?B?RSs2ZURWaG9DTGhuT2dKM0lBYzBBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C1C09F8739F2A549A6D84FDEDA78279B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8721eb33-0375-420a-2033-08de36fc657e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 08:24:39.5028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /+B80OAvwbo/UoxIu9otYyWVZC0lesri+ObrBlyk/22l3zfK5nve5qOgxffRvAD2ncseJL16rANQzFur/U0jLX2YilQ9KmEE5Xi8wSPDkMc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBhIHdheSB0byB0cmFjayB0aGUgZGV0YWlsZWQgRFNDIHBpcGVzLXBlci1saW5lLCBzdHJlYW1z
LXBlci1waXBlLA0KPiBzbGljZXMtcGVyLXN0cmVhbSBjb25maWd1cmF0aW9uIGluc3RlYWQgb2Yg
dGhlIGN1cnJlbnQgc3RyZWFtcy1wZXItDQo+IHBpcGUNCj4gYW5kIHNsaWNlcy1wZXItbGluZSB2
YWx1ZS4gVGhpcyB3YXkgZGVzY3JpYmVzIHRoZSBzbGljZSBjb25maWd1cmF0aW9uDQo+IGluDQo+
IGEgY2xlYXJlciB3YXksIGZvciBpbnN0YW5jZSBwcm92aWRpbmcgYQ0KPiANCj4gMiBwaXBlcy1w
ZXItbGluZSB4IDIgc3RyZWFtcy1wZXItcGlwZSB4IDIgc2xpY2VzLXBlci1zdHJlYW0gPSA4DQo+
IHNsaWNlcy1wZXItbGluZQ0KPiANCj4gdmlldywgaW5zdGVhZCBvZiB0aGUgY3VycmVudCwgY29h
cnNlcg0KPiANCj4gMiBzdHJlYW1zLXBlci1waXBlLCA4IHNsaWNlcy1wZXItbGluZQ0KPiANCj4g
dmlldywgdGhlIGZvcm1lciBiZXR0ZXIgcmVmbGVjdGluZyB0aGF0IGVhY2ggRFNDIHN0cmVhbSBl
bmdpbmUgaGFzIDINCj4gc2xpY2VzLiBUaGlzIGFsc28gbGV0J3Mgb3B0aW1pemluZyB0aGUgY29u
ZmlndXJhdGlvbiBpbiBhDQo+IHNpbXBsZXIvY2xlYXJlciB3YXksIGZvciBpbnN0YW5jZSB1c2lu
ZyAxIHN0cmVhbSB4IDIgc2xpY2VzLCBvciAxDQo+IHN0cmVhbQ0KPiB4IDQgc2xpY2VzIGluc3Rl
YWQgb2YgdGhlIGN1cnJlbnQgMiBzdHJlYW0geCAxIHNsaWNlLCBvciAyIHN0cmVhbXMgeA0KPiAy
DQo+IHNsaWNlcyBjb25maWd1cmF0aW9uIChzbyB0aGF0IDEgRFNDIHN0cmVhbSBlbmdpbmUgY2Fu
IGJlIHBvd2VyZWQgb2ZmDQo+IGluDQo+IGVhY2ggcGlwZSkuDQo+IA0KPiBGb2xsb3ctdXAgY2hh
bmdlcyB3aWxsIGNvbnZlcnQgdGhlIGN1cnJlbnQgc2xpY2VzLXBlci1saW5lDQo+IGNvbXB1dGF0
aW9uDQo+IGxvZ2ljIHRvIGNvbXB1dGUgaW5zdGVhZCB0aGUgYWJvdmUgZGV0YWlsZWQgc2xpY2Ug
Y29uZmlndXJhdGlvbi4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFr
QGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaCB8IDUgKysrKysNCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuY8KgwqDCoMKgwqDCoMKgwqDCoCB8IDUgKysrKysNCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuaMKgwqDCoMKgwqDCoMKgwqDCoCB8
IDIgKysNCj4gwqAzIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
DQo+IGluZGV4IDM4NzAyYTllMGY1MDguLmEzZGU5M2NkY2JkZTAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBA
IC0xMzA2LDYgKzEzMDYsMTEgQEAgc3RydWN0IGludGVsX2NydGNfc3RhdGUgew0KPiDCoAkJYm9v
bCBjb21wcmVzc2lvbl9lbmFibGVkX29uX2xpbms7DQo+IMKgCQlib29sIGNvbXByZXNzaW9uX2Vu
YWJsZTsNCj4gwqAJCWludCBudW1fc3RyZWFtczsNCj4gKwkJc3RydWN0IGludGVsX2RzY19zbGlj
ZV9jb25maWcgew0KPiArCQkJaW50IHBpcGVzX3Blcl9saW5lOw0KPiArCQkJaW50IHN0cmVhbXNf
cGVyX3BpcGU7DQo+ICsJCQlpbnQgc2xpY2VzX3Blcl9zdHJlYW07DQo+ICsJCX0gc2xpY2VfY29u
ZmlnOw0KPiDCoAkJLyogQ29tcHJlc3NlZCBCcHAgaW4gVTYuNCBmb3JtYXQgKGZpcnN0IDQgYml0
cyBmb3INCj4gZnJhY3Rpb25hbCBwYXJ0KSAqLw0KPiDCoAkJdTE2IGNvbXByZXNzZWRfYnBwX3gx
NjsNCj4gwqAJCXU4IHNsaWNlX2NvdW50Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Zkc2MuYw0KPiBpbmRleCAwZTcyN2ZjNWU4MGMxLi44YWE0ODBlM2QxYzlkIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYw0KPiBAQCAt
MzUsNiArMzUsMTEgQEAgYm9vbCBpbnRlbF9kc2Nfc291cmNlX3N1cHBvcnQoY29uc3Qgc3RydWN0
DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpDQo+IMKgCXJldHVybiB0cnVlOw0KPiDC
oH0NCj4gwqANCj4gK2ludCBpbnRlbF9kc2NfbGluZV9zbGljZV9jb3VudChjb25zdCBzdHJ1Y3Qg
aW50ZWxfZHNjX3NsaWNlX2NvbmZpZw0KPiAqY29uZmlnKQ0KPiArew0KPiArCXJldHVybiBjb25m
aWctPnBpcGVzX3Blcl9saW5lICogY29uZmlnLT5zdHJlYW1zX3Blcl9waXBlICoNCj4gY29uZmln
LT5zbGljZXNfcGVyX3N0cmVhbTsNCj4gK30NCj4gKw0KPiDCoHN0YXRpYyBib29sIGlzX3BpcGVf
ZHNjKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBlbnVtIHRyYW5zY29kZXINCj4gY3B1X3RyYW5z
Y29kZXIpDQo+IMKgew0KPiDCoAlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2lu
dGVsX2Rpc3BsYXkoY3J0Yyk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5oDQo+IGluZGV4IDk5ZjY0YWM1NGIyNzMuLmU2MTExNmQ1Mjk3YzggMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5oDQo+IEBAIC0xMyw5ICsx
MywxMSBAQCBzdHJ1Y3QgZHJtX3ByaW50ZXI7DQo+IMKgZW51bSB0cmFuc2NvZGVyOw0KPiDCoHN0
cnVjdCBpbnRlbF9jcnRjOw0KPiDCoHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlOw0KPiArc3RydWN0
IGludGVsX2RzY19zbGljZV9jb25maWc7DQo+IMKgc3RydWN0IGludGVsX2VuY29kZXI7DQo+IMKg
DQo+IMKgYm9vbCBpbnRlbF9kc2Nfc291cmNlX3N1cHBvcnQoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiAraW50IGludGVsX2RzY19saW5lX3NsaWNlX2Nv
dW50KGNvbnN0IHN0cnVjdCBpbnRlbF9kc2Nfc2xpY2VfY29uZmlnDQo+ICpjb25maWcpOw0KPiDC
oHZvaWQgaW50ZWxfdW5jb21wcmVzc2VkX2pvaW5lcl9lbmFibGUoY29uc3Qgc3RydWN0IGludGVs
X2NydGNfc3RhdGUNCj4gKmNydGNfc3RhdGUpOw0KPiDCoHZvaWQgaW50ZWxfZHNjX2VuYWJsZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+IMKgdm9pZCBpbnRl
bF9kc2NfZGlzYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
DQoNCg==
