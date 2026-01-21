Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JT3B8BgcGkVXwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 06:14:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F895165F
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 06:14:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A02110E0CE;
	Wed, 21 Jan 2026 05:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlMYVQxw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EA810E010;
 Wed, 21 Jan 2026 05:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768972475; x=1800508475;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q7xoDBmTWuBUhfFJeinRDGQGkgeNRbHah4suepzxIJc=;
 b=AlMYVQxwW3G0CBrHopRqCR2PiSubh3eap093RUxVEfP7CSih1xBPV2ZZ
 rXuRcg0q+QOAYDbSBJBH4m1VV05/zVeLVA2CpL/abPBqycgry4LwYSEhW
 izzEwgn21YyeXnwXAE8L8SM+6xDMZK/sVvIF1FCwzUz2zrXlCEnlazLzO
 xG4qP7fmOCsNAqFinBTJ7qjAq99Bv3aH9pURDMJpTAgHPb9dK9qMagyiN
 KZ3aEiq7MtfeMH1rX3wlpIXYnrkowYC5TqbS/QQfy9RrMh0fX5qFTb2dt
 OEa4WeA1aySV6t6T+j68sh2ItQmo2WgMAPBVuBcxm7gfhRAtuCE9WnFw+ A==;
X-CSE-ConnectionGUID: 6IV2w/y5STa7PJ5eVjwM/g==
X-CSE-MsgGUID: qg6qe5b5TQ69Ld3ZOB+D9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70248587"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="70248587"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 21:14:34 -0800
X-CSE-ConnectionGUID: 2zMpOViQQsaQqjgPDdGi8g==
X-CSE-MsgGUID: NLJnV8XvTVOzTAmjJD4QcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="206149749"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 21:14:35 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 21:14:34 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 21:14:34 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.64) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 21:14:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C8iH/+yZRwh/Sy3tKGBv5ITzDz9pKvIdQ87jDQvNalc+iMGJVQESQU2HT5Cww0pSRjbakgSmPZt/V/0vNcLselX+gxpk7VsRKKUT7Gxe0yYf+cmcxwDRgDUx+M7Yc4l8t/zz8gKSQCon3Vn8YD4YMocmdlnuWpJ/ri7bMXHeQSzz+MUFHbf42afoKhSY5OvS9rsaqYQCl9wmIGBT852I5+6uqnBIrtwmxXCxHaZXpQ38qMJPx7W7LewB4/4LUmnB0z/80z29PSp+CjiwbwAvtU/qDf16uy4BPZqCD04551u1qe4HoliTA4XGFJz2iem9ypgjs9lmdNC9jCFPMw+c7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q7xoDBmTWuBUhfFJeinRDGQGkgeNRbHah4suepzxIJc=;
 b=dSOIv+Iju4PZ6VXQF1vDx1zIRYraYooouCfmGzjMXZa6zlDKx9x3INRYDSClbBXchngv8nmZFmhk0C+5NUEtNLYMucVCrN8P01xbv6peNJYxasHH2TCLu8OnL56etAXMs7fHRQvMgPOMonW22IrG80ayAZgxjuQdYMu6JoFkwdQbl02Zk3pps80vOPfBhaUB9vR6nYeP6iMXKV5Iz8b4RulggNgWzs9ZdhC5AijashfUTaL3evakBjFUVwJdXYa14Rc01dTOvwkVHiWc51+0oeVW+PFyqANb/IF9ApbP3yL+Z2Km0W/4Nt9BVbJ+lGsfFg93IKqYvFGI3aaHAcVs/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF1611BC49E.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::812) by PH8PR11MB6660.namprd11.prod.outlook.com
 (2603:10b6:510:1c3::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Wed, 21 Jan
 2026 05:14:30 +0000
Received: from SJ5PPF1611BC49E.namprd11.prod.outlook.com
 ([fe80::c679:6e81:264b:4b58]) by SJ5PPF1611BC49E.namprd11.prod.outlook.com
 ([fe80::c679:6e81:264b:4b58%6]) with mapi id 15.20.9542.008; Wed, 21 Jan 2026
 05:14:30 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH v2] drm/i915/display: Disable DMG Clock Gating
