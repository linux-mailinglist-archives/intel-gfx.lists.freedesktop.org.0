Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 199E7AD45CE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 00:20:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D53AA10E5DF;
	Tue, 10 Jun 2025 22:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OeTv7TjO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5F710E5DE;
 Tue, 10 Jun 2025 22:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749594044; x=1781130044;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=srdgoWYqTZFoBIKC9nSxcIFBzLXevGaDxaPb/tDpMQM=;
 b=OeTv7TjO2saDpiourAx/fppHZe1+vZBpAd2WAFzwGa9uS9Cbdq1gmZHy
 Lm3mCpDFjrLL4RNUo6M0TUn9hocOmNZ4iTghPoKKKNxMl1SEiDs59MT0n
 5AP+yr6m+mWNQv8XEV+VzdNauZaDzbBkMz3rMW8qwVM5UHXlYvm9aXsSL
 pums/UyOWELcmmDWq/6MFHTYCuu1uGLHVibDq5wGQZo1WrMQFQNvZO6KR
 4BIVH72mnXlKr5NJK0eOXGXV25xGhJL6cFsslYUO7Gw7unJAcCzBkzEPn
 Sm5F/cZmOzaCXhFqQIm68TCxk+3s9vYUCp9Fa3OAa7uF8rTeXIElJw4aQ Q==;
X-CSE-ConnectionGUID: GlavFxGlR1eq5AzfxCC1ag==
X-CSE-MsgGUID: OzJRub79SCqYGUU6dIR70Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55526409"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="55526409"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:20:44 -0700
X-CSE-ConnectionGUID: 4+EPIUGyS0SBmd+KOQH5eQ==
X-CSE-MsgGUID: vtlaBmf0TsKX0+grgdnILA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="146874117"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 15:20:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:20:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 15:20:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.86)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 15:20:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TL0v9r5jo9mI8kryIhRWl2qOP3CX7/PYaN3F4X/2v+XdTAQBhlLQo+ZMmTJ5GZU0MGJzH98DX8gASaj2nOwG70HVq9qCGhBXaPqUzAlRbQpSTAtuZQQSkQw8aP80cvGoBrPwpZwTqkcJpSYIzXfJ8P/E2oSpd/AUcIPtWDOpjLxEIGdXE65YY1nG0qBZSnh/rofWz8ESC1oiDfEDgrgmXOD+ICLQzbr2YcGR3b5PitSUKkcJZRauBw405FYOJ307ffLh0wrghpj2keXwgU2dwf2uXJHb46LKTZNiGXhqPeDobq8feiLOPhxg2oVzBiPTHGXdrTeFkw36JpYyRmQtLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=srdgoWYqTZFoBIKC9nSxcIFBzLXevGaDxaPb/tDpMQM=;
 b=CekRHaN3Gu6kwgdjONodTNGnlQT2Yoqyk1RcopN3AUq27kkouXt1HSQ9v1ydpFoij1fGl7VJNb4bS3LKXXLBbjvoPc6UoBH4HJv7AfsC1EdZbwxMRfJ300Q9+49gBuhjNQlx3bBMNecEl5oY6uV40228S8L4eSzqt4DPQONk3QZdzWaYOH2541esWZtsr7itVdPs1mRNxYT8/SmM6qLutRjHT4M5jAlf6fHOIB8+N7P9labo0J4q2HwgcG3sVaG7MBKFGjceKf30ETeEQ85Fkld6CBTMk8B0KTwX4Mn6csib+HV/Kr8pv8NvyAVlGcR7Dt41ML8XdNH6NCIsQGTK/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5876.namprd11.prod.outlook.com (2603:10b6:806:22a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Tue, 10 Jun
 2025 22:20:26 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 22:20:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 11/21] drm/i915/dmc: Shuffle code around
