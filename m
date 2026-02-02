Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFLYAdT+gGk6DgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:45:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F063D0A5A
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 20:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B83B10E2D7;
	Mon,  2 Feb 2026 19:45:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="na03sJp6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C8610E2BF;
 Mon,  2 Feb 2026 19:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770061520; x=1801597520;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nE26EMyMuqz9gedyMBwtyVPOunGubs/kX8o4kHFai88=;
 b=na03sJp6Y+PFSYuoBJJQ/Tpo0ejIIJPeyTu0E2Fnb0aiAbs88IR7q43W
 wbR631qdN/VRE2ao8Te9vM/QdfEYmMlLq6AhH4xbR0aAr3T7TF2pi3Pc+
 DhsjpQtMuKpK03b9t6J0zlD978b9ig7TOcV7emk7faRrsDvioT7dfFKZL
 +i+o+uqPmbVGGXapi3D10XfzFV+ycaa5njHQvrIKVA/h+w4DdaVJCMKZE
 VEprhAGd4iKxGdKIoQodTmOYpNhsdv41gXG+aAmJssxxkI2QrabgKzGif
 iTdZFETjvhJYQJZ5836M94icRPBAIENxRDkQm/miQsHE85j9R/KX2Ny7V w==;
X-CSE-ConnectionGUID: XSgMg1xxTqW9RMKgq/DcMQ==
X-CSE-MsgGUID: zvNUb/V9RIOLs7PznMTRJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="71209583"
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="71209583"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:45:19 -0800
X-CSE-ConnectionGUID: 3cbhYXPPRqGpSpOqbf8JZQ==
X-CSE-MsgGUID: 6De0SLt4SGKvl1DIWQ1xSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,269,1763452800"; d="scan'208";a="214411939"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 11:45:19 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:45:18 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 11:45:18 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.19) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 11:45:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Bt8x/CAueC/EB7UWTbFucV1GzVPicWRFv0KOWdpfxLzz9Zg3zvBqprFDZJ0Oi3TO9kZToOYVZyOLccOYiAzVJKutno8LWFKmo1MdzkNQ1BaA2Bsqdy/NbBfRIV4cW/E/qoEaFGhMPuu6RaWBZRE6aWsHJI/U/BBTUDIzby6dY7Veyjzn5A7gARaG3wPmyjy8C0cs0YNPogPGJX62C6NbD9nNF/55eaSXQHpHWVKm6mbSoIN3JG1SJ7ogfciEHvXPThACA/PIA/VHOtaK7QmL8HGCOBvtyPHG0QJvbclXY7zvpNb+H2mtqS1UMNeDVDMiymBx6O3jubdShJKoqgubAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WQ+jtqApout95+Rcl/7d6+zSvXfqU1+hn1pbZxojgaE=;
 b=km+nQeI2qRbjWXRzpLPJ+p4KxPH4RKHD4zoBeAwBpVWA3V/8MVv3Jl2bwG8ELq9KJvcvfSBXQNjspQ3cmXrujMU52h0rPcQXELCfq9umV0GEWeJy4Fxt52X7cLvvbomIeeu8q/JzhHZ9ZNL6/0vj6fsrS1t9e/etQd8oTAj+QSBVugm08MzyN5OlG2WY4cAJpaSYABs3woGluGGCaQJ4aDrkUybzBk5/Degpx9pMHOIzhTqynAQDl9iKTlEoZGHgiZEhfZpiwEmbO2cmnG32g63V73yPaQaWM6yy0mdZ5XzX/2pa/WAYoQYWhVELfJH+OllxUkngTRNAXcWRx676Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB7197.namprd11.prod.outlook.com (2603:10b6:208:41a::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9564.15; Mon, 2 Feb 2026 19:45:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 19:45:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: RE: [i915-rt v5 04/21] drm/i915/display: Make set_pipeconf use the fw
 variants
Thread-Topic: [i915-rt v5 04/21] drm/i915/display: Make set_pipeconf use the
 fw variants
Thread-Index: AQHcit1gg9/0HiQY0UCHdunCmJySlLVv4wTA
Date: Mon, 2 Feb 2026 19:45:13 +0000
Message-ID: <DM4PR11MB63600A2CF5854D37D427BD50F49AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121135318.651622-1-dev@lankhorst.se>
 <20260121135318.651622-5-dev@lankhorst.se>
In-Reply-To: <20260121135318.651622-5-dev@lankhorst.se>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB7197:EE_
x-ms-office365-filtering-correlation-id: 278da0f2-4464-4845-3817-08de629395cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?pzTOR+g7/js81VW8SNPlySun7MvO2y3Sm4hGni/SKFrqfhfO8R9lGgLwDoEJ?=
 =?us-ascii?Q?9EAASs81iIyE6wtmKr8u4hzRv91WHkUETFGHArK9sEg2XqYMfea5qzEvFZpa?=
 =?us-ascii?Q?OayVyAGvW5/hS+qq7uw0HbYljhZu7ZiPdMjs6enETOSZoBGEKbZaqw7sHe90?=
 =?us-ascii?Q?f2H1NVOsJV4Sp0JTYOxkTUqUlHgv2KSMfzeLhbqMW63RLYREkMfRdEJ/uv3e?=
 =?us-ascii?Q?SFzbUGWZFBXWIR2UE5yr7s6zqJma7gVDjd2L6wNlKoeYOlihIxda2Ou2bUWk?=
 =?us-ascii?Q?kuoFbvDI2X5KCMnO1k0ni9wkypE2uBNw1opi115JSa7S1qr0DlFN8EmIFwNG?=
 =?us-ascii?Q?4vHWKFLisjgq6BE/9w7MPiualA3ePuoqdMSaefRdtBfjOJn3ba1Je/FxYak4?=
 =?us-ascii?Q?Os+iVX5kPhZHZI3A+EtdSGRXEu4MrXG5CxFf+LFQcqLkb6IVlFjCdVGXJD1O?=
 =?us-ascii?Q?yImVwmqndpHxWVww7rGgQSF1IiosSg+LFjKQcfbE7WEcjfVtjm+qxqqEwMdE?=
 =?us-ascii?Q?dBMQTuu+o4Ivmh5YFLm0PUG5diIdSNdrhMdhIhRVCtNlKdRipSaSUBRJfM/7?=
 =?us-ascii?Q?LVaYn8drtXXUgYHqun0Z6vc+IuSl9/UOfNGHiCX1oCpHCm9ox5uHhyqu9cqJ?=
 =?us-ascii?Q?V7e4AlzvCcJw1BG5TQRc48lmiLOxaG7YKYlPrYr6hNy8pI5YvpqByGQoKWiq?=
 =?us-ascii?Q?ww2NGq5giAiacU547s7x9ORNY3gX4Z2N28XSYBMbW83iDuDyC3wzs9ea4E9r?=
 =?us-ascii?Q?xlkI8zcQCQgH8HsLDHGoDxqPFu/5jd3rgt/mtz9X0irp2D5y162C6LDiqD/S?=
 =?us-ascii?Q?gg3cAGN4xBP1ZlvJm5aoDQ7rD41sNBZYjqhQOcKq6IC5rS+obE2WaunuTKjv?=
 =?us-ascii?Q?qO43gzmsXjRHUSTMFUxYm6+F3MOZbHZ/P8vqFcjzPqefiGnkg3mU1ds/CNEe?=
 =?us-ascii?Q?f9I7wk4OOLYmp2SKWxC3VhD8J2pj5IQYly9URWa0r/RvbRVWQJRwtDTBnmPw?=
 =?us-ascii?Q?ItbFx7ONGak2JsKUDA+LZdWPsay1An54zSrdMMAd+XCFKdaJjBvEp59qiwri?=
 =?us-ascii?Q?Ej/eu/zL3ATIRWJOxMFVzNSFXpfr/bh4yUF4DdMwYjjntR11Qg5kBwHIDShD?=
 =?us-ascii?Q?gXbR2uKbDfPMzN3yN3/JwZN0UDbUEvnFBDZnPI/bU/GYjEQBcvajbNAOMfJW?=
 =?us-ascii?Q?bsGYI1Gg1dJlv++d538OO6OYrZxW/yW3pViIRp7JmqNI0PyecYq2rC0aiHI0?=
 =?us-ascii?Q?jkA8J0Drz9Y/owenIgoXfVHZsI0IP3CbTEkrFwIB15j9u5AMTu9X9bRRzltD?=
 =?us-ascii?Q?evT2elbN+C737ua98bG2WDIa5PPZNQHc5Gy+QhrhiMJ2UNXIRlptVvHUmLFW?=
 =?us-ascii?Q?7EYQJGE0GL9WAVWNblYRk9rPrIAGA+Zmv2yDEN1w/9ZQGtAeP3swpFqbKfaB?=
 =?us-ascii?Q?tD10BXghi9eoOSeEzhff8rvs3OV7B/27dT/CfrUY7u01NbdpRyJJgXKo0iJR?=
 =?us-ascii?Q?KvLDqqOHHDuZfNWxe7mx+WwhwlJTE/tdhPVBRZLuG5VqOUjywXtxEo/TUuCg?=
 =?us-ascii?Q?96+nnPZ+v2aLyT8ic8HfQO/6OgWZqktlGFpzZsW/WCLIscgimy4Ah+nWE3pY?=
 =?us-ascii?Q?2BbNfpX4a6gpqwJIEjPA3qw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?pRmbRzhBA9owXjrd1wVCnnac5bgERIPFcYOfAViAqZW/BIqpREpwhOIcGXr9?=
 =?us-ascii?Q?x+O4EJ8eZT89gMdGJ2g2KTZ8VSUgG5i04oYGJvfqbw8WPwOosPfsDTc8kPmj?=
 =?us-ascii?Q?FDo0YUXv8oiGlM6ycRX8z1YVwCvQRYKc1kgLyD/VPT72q1AWv9EZJtdTPLvw?=
 =?us-ascii?Q?g6VApdlI1nMbdwzNtDb/tQuGMBYJgCPFBPNcIbdkfxlLTX7SxH7I2GUFxbxg?=
 =?us-ascii?Q?x+nMoi59LJHyiuWuoru/Kyput4REQghjkmu0i/pOcpzy6bM2q+zU/wWeuDZ9?=
 =?us-ascii?Q?SiXyu7Mwe1hmUmxeGnn+vvzrbn3PuvhSwWD48tCBWxKyaFJ8L3wOMRV9WTUT?=
 =?us-ascii?Q?MMC+9jcHzsIdc7Dw0vZ65EbtAK/swPluYmsxTGQutNIoLyxUUwH8aizrhP8z?=
 =?us-ascii?Q?oH8ia/14Zicdo0e3b/5oD0/fi0/oQqz/63V/5TtNw8b8exbpi4iaxhDebiXF?=
 =?us-ascii?Q?Qw1hTrPJZJ445NJia7lnUUyoGa84zRRDQ1uF60RPTVgOTRfjCaRRoaq74YjJ?=
 =?us-ascii?Q?2cxC1MhM3vcxlE50CXLCyQEPXc8RrPuDGfw5KHCjtMEECHim1GDjye9j9oPb?=
 =?us-ascii?Q?qbCJTwd1MSzFSz0C5RKP7M8lWpn+LapCtnD4G/+PAKmszpgAhEsj6JumFaEV?=
 =?us-ascii?Q?qqkX1Zqf6T4RmZhWHhWwoQD4+tfFqfmS9nkBsi7wX4Kz23LJWf4vwoLavhpp?=
 =?us-ascii?Q?fcvYPCPMzrwnbDyVkEJtQgsF/24m7iLWnilgd7hxjrjmZRQjnDfRzYo2WNug?=
 =?us-ascii?Q?pkfmDZDn0ybtlYsTEs3jnDwMRE8wO6s5GntIZ8MgvGz974QAWbAN1uVX81j4?=
 =?us-ascii?Q?BZ3aGBzaWJN8uVMK3dsg8JxSIdhd5ccQA7SmDdmmAGqs7nbBxGKSUGAy7xjm?=
 =?us-ascii?Q?6N/YKCsmibSmudZHqKgHmozb3EO4VgagZ7f4SldmjIhsY8hexIcWXNoC8Bat?=
 =?us-ascii?Q?wk8R1D7jAvje5Z/knVPk0Se3ZJh6fgq2WGRXKtXnBcymLRI9xgkh4FWwJaQM?=
 =?us-ascii?Q?viPDjH5WVa3eDNV8LWr9hq7PEVAvpMmK20sNtJ6NKPuAo4RQTcy0WImcEtzm?=
 =?us-ascii?Q?DuaEeER8NfXMqOLBNHoqoEaDdxinFzaSgPLIZswzwlQhXeiFcy/t0ROGzhd7?=
 =?us-ascii?Q?pp1QDw7CBRGTDzYwdj+zreWiF4vuPA58V1Ea9Ooac4tZCRu4TTlVQZvjZesq?=
 =?us-ascii?Q?R3Y0SqnqcAD5WUbV106ElHjo3QZAHAujfRZK2Q7sfSpeyjHGStVFsfsAEWFf?=
 =?us-ascii?Q?3jAmOOgrjwPfkz+819AL9wKXtX7prTI9N3aGWf5WWACIDmzG1OB8AZuXDrhM?=
 =?us-ascii?Q?H14uhnX1ZMFjFUSHnUKM8dlmQlmMYpXmB/P2oRifnrMWQwZfK448HEWBRbUd?=
 =?us-ascii?Q?PTX1ypxCJgV6mIht0zf5M9/2crzz6geS7F2PR3PVhOtcXZKDHLC/R9Vk7jgY?=
 =?us-ascii?Q?Ipj8J2xLF3dtUtk8spikLsxh6QHk/JriZIaYeoqVGzTlpSwn8t7Qqdbd6Zwj?=
 =?us-ascii?Q?95+hKNxnLMczWSjRwlyoPIksvceM1lPAwhSJZNmbLSveXJ/5HtXHJTVxp3cr?=
 =?us-ascii?Q?fIHmchV6uT7TKJSnu/0GxXaAYGnEMNGZM3xgO15kRLcPdV101vOxBL9e0O33?=
 =?us-ascii?Q?O4/TJPUw/MjcyCtOL3WDha+XIfJz36ICh6sOlSBLz/Q3ir8a8+VD4cuc2yFu?=
 =?us-ascii?Q?eWKD8BNEVWlgqY/Wfy9xQXcZxwjibsMRhHBwB6j6JJaT2eBpWRs8TmyeDVnd?=
 =?us-ascii?Q?AdJz84qWHQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 278da0f2-4464-4845-3817-08de629395cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2026 19:45:13.5522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A1OX8o8cGndckOA+73c9NeCJAyemKwIwiFonqx9ex2Qe1HiPjbNxYNWeZgkBfI9m6smXYJSs6mJ55cNcGIpUlQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7197
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:email,intel.com:dkim,DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,linutronix.de:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4F063D0A5A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Maar=
ten
> Lankhorst
> Sent: Wednesday, January 21, 2026 7:23 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Maarten Lankhorst <dev@lankhorst.se>; Sebastian Andrzej Siewior
> <bigeasy@linutronix.de>
> Subject: [i915-rt v5 04/21] drm/i915/display: Make set_pipeconf use the f=
w
> variants
>=20
> The calls are used inside the critical section when updating the gamma mo=
de, and
> thus should use the _fw variants to prevent locks.

Looks good to me, but limit it to RT.

> Fixes following splat:
> | BUG: sleeping function called from invalid context at
> | kernel/locking/spinlock_rt.c:48
> | in_atomic(): 0, irqs_disabled(): 1, non_block: 0, pid: 2115, name:
> | modprobe
> | preempt_count: 0, expected: 0
> | RCU nest depth: 0, expected: 0
> | 4 locks held by modprobe/2115:
> |  #0: ffff99b9425161a0 (&dev->mutex){....}-{4:4}, at:
> | __driver_attach+0xaf/0x1c0
> |  #1: ffffaa224810f6c0 (crtc_ww_class_acquire){+.+.}-{0:0}, at:
> | intel_initial_commit+0x4c/0x200 [i915]
> |  #2: ffffaa224810f6e8 (crtc_ww_class_mutex){+.+.}-{4:4}, at:
> | intel_initial_commit+0x4c/0x200 [i915]
> |  #3: ffff99b94a6c9030 (&uncore->lock){+.+.}-{3:3}, at:
> | gen6_write32+0x50/0x290 [i915] irq event stamp: 513344 hardirqs last
> | enabled at (513343): [<ffffffff8ba8d84c>]
> | _raw_spin_unlock_irqrestore+0x4c/0x60
> | hardirqs last disabled at (513344): [<ffffffffc1543646>]
> | intel_pipe_update_start+0x216/0x2c0 [i915] softirqs last  enabled at
> | (512766): [<ffffffff8af045cf>] __local_bh_enable_ip+0x10f/0x170 softirq=
s last
> disabled at (512712): [<ffffffffc14dfb6a>] __i915_request_queue+0x3a/0x70=
 [i915]
> | CPU: 3 UID: 0 PID: 2115 Comm: modprobe Tainted: G        W           6.=
18.0-rc1+
> #17 PREEMPT_{RT,(lazy)}
> | Tainted: [W]=3DWARN
> | Hardware name: To Be Filled By O.E.M. To Be Filled By O.E.M./Z68
> | Pro3-M, BIOS P2.30 06/29/2012 Call Trace:
> |  <TASK>
> |  dump_stack_lvl+0x68/0x90
> |  __might_resched.cold+0xf0/0x12b
> |  rt_spin_lock+0x5f/0x200
> |  gen6_write32+0x50/0x290 [i915]
> |  ilk_set_pipeconf+0x12d/0x230 [i915]
> |  ilk_color_commit_arm+0x2d/0x70 [i915]
> |  intel_update_crtc+0x15b/0x690 [i915]
> |  intel_commit_modeset_enables+0xa6/0xd0 [i915]
> |  intel_atomic_commit_tail+0xd55/0x19a0 [i915]
> |  intel_atomic_commit+0x25d/0x2a0 [i915]
> |  drm_atomic_commit+0xad/0xe0 [drm]
> |  intel_initial_commit+0x16c/0x200 [i915]
> |  intel_display_driver_probe+0x2e/0x80 [i915]
> |  i915_driver_probe+0x791/0xc10 [i915]
> |  i915_pci_probe+0xd7/0x190 [i915]
>=20
> Reported-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++----
>  1 file changed, 6 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index d721a72072300..bf37511f9ab21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3013,8 +3013,9 @@ void i9xx_set_pipeconf(const struct intel_crtc_stat=
e
> *crtc_state)
>=20
>  	val |=3D TRANSCONF_FRAME_START_DELAY(crtc_state-
> >framestart_delay - 1);
>=20
> -	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
> -	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
> +	intel_de_write_fw(display, TRANSCONF(display, cpu_transcoder), val);
> +	/* posting read */
> +	intel_de_read_fw(display, TRANSCONF(display, cpu_transcoder));
>  }
>=20
>  static enum intel_output_format
> @@ -3209,8 +3210,9 @@ void ilk_set_pipeconf(const struct intel_crtc_state
> *crtc_state)
>  	val |=3D TRANSCONF_FRAME_START_DELAY(crtc_state-
> >framestart_delay - 1);
>  	val |=3D TRANSCONF_MSA_TIMING_DELAY(crtc_state-
> >msa_timing_delay);
>=20
> -	intel_de_write(display, TRANSCONF(display, cpu_transcoder), val);
> -	intel_de_posting_read(display, TRANSCONF(display, cpu_transcoder));
> +	intel_de_write_fw(display, TRANSCONF(display, cpu_transcoder), val);
> +	/* posting read */
> +	intel_de_read_fw(display, TRANSCONF(display, cpu_transcoder));
>  }
>=20
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state)
> --
> 2.51.0