Thread-Topic: [PATCH v2] drm/i915/display: Disable DMG Clock Gating
Thread-Index: AQHcioJ6UWFP0otVEUeNAB6EFXdG0rVb/0CAgAAU92A=
Date: Wed, 21 Jan 2026 05:14:30 +0000
Message-ID: <SJ5PPF1611BC49EBF00133AA637D5DAA6AAE396A@SJ5PPF1611BC49E.namprd11.prod.outlook.com>
References: <20260120050033.635681-1-suraj.kandpal@intel.com>
 <20260121030257.662294-1-suraj.kandpal@intel.com>
 <d9ed8612-34ff-4b43-b486-8fd9d27da9c8@intel.com>
In-Reply-To: <d9ed8612-34ff-4b43-b486-8fd9d27da9c8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF1611BC49E:EE_|PH8PR11MB6660:EE_
x-ms-office365-filtering-correlation-id: fda9b257-4e87-4360-120b-08de58abf4d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?c2JnQStrTkx4YU4xaUVQTENPVlgxeDZLemlLMzlCblhRMmZ1VE15TmFySm53?=
 =?utf-8?B?UEtKaFJIN2JVbk9sKzZIUmVLdHNORGo3MkorSGxmNXNpelJsYUU1OTkwL0ZB?=
 =?utf-8?B?cU1WSGR2SGZWMjIrRFcvaU5Wb21zajdOdXpHRkxxdEJDRjBrdGNqTzVJVzl2?=
 =?utf-8?B?TW9HdVpsWjV3SFFkZXBtTndMSVJQQWVJeWxMRjJSclpnSnkxUDA0RmVCNFJ4?=
 =?utf-8?B?UXE4MnhPYWM1eERWZXNFdkJobHFJRGpWWkJ6cmNBcERna3F0aDVXV3Y1Z08x?=
 =?utf-8?B?bXF2VDNVRU51empRaFBxR1FZazhPbGRLamhoQlJsYzN1WFd1UFMwQmltelBG?=
 =?utf-8?B?RlVvc2hLcEh5TlBkS1cyZWZYMjJqRHFWSGpsTEtadEkwdk5EMkpyMENiamxS?=
 =?utf-8?B?M2JiWXdwRlgrVGo0bTFqOTBrNE81dUxMeWdxS3praG5tNTBvYnp5NEZTeENv?=
 =?utf-8?B?Z2JCUy9TdHMxNmphUW1qL0RYbjNoTUJ4WXRSN0Z2cFcycWFNZ05ZUmhEQUx0?=
 =?utf-8?B?a2lDZHRnbXRNdVhmbEpmeFZ2K2wzQUtLbW5UV0pQWFlSNW8zUWp0Skgxcy9v?=
 =?utf-8?B?NlB3bkFFNWV5cUk2cXZNcFh1L2cwOG5kK3RGcXg1NlEwa2lWRklzSFcvWXNw?=
 =?utf-8?B?cnVhM3BLaGJxdno3a3VJekh5NkFOdHZqTFFGaXFBQ0paSE5wMDQ0ekVaSm95?=
 =?utf-8?B?L1owbDdxeWJiQzh4M1ZiSEJKUmoyR1M5cWxydzJJWEQxZWh6bElrQ0tucGNy?=
 =?utf-8?B?cGZTdm1seHZhOVUwMWVZS0NPN3JDOWI4Ri8rMFRJcENLZjRGelRsci8rUGhr?=
 =?utf-8?B?NlovUSt3eC90MmVQUmh0QjE5UDhmeitVS0dUeXlwcGx4RFRHWm9rSWxpV3Yz?=
 =?utf-8?B?c3VPQzNRSExGRHNwL00vc3pyQ0xlTldFbW8xQ05PMldUbDQ4amErMTB6Y0U2?=
 =?utf-8?B?SjdWeGgyaVBLNmFvTXJldkpjZEZEWk4wQnNNYmdmaHpXN1BDRnpCRnZUaUtm?=
 =?utf-8?B?cUxqMXozZjVUZ29BVWNuSVRQSlYzb0pwb0x0NEZxb3J6OWdac21peHBETjIr?=
 =?utf-8?B?U0g2Vmc1ZU1TTkd3bWpPdEFwbWlzSC9VUTVad3hLbnM1VnJtNGliTlRFNk1w?=
 =?utf-8?B?a2lyTE1GM2x0YmlFa2NUVVRqQ0dmWmhFNGZYa0Q0Wm9ianBPUXJBc0c2QmpM?=
 =?utf-8?B?bHo5c3lOWGl3eldVazNabGZxZjZvZENIeUtRMTJnRWV3Y1I5WGh4b1RWdTcz?=
 =?utf-8?B?RUtwNVhNb0I5cXBta292WHNod2dxZ1JsdEZ4Q3Y3bFRpN1FWZVA0NlllTzFi?=
 =?utf-8?B?UlFPM1hsUVdOZzJvdUI2Mmc5b1dXa09mOHAzUHROeUQyZHlvZjBrVHoxNzlG?=
 =?utf-8?B?ZnZaRXhFWFVqN3VEZWd2djh2dnpZOC91bnJJZk9rOXF0SmV5aytyZFFJY0J0?=
 =?utf-8?B?STlvOFVRZXdnQU9zRlN5K1Z2bzhVWlJVUC8vTjdCVlhhV1dBL3lEWXM2Q3U5?=
 =?utf-8?B?NGhmVjlNcDA4WHAwSTFhRU9tVEsxeWdEK2FwVm01NzI1Zm1UZmhndDlEWlN5?=
 =?utf-8?B?Z0FiRGp6M25LUmFuaFBPN09jOXZ5NWhvam5rMFY2MDdVNmkzL3FpM1lRM3h2?=
 =?utf-8?B?TWJiTmRPNFdhUTRzODBtUUxMaFRTL093VWF0N1dMa01QelFraUI5SmRLLzZp?=
 =?utf-8?B?c1N1eWRnZ05KcXYrRlZpS29UWjFKNDdKbnd3VDNtNXVCYTRQemJZb3ptT1pP?=
 =?utf-8?B?ZkhvQ0pSdVBqbWFZdkJibEpHTUlkeFVNOTF5aWZMaGpybmJlSklDVEJRc2NR?=
 =?utf-8?B?UnNxR0tkZll5bzUrVWE3U3FpTysxV3dYam45Y2JoQTNUZjVTVnVsdWNYVktz?=
 =?utf-8?B?Y2J0cEVFcmcyU1hnTWd6b3Brc1VBWXJ1QXJzYU1Zb0hzQS80ajVuZG9NdVox?=
 =?utf-8?B?Z1psMXJwS1pEZHBLRXBJUDB2aGlNYkFLZzNyeTRFczU0MGxraDI4eUtzbysx?=
 =?utf-8?B?SFVtM3ZHWlhUK1JmQ1RqTnYvamh2NllCRGxibjdUbFN5L0FXRTNvZ1BYYmZD?=
 =?utf-8?B?WEI2aGJpVm5hNUFCWGdUOGsybDFmc3YxcithQUJpa2dJdnB1NU5pOElRL2Fh?=
 =?utf-8?B?UEFFUjM2OEw0QUFPMUlmdHc2U1NiYkxHRDhUODFMQjVzUW1iYUQyLzA2L05n?=
 =?utf-8?Q?8q1eQvlMxD7jkNe40+58Gdc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF1611BC49E.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N2JSMWYyRlJNeDBDM2M5MmpoWlNyT0EyT05vbWplckUwYzlaTTYrUUxTZzBS?=
 =?utf-8?B?a09nbW12dlBKQThLVnRxd1hyWC85a2FVbTlhRXRGWjZkVVYrU3pidkVrYkxV?=
 =?utf-8?B?L1pIKzBwbk5uQlJ3bUZlVVZuZ0dZM3ZGOC9vYjhVSWJWdGU4RjFHTjVLaTk4?=
 =?utf-8?B?N1NmUnJYdjZOWjZROGtiM1MrWmR5bm5UMUFRZkVVcnVEZ3AybjY2NHF1NjZN?=
 =?utf-8?B?WStiaEdEOTRTY0RRaXpsT2RMUFRlYTQ0Y3QrWXl6OGdjL3h5aHMrbWJJRTJZ?=
 =?utf-8?B?SGFNM1lXN2l2OTJYa29heFNEUkdncE5Dc3l2T25mamtWN0FGZURrMEI4UG8v?=
 =?utf-8?B?L2hraE9MT0ZNT3E4YVI5NGRoclZEMU02WFduK3FYZ0QzYlEzSlJGbE9PbSt0?=
 =?utf-8?B?eHZtYTZVNGN3YTdNNjJQWTk0V1FJOHpBdDZUNFUybFVLZG1PYUp2LzI0WVFU?=
 =?utf-8?B?UDFEVjZ5RzhNb1Z0Vm5zcjd0NzRSOEdTNlo4QWlOaGhWNmhPVHd1NDhBLzlR?=
 =?utf-8?B?NjBHc21Yb0VxZEhNK1VMd3cvOFhxclo2cWM4QmJpTG45RklLUmw5TUpIVzli?=
 =?utf-8?B?SzJySXJ1RkZZQUVVZ0ZGNVVkNnZiSUJPRnRvZUFEK2ZyZUVNRFZrNkdPaEVZ?=
 =?utf-8?B?eWtXc0VDMlRreEZ0MytkSWlDQTNkaUZIK2ZIeU0ydVdSd3l6aU9ZZS84azh1?=
 =?utf-8?B?aTMzMzN4UlR4TVkzZUplTktYYjQ4RWl1M0QzbUdReFFLU2JEb3NGN3RDNjhK?=
 =?utf-8?B?alR3dENvYXNtSldTVDhLdHJLaGVUdEMrR1pseGdaSDdoRjFzODUwTHE3Q3Np?=
 =?utf-8?B?MFFrT09ESHExUUdDRmtUUzFTZVcrR3dBK1k1b1hiOFJhREszeDQ0dlQzNUxr?=
 =?utf-8?B?RXF5R3FRZFJWMk9RRXduVnJya05SUStCamRMMG5UYkMwZWliTHhnbVhrZHdE?=
 =?utf-8?B?QlQrbWIxU0pHTW05MVNsWDRpRzBvemViTEZ5ZFEzbnhJQnU0djJjNXc5QjZs?=
 =?utf-8?B?b0UyOGdOS3ZUL014U28ybnBYcFZ3VERQS0lwdXlyNUduY0tpanlkaW1aOTFI?=
 =?utf-8?B?cXVqQ09GOGJmaVdzemI5emlFVFhRcG9sa2JGNHpPT3IxWWRJajYvVjFpWm95?=
 =?utf-8?B?YlBoc095QXc3cFg3TUNFU3VKcmVZbmpNZEZVajhEalJpR0llSlNJR20vZG5S?=
 =?utf-8?B?ekNraVpMUEE0SUFBMjlDN0JNYU1wMHlHdW5UVlIxeDM3L1RzTlVEMG5ESmxy?=
 =?utf-8?B?dnBSeHZ6V2V6YUlEdHVzWVlXVHpHdHZ0d0E5UHlxUjRwd1ozdVhsMm9CbWs2?=
 =?utf-8?B?QTZER0NZVlAzaFpRNXVDY1Foa0JPb3ViZUkyT2hjRUkxTTEyWUxqRGlNZitm?=
 =?utf-8?B?RFcwSkRLZmIzMEdBWHNIMHFIYXVkWVh5V1hsWjY1MzlFenFBYnhYMkd4VWFI?=
 =?utf-8?B?RE5vWk4ybnlrajZjNDdEcE9OQkUzeHAzdjc2TUw3VGt6STd5aFpDVFlWSWJO?=
 =?utf-8?B?d0RmTm5rNlhSVEVSOHJIYXNyRzZDTzR3cXNXa0pFcnZEWjg0ZGIzc24veW9Z?=
 =?utf-8?B?WUEwci9CWWh0ZDZKWG1LVVF5MTVxY1VvZUdMOTdKS1kveDl1Qld6WGhhTlkw?=
 =?utf-8?B?KzQ4b2FMcU55VUEwNVRUTXllejcwNHl5SFN5d3JSdDFORzY3ZmJBSnJNK2lT?=
 =?utf-8?B?N3dEVnZwNlpjQmp4c0lXTnVQTHl1QkxhYmJiVXJVMCszRkZ4VXQvaTRkUVlB?=
 =?utf-8?B?aVhrcWFQT3M0N3lXdzZUT2tuTS82NnVHUjEvaW9VSTMvUHg5bVJJOUJlQWZN?=
 =?utf-8?B?V3VWY3owL0VpRnk3UU42dXh3ZDczQjdEZ1hFNDdmOUJVQTRSSDlMbEcvaUxW?=
 =?utf-8?B?TEZqU1FHeDV0c1JaQjducXl1VmtiY3RiSkhoNWF3T2Y1Nk5Ocnk3enN2MGRB?=
 =?utf-8?B?bWUxdHN6N0dYck9CM1gzaHVPeHhVUE1iKzErSFZvWUpHRlN1dVBJNEIydVpZ?=
 =?utf-8?B?bnppYndzalNTemtzTlh6TFFNVWZEa3JCQkxKOGRKRTdwK2t3MHU4VDB5U05p?=
 =?utf-8?B?TUwyd1BsdGY2WE5Ka2pGMTV4a0pMeVdUYnRuYVZFS3hmUTBGUHZIYXdRUlRJ?=
 =?utf-8?B?MkRyc09PanAvdkkwOWJIRHBKd3hmSEJHNVFRaE91TVhuVXBGYWtRK2Z5TEtl?=
 =?utf-8?B?bUVyZTRUaDlyaG9DTGpvM2pkR3h5SFZJenBySVJXUk53NGdCVmpYNjBZc0tv?=
 =?utf-8?B?ZVpXVjh2Yis3Z2FKcDdJR242RzlSaDJyQ1IwdUthQWpuREhmYW1ISU1LRGpl?=
 =?utf-8?B?cmM5YjQxeXpIMWNFV3V6UXc5MmJyYUdoN3A3SklpbmlNMEJmbWRBdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF1611BC49E.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fda9b257-4e87-4360-120b-08de58abf4d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 05:14:30.3011 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: udsHMFlRZVbQXk9G90USBmKp6Rr3qy8xHJ6zvpFGRYI5mtUAUqmCNtdSegTsgnD/GsCECTPK1GOj5caTVNWigA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6660
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 59F895165F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTmF1dGl5YWwsIEFua2l0
IEsgPGFua2l0LmsubmF1dGl5YWxAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVh
cnkgMjEsIDIwMjYgOToyOCBBTQ0KPiBUbzogS2FuZHBhbCwgU3VyYWogPHN1cmFqLmthbmRwYWxA
aW50ZWwuY29tPjsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBHYXJnLCBOZW1lc2EgPG5lbWVzYS5nYXJnQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvZGlzcGxheTogRGlz
YWJsZSBETUcgQ2xvY2sgR2F0aW5nDQo+IA0KPiANCj4gT24gMS8yMS8yMDI2IDg6MzIgQU0sIFN1
cmFqIEthbmRwYWwgd3JvdGU6DQo+ID4gSW5jb3JyZWN0IGNsb2NrIGlzIGNvbm5lY3RlZCB0byBE
TUcgcmVnaXN0ZXJzLg0KPiA+IERpc2FibGUgRE1HIENsb2NrIGdhdGluZyBkdXJpbmcgZGlzcGxh
eSBpbml0aWFsaXphdGlvbi4NCj4gPg0KPiA+IFdBOiAyMjAyMTQ1MTc5OQ0KPiA+IEJzcGVjOiA2
OTA5NQ0KPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50
ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBOZW1lc2EgR2FyZyA8bmVtZXNhLmdhcmdAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+DQo+ID4gdjEgLT4gdjI6DQo+ID4gLVJlbW92ZSBkZXRhaWxzIGZy
b20gY29tbWVudCAoTmVtZXNhKQ0KPiA+IC1BZGQgZGV0YWlscyBpbiBjb21taXQgbWVzc2FnZSAo
VmlsbGUpDQo+ID4NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9k
ZXNldF9zZXR1cC5jIHwgNCArKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oICAgICAgICAgICAgICAgICAgICB8IDEgKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3Rlc3Rz
L2RybV9oZG1pX3N0YXRlX2hlbHBlcl90ZXN0LmMgfCAxICsNCj4gPiAgIDMgZmlsZXMgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfbW9kZXNldF9zZXR1cC5jDQo+ID4gaW5kZXggZDEwY2JmNjlh
NWY4Li43MTgwZTU0YWY1MGIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9tb2Rlc2V0X3NldHVwLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX21vZGVzZXRfc2V0dXAuYw0KPiA+IEBAIC05MTAsNiArOTEwLDEw
IEBAIGdldF9lbmNvZGVyX3Bvd2VyX2RvbWFpbnMoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiAq
ZGlzcGxheSkNCj4gPg0KPiA+ICAgc3RhdGljIHZvaWQgaW50ZWxfZWFybHlfZGlzcGxheV93YXMo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpDQo+ID4gICB7DQo+ID4gKwkvKiBXYV8yMjAy
MTQ1MTc5OSAqLw0KPiA+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID09IDM1KQ0KPiANCj4g
SSB0aGluayB3ZSBhcmUgbm93IG1vdmluZyBhbGwgZGlzcGxheSBXQXMgaW50byBpbnRlbF9kaXNw
bGF5X3dhLmMuDQo+IA0KPiBTbyBpbnN0ZWFkIG9mIHRoZSBvcGVu4oCRY29kZWQgRElTUExBWV9W
RVIoZGlzcGxheSkgPT0gMzUgY2hlY2sgaGVyZSwgdGhpcw0KPiBzaG91bGQgdXNlOiBpbnRlbF9k
aXNwbGF5X25lZWRzX3dhXzIyMDIxNDUxNzk5KCkNCg0KSW4gdGhhdCBjYXNlIGRvIEkgbW92ZSB0
aGlzIHRvIHJlZ2lzdGVyIHdyaXRlIHRvIGludGVsX2Rpc3BsYXlfd2FfYXBwbHkgc2luY2UgdGhp
cyBXQSBuZWVkcyB0byBiZSBhcHBsaWVkIGF0IGRpc3BsYXkNCkluaXQgYW5kIHRoaXMgZnVuY3Rp
b24gY2FsbHMgYWxsIHRoZSBmdW5jdGlvbnMgdGhlbg0KDQpSZWdhcmRzLA0KU3VyYWogS2FuZHBh
bA0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gQW5raXQNCj4gDQo+IA0KPiA+ICsJCWludGVsX2Rl
X3JtdyhkaXNwbGF5LCBHRU45X0NMS0dBVEVfRElTXzAsIDAsDQo+IERNR19HQVRJTkdfRElTKTsN
Cj4gPiArDQo+ID4gICAJLyoNCj4gPiAgIAkgKiBEaXNwbGF5IFdBICMxMTg1IFdhRGlzYWJsZURB
UkJGQ2xrR2F0aW5nOmdsayxpY2wsZWhsLHRnbA0KPiA+ICAgCSAqIEFsc28ga25vd24gYXMgV2Ff
MTQwMTA0ODAyNzguDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggaW5kZXggNWJmM2I0
YWIyYmFhLi5mOTI4ZGI3OGEzZmENCj4gPiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9y
ZWcuaA0KPiA+IEBAIC03NjMsNiArNzYzLDcgQEANCj4gPiAgICAqLw0KPiA+ICAgI2RlZmluZSBH
RU45X0NMS0dBVEVfRElTXzAJCV9NTUlPKDB4NDY1MzApDQo+ID4gICAjZGVmaW5lICAgREFSQkZf
R0FUSU5HX0RJUwkJUkVHX0JJVCgyNykNCj4gPiArI2RlZmluZSAgIERNR19HQVRJTkdfRElTCQlS
RUdfQklUKDIxKQ0KPiA+ICAgI2RlZmluZSAgIE1UTF9QSVBFRE1DX0dBVElOR19ESVMocGlwZSkJ
UkVHX0JJVCgxNSAtIChwaXBlKSkNCj4gPiAgICNkZWZpbmUgICBQV00yX0dBVElOR19ESVMJCVJF
R19CSVQoMTQpDQo+ID4gICAjZGVmaW5lICAgUFdNMV9HQVRJTkdfRElTCQlSRUdfQklUKDEzKQ0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2hkbWlfc3RhdGVfaGVs
cGVyX3Rlc3QuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL3Rlc3RzL2RybV9oZG1pX3N0YXRlX2hl
bHBlcl90ZXN0LmMNCj4gPiBpbmRleCBkOTU3ODZmYWYxODEuLmM0YzQwNThjOGFjNSAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVzdHMvZHJtX2hkbWlfc3RhdGVfaGVscGVyX3Rl
c3QuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZXN0cy9kcm1faGRtaV9zdGF0ZV9oZWxw
ZXJfdGVzdC5jDQo+ID4gQEAgLTI5MjMsNiArMjkyMyw3IEBAIHN0YXRpYyB2b2lkDQo+IGRybV90
ZXN0X2NoZWNrX3JlamVjdF9oZHJfaW5mb2ZyYW1lX2JwY18xMChzdHJ1Y3Qga3VuaXQgKnRlc3Qp
DQo+ID4gICAJCQkJCQkmbmV3X2Nvbm5fc3RhdGUtDQo+ID5oZHJfb3V0cHV0X21ldGFkYXRhLA0K
PiA+ICAgCQkJCQkJaGRyX2Jsb2ItPmJhc2UuaWQsDQo+ID4gICAJCQkJCQlzaXplb2Yoc3RydWN0
DQo+IGhkcl9vdXRwdXRfbWV0YWRhdGEpLCAtMSwNCj4gPiArCQkJCQkJc2l6ZW9mKHN0cnVjdA0K
PiBoZHJfb3V0cHV0X21ldGFkYXRhKSwNCj4gPiAgIAkJCQkJCSZyZXBsYWNlZCk7DQo+ID4gICAJ
S1VOSVRfQVNTRVJUX0VRKHRlc3QsIHJldCwgMCk7DQo+ID4gICAJS1VOSVRfQVNTRVJUX0VRKHRl
c3QsIHJlcGxhY2VkLCB0cnVlKTsNCg==