Thread-Topic: [PATCH v4 11/21] drm/i915/dmc: Shuffle code around
Thread-Index: AQHb2UjEZG6eFMn1S0C88vwfP4DuQ7P8+RHQ
Date: Tue, 10 Jun 2025 22:20:26 +0000
Message-ID: <DM4PR11MB6360048EFD348158DB37A45CF46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5876:EE_
x-ms-office365-filtering-correlation-id: 1b39c220-8708-491d-d3f8-08dda86d0070
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NlB1Ukt4MWpsbCtBdml0R21WN3FIUDJ5R254ODZoRVdEMFVNa0diWi8xY216?=
 =?utf-8?B?V3h3TzhUaDZSY24vWVgzdUZNUkQyNnpaQXNjSnlHV1M5OEhVcVFNblBabndE?=
 =?utf-8?B?czJ0alAwSUlyc0g3Ky90S3FpNm1tTDMzR3BzaEJqaDBuTWxWemdjOW94SXBu?=
 =?utf-8?B?cnYraGQ0MUxodStOT3FDazA4NGEvc0hJN0RpMzJiK01sa2dyT0g5Rk5mWVc2?=
 =?utf-8?B?T2s0eENmZ1k4UUFkcXFhKzNuN2ZCbTVBZnZJY09kcHpWNTFUNWp0a1hGVVE0?=
 =?utf-8?B?WXdqQlJ2NGFVYTNsU0N6SWlvTFZ5YVp2THkxZERELy9CT2NpU00vV2RDSEhy?=
 =?utf-8?B?eWxvWktHdUhTTjFxVXQ0SlpSU2FDTFV4N0hoTTFCMjJVQURIQVM1cmhaQ1h1?=
 =?utf-8?B?dzRUVWRTWWE1eFE5bzVXWGNwRFBQN0YwRXUzWG01STBrc3p6ek56dzNNR3NW?=
 =?utf-8?B?aVVoN216ZDdCVUgreVZWNVNHUjZPdEt1cmtrM1h6UkE4eE4yWE5oNEI3dzIv?=
 =?utf-8?B?cmszRXc1UXhzTElBN3VOUlJ1cHhNdUdDWThKTW5NeVkyZllGSHpMSWt2V3VV?=
 =?utf-8?B?VzRtODFtaW5SOVFuZzQ1Y05qUE5yd0FmWWxTRkN3UVd0R1JMZEROS0g4R2tV?=
 =?utf-8?B?V0ttMlUwQ3IyWXF2S0ZMV1gwSFF1emZvM2FCdXJXSEFtcTY4dnQ4QWovWnJx?=
 =?utf-8?B?ZmNtS3F1Y1pUeWQvNStCNHhwR09UQ0tLTzYycFljNnF0cXpKMFZlQkthV1Nu?=
 =?utf-8?B?dmkzYzQ2c3psQTc4cjY3T21VMzY3YlBtdTIzaVhWcUxtM3ROZGFScTBvQ2s1?=
 =?utf-8?B?VTdOakEzK3VYL3JBZ0lDZ0YrM3ZKSW9rMWxKb2FZU0s1VmdteUdlZnp0cjNa?=
 =?utf-8?B?R2tZSUhOMmNEa0VlQk02K09GT0NZaFE4WUxGRXdaWGNIbDVPN3VtNEtES2dl?=
 =?utf-8?B?dDZYb0VIME5LdTRFRmFVRmVscGt6aUlrMlZRd1d3NTlnWDJ4dFhsdS9tQ0Zn?=
 =?utf-8?B?aWtXVE9Jb0lUaVhvWGF0OUgxMG90Snc5S1VHSVhteTE5ZEQ2cWEra0wyck9i?=
 =?utf-8?B?WkJGWHRtYlVlTzhheFpXUk5vSlgyTUkwUlVyenJWL0FFMThZSFpqT0FoQVI4?=
 =?utf-8?B?Yjk0dm52ZXhRSXYyU2RIWE9icFRXQkVuZnVGQmRIU3F5Tk9FK0RUT2NFVlZV?=
 =?utf-8?B?ekgrYnQ5Q0FJaGY5NnlkWnhKVnhrbVF2Y3l0ODR4VkZML0MrK0MrNU4zejZw?=
 =?utf-8?B?allGdktVN0M3Vk1vdm4waUlZQWc0S0FUZTdyMHdvOWRCODhPbjVmUXdYc2lQ?=
 =?utf-8?B?NGMvdEVEa3pLdHZPUWhKcVRHai9Qd1RSQlhyZWZ4dGZwdWsrcEkzdlRyWGJY?=
 =?utf-8?B?VzFJMWJJSzNCdDdwdDRjNGVaMVY4Wjkrb0NHVDdvYTI0TE9sY25RMUNhUGkv?=
 =?utf-8?B?Z1RXbXdmNXlBY0RuM0ZQTDNyK3kwL0ViMU96eWYwM3pCd3hncmRRb2dvOE5M?=
 =?utf-8?B?R25UaFZGUlkyOU1zVUdVRTdjWWpKdHFWSG8zdDFCOEY0UFBXaEJSSC8yVkhQ?=
 =?utf-8?B?NHdnS2g4U29IUUI5SU5mVEN3ZnlpMjQ1bXdIY2ZkTXpHQXpiVmlWMUQ1eHpQ?=
 =?utf-8?B?QnRVL2laazFNTXdMaEdqdGRaOWdSZWQrbWNhMDIrT3NpeGs5V0dqRGlCT0JH?=
 =?utf-8?B?YTFuRnBNWHNtMnBXNU1pems4SmVrZkxYaVM0L0doVE5zcTV0YXBZd29oM2FS?=
 =?utf-8?B?anhCQURpZDBPSTN5V1l3azBJUXQyVkZvTkoxSWVNVkJIT0huRDBjZy9TQkZw?=
 =?utf-8?B?dFlEbnN3Q0c2MHNDSTd3Sll0em9kTjh6YTA3Y09lRlNldlFHWm54eTFxNDlo?=
 =?utf-8?B?TlpLdkN2NXFGZSt3WWROcWYrd3JkS2FHREgveDFtOGVoaDBndndSc3UxQTFZ?=
 =?utf-8?B?NTVKWWRUUlBPVVV2QVNtTUw3QkNzSnZhRHR3WmVBNnEzS0NsS1Q2SzNQS1lR?=
 =?utf-8?Q?NqGaVjDRO4zK+Q2A9YOzy7gaZkyFA4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clV5Y3NyVmF5SXdzaThNeW9nWk5DRlhQL0pVRE1SV1l1WUJOS1VXYm5ab09x?=
 =?utf-8?B?Z2ZJREp4dmZ1MW9NenlLZE0wN2NpT2JmMjRCVDBKVkxGYXNMWElaakRUMm0v?=
 =?utf-8?B?bnlPek90UDBvN0F6TmUvdXpHT3J0TndsNkxFNmZZWWVlQWVUcW56ajEvLzMv?=
 =?utf-8?B?MHJXVnNod0dqbHphMVhiWHJzQm1kNStEWkhkMzZpZEQ0V3pVRmFGWk9NUHF0?=
 =?utf-8?B?ZkJSeUJsRVlLS2JoNVpaN3pQTzhOUFphektZd2RYU1pyUFRZYkVmSDRWN3o4?=
 =?utf-8?B?cXFFbDhjaFpWNEFNdmF6MnNHWUlXTm03b2xNcjY1REJ2VlhVSnpjTXZtRkpL?=
 =?utf-8?B?Z0dxT2NJaEFFZmdoMi9mSDR3dHdHRHBFclhmdTQ4Tmd0b1QzUnp5T2N1TlNB?=
 =?utf-8?B?OVY5aU83RGN4cnVva0FuM29lbWJVTTRjMmdvemM2cnBjekdHcnlqZE1mM0lN?=
 =?utf-8?B?WTNwMzR0emRTOTcxMnFNL3VrUG5YRUpvOHRLWlBvdFMxWlVoSW9xMzVHZE5I?=
 =?utf-8?B?YUwyOVZHRTY3WURwaDZTUlZEcFRlRjFIL2NGMzdnRXNRSGVvd2hLRjF0Wm5t?=
 =?utf-8?B?N0h2RTAzUjhmYVI3eWg2eFlBT1RTR0JWc2pTVG1wVndiOThueFNNRjRHNTRE?=
 =?utf-8?B?VEViOEFVQjhjSFNiTzh2UHNwYk5wTkE5bXQ4elBWRkNzbGhRSE1XVDdDL2V3?=
 =?utf-8?B?eUl4SHljSE1mSTZmQzR6T3Z5dkhySGxRVUorekg2QnhLL1FEbkdjays2MTFQ?=
 =?utf-8?B?dGVMTXJDYjMyc2ZwTnNXKythaWdSQ2NFMllhUzBPZnZTbXNpTm4zSjYyWVNs?=
 =?utf-8?B?clFOSXBwTDh2ZFMwdjRhaERuMTRVeFlQc2lkNHlVTXM4clR0ajlIZ1pNWXdS?=
 =?utf-8?B?YVNZaFJMdDRoWHE5dGxXNE43ZzI5UzhTUnhhajNkbzQ3U0dzQzUwU2hwVmcw?=
 =?utf-8?B?Q1JVYzUvaktmalRpOEpkb1c1WkpFSXVJNnJyeVZVZ2p0UFFSU1p5MlJxMnNO?=
 =?utf-8?B?R1hSVko4SFQxVzIxQUVqL2JncGd0cjE5NjZyQzFIZFB4Wk5tdzhKUnUrZGxR?=
 =?utf-8?B?azM4MS8yUlhLYkR6d0ZXQyszUm5CYzc1bVVqcllpL0NxSnVXYm1GM2NvODJR?=
 =?utf-8?B?SEMzazVKOUtHUWhmenhDWk9takJmUm00M0hrYTd2YlFhNW9oSnFwR1FpSExi?=
 =?utf-8?B?c21oTDJPNzVOL3ptL0pHaEtZTnR3K0RpVGtKNEVUZUZMdGhDeWtZTG9rNm5V?=
 =?utf-8?B?ZkQySW9oTmJpMXpubXFNYVY3U2JoYURTakpZUWI2UnJBaWUwOVErZTZKNWcv?=
 =?utf-8?B?SG5CR1BLQlhnZVdpYkJYNEVnMDBaSkEwbld3NHFHVnFNWlRXSUc3NFdyTFhJ?=
 =?utf-8?B?VkNDS0VhV0UxTXJ4bE5WU2ZINWwwcUtBdXlIM3FobUtkTXBUVXZVZjdpQk1i?=
 =?utf-8?B?S1hHYXBld2RTTTdPbjY3UUVjOHIyUERYVzR2ZUV2K1Vzbk1hNXJ2cGhzeXFL?=
 =?utf-8?B?TEdJL1BEZGpUZWI2M25NcjZ2NFNpdFBzNkptNml2bTNwY3pUY2FIWkZES3lT?=
 =?utf-8?B?ZWQ3TXh0VjgwUnhHYmxEbzZIMDZCN1loVzBXaFByQ3JyMko5dnpEeGJrcU4r?=
 =?utf-8?B?dUh4RThOd1NGYjdkSWljS3RodmNsRC9RS3lXQkhPMks4T2J6QnJGL3Bra0dQ?=
 =?utf-8?B?M2pZOWFyaE5xcGhJZUN5KzBtUS90SUlOVlowUlpBOHhweUVtVi9aTmh4ai8r?=
 =?utf-8?B?RmZLcGpZWmhINmxyQ0FXUzlheVc2Vm5Qd0FYYUtSY1VYbGpSQW42eTFvM2g5?=
 =?utf-8?B?OUY4d1d4bzAzU1g4SWx2TVJmWG0xWERsdHk4SXl5VndmVENqM2g4bEp4SGRL?=
 =?utf-8?B?NnNFd2xnSHZVdnUwY3VJWDI1WHAvRUZJZHpjWTZDRlRUNjltdVIyRzFmclVK?=
 =?utf-8?B?Z2o2V21OUVhNc2JvRVlqNkRlaW1xYUZvSDhVLzZGRysxWXlSV1FxYnFYUWoz?=
 =?utf-8?B?ZmJ4YUxPL3BoWWE5S2R3UDQ5SU9pWkpSTGEwMXFPZkFkTVQ3ZFlYUE1sSUdI?=
 =?utf-8?B?Z0ZUZDY4dDBCaGM4N2UwVnplOXhnNWV4Vzd6TGg0ME5VSy9PS254TFVvQ0lo?=
 =?utf-8?Q?xCW8sC3r0eZJbEFjiwRz+wjKX?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b39c220-8708-491d-d3f8-08dda86d0070
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 22:20:26.8375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cl7eJaGWg6dgdwrsEsOgm7PtEcZFhHjELzxiP5+b6RzXDWmP1f0LLFwVCOlrnyeY47tkVzjzXAFfQ/HvaBMHbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5876
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMTEvMjFdIGRybS9pOTE1L2RtYzogU2h1
ZmZsZSBjb2RlIGFyb3VuZA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFNodWZmbGUgdGhlIERNQ19FVlRfQ1RMIHJlbGF0
ZWQgc3R1ZmYgYXJvdW5kIG9uY2UgbW9yZS4gV2UnbGwgbmVlZCB0aGlzIHN0dWZmDQo+IGR1cmlu
ZyBpbnRlbF9kbWNfZW5hYmxlX3BpcGUoKSwgYW5kIHRoaXMgbGV0cyB1cyBhdm9pZCBmb3J3YXJk
IGRlY2xhcmF0aW9ucy4NCg0KTG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyB8IDE0NCArKysrKysrKysrKy0tLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcyIGluc2VydGlvbnMoKyksIDcyIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZG1jLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+
IGluZGV4IDYzOTJmYTkyOGUwOC4uNWE0MzI5OGNkMGU3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gQEAgLTUwNSw0MiArNTA1LDYgQEAgc3RhdGlj
IHUzMiBwaXBlZG1jX2ludGVycnVwdF9tYXNrKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNw
bGF5KQ0KPiAgCQlQSVBFRE1DX0FUU19GQVVMVDsNCj4gIH0NCj4gDQo+IC12b2lkIGludGVsX2Rt
Y19lbmFibGVfcGlwZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgZW51bSBwaXBlIHBp
cGUpIC17DQo+IC0JZW51bSBpbnRlbF9kbWNfaWQgZG1jX2lkID0gUElQRV9UT19ETUNfSUQocGlw
ZSk7DQo+IC0NCj4gLQlpZiAoIWlzX3ZhbGlkX2RtY19pZChkbWNfaWQpIHx8ICFoYXNfZG1jX2lk
X2Z3KGRpc3BsYXksIGRtY19pZCkpDQo+IC0JCXJldHVybjsNCj4gLQ0KPiAtCWlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA+PSAyMCkgew0KPiAtCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBF
RE1DX0lOVEVSUlVQVChwaXBlKSwNCj4gcGlwZWRtY19pbnRlcnJ1cHRfbWFzayhkaXNwbGF5KSk7
DQo+IC0JCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVETUNfSU5URVJSVVBUX01BU0socGlw
ZSksDQo+IH5waXBlZG1jX2ludGVycnVwdF9tYXNrKGRpc3BsYXkpKTsNCj4gLQl9DQo+IC0NCj4g
LQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+IC0JCWludGVsX2RlX3JtdyhkaXNw
bGF5LCBNVExfUElQRURNQ19DT05UUk9MLCAwLA0KPiBQSVBFRE1DX0VOQUJMRV9NVEwocGlwZSkp
Ow0KPiAtCWVsc2UNCj4gLQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIFBJUEVETUNfQ09OVFJPTChw
aXBlKSwgMCwNCj4gUElQRURNQ19FTkFCTEUpOw0KPiAtfQ0KPiAtDQo+IC12b2lkIGludGVsX2Rt
Y19kaXNhYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZSBw
aXBlKSAtew0KPiAtCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1DX0lEKHBp
cGUpOw0KPiAtDQo+IC0JaWYgKCFpc192YWxpZF9kbWNfaWQoZG1jX2lkKSB8fCAhaGFzX2RtY19p
ZF9mdyhkaXNwbGF5LCBkbWNfaWQpKQ0KPiAtCQlyZXR1cm47DQo+IC0NCj4gLQlpZiAoRElTUExB
WV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+IC0JCWludGVsX2RlX3JtdyhkaXNwbGF5LCBNVExfUElQ
RURNQ19DT05UUk9MLA0KPiBQSVBFRE1DX0VOQUJMRV9NVEwocGlwZSksIDApOw0KPiAtCWVsc2UN
Cj4gLQkJaW50ZWxfZGVfcm13KGRpc3BsYXksIFBJUEVETUNfQ09OVFJPTChwaXBlKSwNCj4gUElQ
RURNQ19FTkFCTEUsIDApOw0KPiAtDQo+IC0JaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDIw
KSB7DQo+IC0JCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVETUNfSU5URVJSVVBUX01BU0so
cGlwZSksIH4wKTsNCj4gLQkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgUElQRURNQ19JTlRFUlJV
UFQocGlwZSksDQo+IHBpcGVkbWNfaW50ZXJydXB0X21hc2soZGlzcGxheSkpOw0KPiAtCX0NCj4g
LX0NCj4gLQ0KPiAgc3RhdGljIHUzMiBkbWNfZXZ0X2N0bF9kaXNhYmxlKHZvaWQpDQo+ICB7DQo+
ICAJcmV0dXJuIFJFR19GSUVMRF9QUkVQKERNQ19FVlRfQ1RMX1RZUEVfTUFTSywNCj4gQEAgLTU3
OCw2ICs1NDIsNzggQEAgc3RhdGljIGJvb2wgaXNfZXZlbnRfaGFuZGxlcihzdHJ1Y3QgaW50ZWxf
ZGlzcGxheQ0KPiAqZGlzcGxheSwNCj4gIAkJUkVHX0ZJRUxEX0dFVChETUNfRVZUX0NUTF9FVkVO
VF9JRF9NQVNLLCBkYXRhKSA9PQ0KPiBldmVudF9pZDsgIH0NCj4gDQo+ICtzdGF0aWMgYm9vbCBk
aXNhYmxlX2RtY19ldnQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ICsJCQkgICAg
ZW51bSBpbnRlbF9kbWNfaWQgZG1jX2lkLA0KPiArCQkJICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIg
ZGF0YSkNCj4gK3sNCj4gKwlpZiAoIWlzX2RtY19ldnRfY3RsX3JlZyhkaXNwbGF5LCBkbWNfaWQs
IHJlZykpDQo+ICsJCXJldHVybiBmYWxzZTsNCj4gKw0KPiArCS8qIGtlZXAgYWxsIHBpcGUgRE1D
IGV2ZW50cyBkaXNhYmxlZCBieSBkZWZhdWx0ICovDQo+ICsJaWYgKGRtY19pZCAhPSBETUNfRldf
TUFJTikNCj4gKwkJcmV0dXJuIHRydWU7DQo+ICsNCj4gKwkvKiBhbHNvIGRpc2FibGUgdGhlIGZs
aXAgcXVldWUgZXZlbnQgb24gdGhlIG1haW4gRE1DIG9uIFRHTCAqLw0KPiArCWlmIChkaXNwbGF5
LT5wbGF0Zm9ybS50aWdlcmxha2UgJiYNCj4gKwkgICAgaXNfZXZlbnRfaGFuZGxlcihkaXNwbGF5
LCBkbWNfaWQsIE1BSU5ETUNfRVZFTlRfQ0xLX01TRUMsDQo+IHJlZywgZGF0YSkpDQo+ICsJCXJl
dHVybiB0cnVlOw0KPiArDQo+ICsJLyogYWxzbyBkaXNhYmxlIHRoZSBIUlIgZXZlbnQgb24gdGhl
IG1haW4gRE1DIG9uIFRHTC9BRExTICovDQo+ICsJaWYgKChkaXNwbGF5LT5wbGF0Zm9ybS50aWdl
cmxha2UgfHwgZGlzcGxheS0+cGxhdGZvcm0uYWxkZXJsYWtlX3MpICYmDQo+ICsJICAgIGlzX2V2
ZW50X2hhbmRsZXIoZGlzcGxheSwgZG1jX2lkLCBNQUlORE1DX0VWRU5UX1ZCTEFOS19BLCByZWcs
DQo+IGRhdGEpKQ0KPiArCQlyZXR1cm4gdHJ1ZTsNCj4gKw0KPiArCXJldHVybiBmYWxzZTsNCj4g
K30NCj4gKw0KPiArc3RhdGljIHUzMiBkbWNfbW1pb2RhdGEoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXksDQo+ICsJCQlzdHJ1Y3QgaW50ZWxfZG1jICpkbWMsDQo+ICsJCQllbnVtIGludGVs
X2RtY19pZCBkbWNfaWQsIGludCBpKQ0KPiArew0KPiArCWlmIChkaXNhYmxlX2RtY19ldnQoZGlz
cGxheSwgZG1jX2lkLA0KPiArCQkJICAgIGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvYWRkcltp
XSwNCj4gKwkJCSAgICBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb2RhdGFbaV0pKQ0KPiArCQly
ZXR1cm4gZG1jX2V2dF9jdGxfZGlzYWJsZSgpOw0KPiArCWVsc2UNCj4gKwkJcmV0dXJuIGRtYy0+
ZG1jX2luZm9bZG1jX2lkXS5tbWlvZGF0YVtpXTsNCj4gK30NCj4gKw0KPiArdm9pZCBpbnRlbF9k
bWNfZW5hYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZQ0K
PiArcGlwZSkgew0KPiArCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1DX0lE
KHBpcGUpOw0KPiArDQo+ICsJaWYgKCFpc192YWxpZF9kbWNfaWQoZG1jX2lkKSB8fCAhaGFzX2Rt
Y19pZF9mdyhkaXNwbGF5LCBkbWNfaWQpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMjApIHsNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwg
UElQRURNQ19JTlRFUlJVUFQocGlwZSksDQo+IHBpcGVkbWNfaW50ZXJydXB0X21hc2soZGlzcGxh
eSkpOw0KPiArCQlpbnRlbF9kZV93cml0ZShkaXNwbGF5LCBQSVBFRE1DX0lOVEVSUlVQVF9NQVNL
KHBpcGUpLA0KPiB+cGlwZWRtY19pbnRlcnJ1cHRfbWFzayhkaXNwbGF5KSk7DQo+ICsJfQ0KPiAr
DQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiArCQlpbnRlbF9kZV9ybXco
ZGlzcGxheSwgTVRMX1BJUEVETUNfQ09OVFJPTCwgMCwNCj4gUElQRURNQ19FTkFCTEVfTVRMKHBp
cGUpKTsNCj4gKwllbHNlDQo+ICsJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBQSVBFRE1DX0NPTlRS
T0wocGlwZSksIDAsDQo+IFBJUEVETUNfRU5BQkxFKTsgfQ0KPiArDQo+ICt2b2lkIGludGVsX2Rt
Y19kaXNhYmxlX3BpcGUoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0gcGlwZQ0K
PiArcGlwZSkgew0KPiArCWVudW0gaW50ZWxfZG1jX2lkIGRtY19pZCA9IFBJUEVfVE9fRE1DX0lE
KHBpcGUpOw0KPiArDQo+ICsJaWYgKCFpc192YWxpZF9kbWNfaWQoZG1jX2lkKSB8fCAhaGFzX2Rt
Y19pZF9mdyhkaXNwbGF5LCBkbWNfaWQpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwlpZiAoRElT
UExBWV9WRVIoZGlzcGxheSkgPj0gMTQpDQo+ICsJCWludGVsX2RlX3JtdyhkaXNwbGF5LCBNVExf
UElQRURNQ19DT05UUk9MLA0KPiBQSVBFRE1DX0VOQUJMRV9NVEwocGlwZSksIDApOw0KPiArCWVs
c2UNCj4gKwkJaW50ZWxfZGVfcm13KGRpc3BsYXksIFBJUEVETUNfQ09OVFJPTChwaXBlKSwNCj4g
UElQRURNQ19FTkFCTEUsIDApOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49
IDIwKSB7DQo+ICsJCWludGVsX2RlX3dyaXRlKGRpc3BsYXksIFBJUEVETUNfSU5URVJSVVBUX01B
U0socGlwZSksIH4wKTsNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGlzcGxheSwgUElQRURNQ19JTlRF
UlJVUFQocGlwZSksDQo+IHBpcGVkbWNfaW50ZXJydXB0X21hc2soZGlzcGxheSkpOw0KPiArCX0N
Cj4gK30NCj4gKw0KPiAgc3RhdGljIHZvaWQgZG1jX2NvbmZpZ3VyZV9ldmVudChzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCQllbnVtIGludGVsX2RtY19pZCBkbWNfaWQsDQo+
ICAJCQkJdW5zaWduZWQgaW50IGV2ZW50X2lkLA0KPiBAQCAtNjM4LDQyICs2NzQsNiBAQCB2b2lk
DQo+IGludGVsX2RtY19zdGFydF9wa2djX2V4aXRfYXRfc3RhcnRfb2ZfdW5kZWxheWVkX3ZibGFu
ayhzdHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAgCWRtY19jb25maWd1cmVfZXZlbnQoZGlzcGxheSwg
ZG1jX2lkLCBQSVBFRE1DX0VWRU5UX1ZCTEFOSywNCj4gZW5hYmxlKTsgIH0NCj4gDQo+IC1zdGF0
aWMgYm9vbCBkaXNhYmxlX2RtY19ldnQoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+
IC0JCQkgICAgZW51bSBpbnRlbF9kbWNfaWQgZG1jX2lkLA0KPiAtCQkJICAgIGk5MTVfcmVnX3Qg
cmVnLCB1MzIgZGF0YSkNCj4gLXsNCj4gLQlpZiAoIWlzX2RtY19ldnRfY3RsX3JlZyhkaXNwbGF5
LCBkbWNfaWQsIHJlZykpDQo+IC0JCXJldHVybiBmYWxzZTsNCj4gLQ0KPiAtCS8qIGtlZXAgYWxs
IHBpcGUgRE1DIGV2ZW50cyBkaXNhYmxlZCBieSBkZWZhdWx0ICovDQo+IC0JaWYgKGRtY19pZCAh
PSBETUNfRldfTUFJTikNCj4gLQkJcmV0dXJuIHRydWU7DQo+IC0NCj4gLQkvKiBhbHNvIGRpc2Fi
bGUgdGhlIGZsaXAgcXVldWUgZXZlbnQgb24gdGhlIG1haW4gRE1DIG9uIFRHTCAqLw0KPiAtCWlm
IChkaXNwbGF5LT5wbGF0Zm9ybS50aWdlcmxha2UgJiYNCj4gLQkgICAgaXNfZXZlbnRfaGFuZGxl
cihkaXNwbGF5LCBkbWNfaWQsIE1BSU5ETUNfRVZFTlRfQ0xLX01TRUMsDQo+IHJlZywgZGF0YSkp
DQo+IC0JCXJldHVybiB0cnVlOw0KPiAtDQo+IC0JLyogYWxzbyBkaXNhYmxlIHRoZSBIUlIgZXZl
bnQgb24gdGhlIG1haW4gRE1DIG9uIFRHTC9BRExTICovDQo+IC0JaWYgKChkaXNwbGF5LT5wbGF0
Zm9ybS50aWdlcmxha2UgfHwgZGlzcGxheS0+cGxhdGZvcm0uYWxkZXJsYWtlX3MpICYmDQo+IC0J
ICAgIGlzX2V2ZW50X2hhbmRsZXIoZGlzcGxheSwgZG1jX2lkLCBNQUlORE1DX0VWRU5UX1ZCTEFO
S19BLCByZWcsDQo+IGRhdGEpKQ0KPiAtCQlyZXR1cm4gdHJ1ZTsNCj4gLQ0KPiAtCXJldHVybiBm
YWxzZTsNCj4gLX0NCj4gLQ0KPiAtc3RhdGljIHUzMiBkbWNfbW1pb2RhdGEoc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXksDQo+IC0JCQlzdHJ1Y3QgaW50ZWxfZG1jICpkbWMsDQo+IC0JCQll
bnVtIGludGVsX2RtY19pZCBkbWNfaWQsIGludCBpKQ0KPiAtew0KPiAtCWlmIChkaXNhYmxlX2Rt
Y19ldnQoZGlzcGxheSwgZG1jX2lkLA0KPiAtCQkJICAgIGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5t
bWlvYWRkcltpXSwNCj4gLQkJCSAgICBkbWMtPmRtY19pbmZvW2RtY19pZF0ubW1pb2RhdGFbaV0p
KQ0KPiAtCQlyZXR1cm4gZG1jX2V2dF9jdGxfZGlzYWJsZSgpOw0KPiAtCWVsc2UNCj4gLQkJcmV0
dXJuIGRtYy0+ZG1jX2luZm9bZG1jX2lkXS5tbWlvZGF0YVtpXTsNCj4gLX0NCj4gLQ0KPiAgLyoq
DQo+ICAgKiBpbnRlbF9kbWNfbG9hZF9wcm9ncmFtKCkgLSB3cml0ZSB0aGUgZmlybXdhcmUgZnJv
bSBtZW1vcnkgdG8gcmVnaXN0ZXIuDQo+ICAgKiBAZGlzcGxheTogZGlzcGxheSBpbnN0YW5jZQ0K
PiAtLQ0KPiAyLjQ5LjANCg0K
