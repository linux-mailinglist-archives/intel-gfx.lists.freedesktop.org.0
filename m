Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCE3A6BBE8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 14:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08EA110E7D9;
	Fri, 21 Mar 2025 13:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FpnM2UV7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8FF810E7D9;
 Fri, 21 Mar 2025 13:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742564704; x=1774100704;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=5MLcbBOny+pee+t63rIcrXEWlrnEIsthAxkY6a1csg0=;
 b=FpnM2UV7pgsrdurnyAOaT3hcsdC+xvHnMIYEBwBGxJtjeAPH7GttvAvK
 SDPyAt02HyRFot4ZMXB4iyHDIEObew0iRuj43xRhEqN+jJgLLBsEJ4/wL
 GekLQAJVAdn0jcCca3ky7yQMFl/Q0QvO+Mjj/8bApq2gEyxZiemm3a1Zv
 FW0qkOX2V5uMtJAZ4PVx7yMehf7LDZOHmAhksj7S/0Fu5KDgeYmUJw2Ib
 c1Pu9bp9p/1c89BHPucReBesxsQ2VZ0roJ7t9r2hN8cTyHUahHLpu1Wo2
 vBMOKSAZOjtO2RVxbfwiUzo4jGF6iP2/nfZgbISrF6V9tZaNA5EQNVfez Q==;
X-CSE-ConnectionGUID: cPLOuU9/SpaN0MzcmLfkmg==
X-CSE-MsgGUID: VD26LQB3R6+EWbBuRmvDEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43949953"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43949953"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 06:45:04 -0700
X-CSE-ConnectionGUID: eof3XAfAS3q/oy84HPCCMA==
X-CSE-MsgGUID: B3qUlaaaRWeS6cgADi2fPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="124348269"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 06:45:03 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 21 Mar 2025 06:45:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 21 Mar 2025 06:45:02 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 06:45:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jOYu0LIlgJ0SHDqWxcQpWkcXn8YclKsLGgakSPwauy3k0jYPdaT9kLEx8HuzkzPTNxSy21G+arhFAdnvAtQFLrsJwQJVV/35DZJZVeZrhWYrzeCV1fkElunjgs3oUsbJwh9U+4MnIF2W0nCfKLuyGZxO7xIOTx5A817g55ii+GWvwP0vrmrmIhqP/tI4aOsUNjP8hLvF2OjrQUGGcbdRNZCEAmd4h7L0fNagUOErZOnMSXU07gWJtsIb5EXh33U+tveOinKGV8awwe7sOZeKcPOGoMbFWMlIHDf2zUOG49n3odK5rqPwkI4tkNSzupLmUe9PcXPw3ZVp9H026CGJUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5MLcbBOny+pee+t63rIcrXEWlrnEIsthAxkY6a1csg0=;
 b=igzJ/Ompzeb98XXZh178SkVMTDvVJYM2oCIiLXM/3AX0ysjHesOst+gzM4XCD8pimAwv/fmFUJDURPE8VprahPjyBvAs+UCuPANdN9oC8NF/vcnxcZI2wsncl0NrdBspjbzQ4w6t//lbRguxxFU/QFEZa3aQoLCOKfDkD4X/GosIdt16xQQgsccL5IPKKqzAMULwCP9QN335V9PXz+KQPA86xoGPc9kteV45Pj9Vqy+lx1jxhbonnoFsygxiDG9kCYsp110EFLXtJ0OiTSwh/qDLaKAmFdUJ1UpU6lCwYFqkWIlP1WC66y9FYtGk7wAccL9R/dWYnfBBHHm+8CScag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB7092.namprd11.prod.outlook.com (2603:10b6:806:29b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.36; Fri, 21 Mar
 2025 13:44:58 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8534.034; Fri, 21 Mar 2025
 13:44:58 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Manna, 
 Animesh" <animesh.manna@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Topic: [PATCH] drm/i915/psr: Add PSR pause/resume reference count
Thread-Index: AQHblK1kXAWMq/0wgUijyeOyOlRzwrN9YkgAgABDOoA=
Date: Fri, 21 Mar 2025 13:44:58 +0000
Message-ID: <cff2088e6f38bd23a694beee993b070ff0ebee9d.camel@intel.com>
References: <20250314065015.879143-1-jouni.hogander@intel.com>
 <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
In-Reply-To: <BL1PR11MB5979ECA217C60944121BF197F9DB2@BL1PR11MB5979.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB7092:EE_
x-ms-office365-filtering-correlation-id: 931fc4b1-536f-438b-e08f-08dd687e924c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?aUdDUjg3SlA2TE42ck9ENVB0ZEgzQWhtY1g1SldoeFdmTnVFczVmSitmc0V3?=
 =?utf-8?B?MVR0QlFLT3RHSkpvMmxPNE8yYVVrNWlQRWFWSE9zNHRWSGQ4WFFBOGlxVTdT?=
 =?utf-8?B?dk9vc090V2FtekxYaVhCOXdTck03VWtOZEhkc2FMNFZ3N1pxQ0h2dWxpWkNi?=
 =?utf-8?B?amliTFlSRUdnaDZOLzV3Y3pETW1VWTN1aStqaEw3VXZZSCtXNy9mM3dXaE91?=
 =?utf-8?B?Q3cxUHNteWxBU2tGaysvTmIxTW0zdml1aE5EL3p3T0hORHExRTRSVUtuUTFr?=
 =?utf-8?B?NWFEN2RvWkhaV21JTXZEeG9iaVlJeUNscTI4SHRUOS9saGFvNDFPZXhCcGhT?=
 =?utf-8?B?RlM0ZDRaaVljRTRtSlRzdXBVazJxYjFwV1ZwdTlnL2toZmpCV090MENQME9s?=
 =?utf-8?B?aEJhTE5IOHVWcUdwamdxVk5sM2lMYlRHSFhkRi8zb3d4L01DTTVFVDgxUXpK?=
 =?utf-8?B?RWZ5TDBTd1AyeHFpc3pzb0J6cFVIV0lURmdjbDdXdUlTQWR5bTdlVVRReE8z?=
 =?utf-8?B?VWdLakNkWnREc29SS2xUUnQ3aElXOThTT2FnU0Q0b3Z3Z0NHZ2NrRWREZHpX?=
 =?utf-8?B?U2w2NXVNbEVqZ0NUZUVQN0ZiZW9pYnNLUlRsNWxIaHdLTmVHZy9JTzlIQmJn?=
 =?utf-8?B?Zy81dmVSLy9SR01rM3VaM3pGalF6cDhlTW83bm1uTDl0VXpuUHZOc2NUQWlv?=
 =?utf-8?B?SWwwNjNjZWk0U0hwVGxNNXJRbTV6OVlRYlZQQnFXQTVmZ1BNRWN5VzhLZG1p?=
 =?utf-8?B?UmVmbWFYbUs5WFpzV2IvYjA1ZXpWNXVVVEM4WUhTUXpDTFAxbG5LcHF0QVF4?=
 =?utf-8?B?UlozeENuaHYrTHkwbWZ5aHBKT0FjVVhrc294Q0FxczBIU29LWkduQm1nSTQy?=
 =?utf-8?B?OXRJLzVFWU5ET0d4a25QZ0s0bEhibytyUzlCcmlYNTJQVnB4TG5tb2Y5SG9V?=
 =?utf-8?B?eVEzNkd5N3dabUtib3I3OHpFODJqc0JSVDFKODIwZjlsK0xJYzNGSnhySUVr?=
 =?utf-8?B?SVVGWGdaK0s1REgyZzVqcHFqbWZid3JPR2NCQUR3aGRhUjl0ak4vVEhkYXFF?=
 =?utf-8?B?YnE1dnhBVjMwOVJTejVtRDkzdVhaL1h0eDIvNjNUdnIrSVRFNzcyT2czY1or?=
 =?utf-8?B?a1JydEk5ZEg1SkVPbEFKMEJOTFZXejFOY1J0WUEvTjUyUW1xRlVQSld1a0c0?=
 =?utf-8?B?RnVZOHFZWlZEZUc1S2ZBeU5DNVg0Q2ZwU0kxUTgycWw5OVBnNFRQeE9ncUlJ?=
 =?utf-8?B?dThtRVBLdlEwdk96Q0JpV0ZaY09Rd3E2cXdaUEFmY1FyOENheVduQ3FaZVBT?=
 =?utf-8?B?VUNKYS9YQ3Vlc3Bhc3lLbjhtNER0SmNCdHlPejZ4cVUwS2lHYy9XNndBa1JD?=
 =?utf-8?B?eXhrRFE2dUgvNzhaWUtVdENKQW9hcHVvVWdNTm1sSCtnNVJwTERGdnFyRzJH?=
 =?utf-8?B?dDhMNk02R0pmdkNNNTIwZFNSVHB6eFdGVzYzNm9NVGdWSUErN2dzZENBUnMr?=
 =?utf-8?B?Z25pTTVHQVNwL25sbnV4SENJQzJhbWZ3ejI5cHJ6blNaTXI5RnNQV2s5S0V0?=
 =?utf-8?B?SlFaZ2FRc1pEMXJ0M0E3NmZTRVpYQ0ErRkMzS2RJVUxNa1J2QkNtMnpyUm9a?=
 =?utf-8?B?VGhtYU90V1d2S0ZkeWhxK1lhZjBXZ3dJS2hHaXVMaUxnVW04OFF3NDFXRkM1?=
 =?utf-8?B?dTFWbG1Tb2dhOUhZK0RMTFFaejk5Uk9jNEFoVFVYZ0Y0WEZGNlVFNXY1dHkr?=
 =?utf-8?B?T2wyZXh0d0JRSjdKZ0FnaEVkR0ZtM0JCR0xEejRRaUhKTHRXVlU2U2xLbnhY?=
 =?utf-8?B?amdqYWlyemJ2cFp5bGg3djYwQXhRNUJyWnNtN0tkTFNHZHBrc3FId3gxUTdD?=
 =?utf-8?B?aUFITHV0Z3FBVDcwMHJsQjB1ekg1TFZSc1Bia0UwTVRxK20rNE1CeWtrSkZE?=
 =?utf-8?Q?VaicDbk/usDkFuUBCR6aR9m1uC8oAl1r?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVY2SEgzOUoxT01ySU9kamw5NVJqK3E4Z1FZbHVSWUozdmpuSUNXdDRybVI4?=
 =?utf-8?B?UjYvQWNhSVlLZm1ZZTQ1QVFMQ05rYTZFT01mNVd3SFYxNFZ3UllETk55NzdQ?=
 =?utf-8?B?R2djZ0tvN3dyY0xKa3M5MzhtakxBWnFkZFhqbGRFcDZwQThjbjVOQlo1SlBR?=
 =?utf-8?B?NnNUZm8vTThRMFdvYmdNVERzRjkvT3NzUnc3NDlVRXhhMTIzRmtabzdDRFJa?=
 =?utf-8?B?K3J3Rk5TRVJTSUh4aytFUFNzM2U5MjZWdU02bzJIaHg1Wi9iWUl0MW5YYWhl?=
 =?utf-8?B?Zk8xRnJ2UlJZbUZKOU9BK09kNjNWYXNBc0VqdE43WWRiY3hQVmxMaFlVdXIz?=
 =?utf-8?B?dU5XQ2tuM3ZSSXcyeEFyOGdZMnlOZG1wM1I2WlB2ZWpWaHlETGJ4UGk1cG1U?=
 =?utf-8?B?VUU2bEQ2V2FmTVZBTjdQWmxhMGRMRUNzcmI3cnQzL2ZrL2V3YlU2enFyZDli?=
 =?utf-8?B?VDlWeFlUT0FhZVpsRllCODBIUVg1QnRQRzFRbVYxa3hDZ2RKMjM5UGhjTVY5?=
 =?utf-8?B?ZlBkdHJxT3RKdGJLT3BkZlQxS25SdWEvSHk5bE8wdjBQc3R3M3ZpVnNYcFhL?=
 =?utf-8?B?TlFCeDR1aEtmR0NTYTMvTHRzYzd3ZFVZQzhWREZIWDdoaEFpY01paEJ0WUo4?=
 =?utf-8?B?Q292Z1BnUTY5YmJUT0JpMWlXaXdCNUw2SzVCYmIwTnkzbGdvRlgrQUNVWkdo?=
 =?utf-8?B?S0VsdDdqM1FPUWdGTnl2c1RMTjE2TjlhODVVSlNsbmgzdGlkMHA4VzRSVlRa?=
 =?utf-8?B?b01taFNjdEV1ODQ1SGFaMkc0WDJXTG1uaVJoeTlhWTJvYnJyMGZOeExsdWh6?=
 =?utf-8?B?dmUxOFMwd1Y5VmFxN2p2Z05la0Qwei9UQVJnYVN5aGxvVFB5ZEg2MW9mZjEy?=
 =?utf-8?B?eEdrQkxwWjhTdmtBMHRsNXkyUlo4anJhZVN4RUw1ZDZ4OGRxVngyY2lzRHA5?=
 =?utf-8?B?V3phSVNnWjNCU1ZoOUVVSzFJajdWSHJVU1h4Rks0VXBVRDQ2ajczWnNBa240?=
 =?utf-8?B?V3NqbzFLV1Z6ZlhKTkp5Q1E0bmRMekp0Nndza2dqSW1ySGE3QXlGTURsVTZW?=
 =?utf-8?B?Ym1RQVZ2bG1WYlZiTDYxV3FLTjh2c3Z4QURkNm9RaVJpZS9LUlkweS9oYlBh?=
 =?utf-8?B?NytQUllUNjV3Zyt2MTVBb3pxaWduR21ieVErUDAvREpsV2VXM0tqU1BkMlAz?=
 =?utf-8?B?K3Y0TkJnSG9GYU9nQXhNUWQ1dzczdlZnNzBrdDdGSVpsZGI4bU5Va3hhV0ZM?=
 =?utf-8?B?SG9nQjZBcGZYaVRTemxveXZkbXMzc0NEd1RzRFR1cVZRMmRjU1ZmdVo4bW9D?=
 =?utf-8?B?K2FaR3ZYODVqQUdqUmYvdXlqN1ljRFgxQlJuY29ZT1kvV3UrMGRmakFKRi8x?=
 =?utf-8?B?d0N5WHUvYkpvWVhSOFRuL3Rzb0laSXpiaVhuTTB3QkVJUzFWdzhmenNTb0Uz?=
 =?utf-8?B?MVlPWkJTT1dnZHZlMWREK1loNC9yb0RxVU83enZuaitmUHY0Q3JIWHZLcHB5?=
 =?utf-8?B?d21DMW0yRjJYc1hRQzV0emNibmU3NWNKb0tvVyt3OVhjSGU0WXpIZXFzWFhJ?=
 =?utf-8?B?UEJ4aUFnYkxEUzJzRThEQmIzYVR2QWExOUgrZHRKd1pMZGI2M0lyN2VWbllE?=
 =?utf-8?B?UXdBWW1yLzg2eTJRd1pIcW10OGxEWXpZamtrT1piaGFFL01PU01hd3RXOUxH?=
 =?utf-8?B?VlJUUWt4MnViTXRaZ2NOQnBGNm50UWd6b1lCZ2p3b3ByckNqZkRHTWludWgw?=
 =?utf-8?B?QVRaZmNTUEhIeGVXQVFtN1d1aHhORUE4dm9NZFpwR0FxWC9ucXpMdzk0VFkv?=
 =?utf-8?B?bUJyWjJScFoxS283TjkyV2VJWGZXS3M1M3hlNHNvS25kMzBtbVJNTWVzamhr?=
 =?utf-8?B?V04yVzR1aVJBUU42ZkNGMUxjWHZwYnM0cUlqeTZUREc3UG5DTHk2M1lGWXJm?=
 =?utf-8?B?eFFGa0FjRHQxY1hvdmp6eGVBdlRTQkJvYUZaTGFDUnZhdXhyVVhCVnhKYUtV?=
 =?utf-8?B?Z2VsV216NlY3WkdnYk0wblJpMWlVSGtrMHljTmZTZEIveGEvdkJQdi9KeGho?=
 =?utf-8?B?cktUaXBkTjhBdkkwVkFTVDZEYVJFNDFyOVgzcEF1R3pvbU02YkpTQ3MvUFNH?=
 =?utf-8?B?U3hMaW5hMGJsY3d5NGVjamwxbkJQeTVXT1Z1dG5XNUJMUldIMll4MTFSM0JC?=
 =?utf-8?B?TnV4SVJIbTk5WlNOTFFGWXNzQXhTcDlWcWNzcjB2UzRiTnZhUGl4TEN1R1pr?=
 =?utf-8?B?UGhqL0kydmdpcEJmR3Bld2U5NkxBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E8AF7815757B4A4A96ED42F5C05E9020@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 931fc4b1-536f-438b-e08f-08dd687e924c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Mar 2025 13:44:58.6083 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ungJDp2cjZAdA5QYa9O7O+J8W22bM0SoaBD9zL7FmKFGQBRfVe2fABXatrtGjSYcsfwxsPgm31lr69SEWf+v7bZ2O240+ukjqhnQvXJpLJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7092
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

T24gRnJpLCAyMDI1LTAzLTIxIGF0IDA5OjQ0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0K
PiA+IE9mIEpvdW5pDQo+ID4gSMO2Z2FuZGVyDQo+ID4gU2VudDogRnJpZGF5LCBNYXJjaCAxNCwg
MjAyNSAxMjoyMCBQTQ0KPiA+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBp
bnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENIXSBkcm0vaTkxNS9w
c3I6IEFkZCBQU1IgcGF1c2UvcmVzdW1lIHJlZmVyZW5jZSBjb3VudA0KPiA+IA0KPiA+IFdlIGhh
dmUgbm93IHNlZW4gdGhpczoNCj4gPiANCj4gPiA8ND4gWzIxMjAuNDM0MTUzXSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybV0gZHJtX1dBUk5fT04ocHNyLT5wYXVzZWQpDQo+ID4gPDQ+IFsyMTIwLjQz
NDE5Nl0gV0FSTklORzogQ1BVOiAzIFBJRDogNDQzMCBhdA0KPiA+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM6MjIyNw0KPiA+IGludGVsX3Bzcl9wYXVzZSsweDE2ZS8w
eDE4MCBbaTkxNV0NCj4gPiANCj4gPiBDb21tZW50IGZvciBkcm1fV0FSTl9PTihkaXNwbGF5LT5k
cm0sIHBzci0+cGF1c2VkKSBpbg0KPiA+IGludGVsX3Bzcl9wYXVzZSBzYXlzOg0KPiA+IA0KPiA+
ICJJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5lZWQgdG8gYWRkIHJlZmNvdW50IHRvIHBh
dXNlL3Jlc3VtZSINCj4gPiANCj4gPiBUaGlzIHBhdGNoIGlzIGltcGxlbWVudGluZyBQU1IgcGF1
c2UvcmVzdW1lIHJlZmNvdW50Lg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICstDQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDI2ICsr
KysrKysrKy0tLS0tLQ0KPiA+IC0tLS0NCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMTMgaW5zZXJ0
aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IDk5
YTZmZDI5MDBiOWMuLjY1YzgwOGJiYTFjNmMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IEBAIC0xNjIw
LDcgKzE2MjAsNyBAQCBzdHJ1Y3QgaW50ZWxfcHNyIHsNCj4gPiDCoAlib29sIHNpbmtfc3VwcG9y
dDsNCj4gPiDCoAlib29sIHNvdXJjZV9zdXBwb3J0Ow0KPiA+IMKgCWJvb2wgZW5hYmxlZDsNCj4g
PiAtCWJvb2wgcGF1c2VkOw0KPiA+ICsJaW50IHBhdXNlX2NvdW50ZXI7DQo+ID4gwqAJZW51bSBw
aXBlIHBpcGU7DQo+ID4gwqAJZW51bSB0cmFuc2NvZGVyIHRyYW5zY29kZXI7DQo+ID4gwqAJYm9v
bCBhY3RpdmU7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiBpbmRleCA0ZTkzOGJhZDgwOGNjLi40ZDRlY2Y3NTU1YjY2IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTIwMjQsNyAr
MjAyNCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfbG9ja2VkKHN0cnVjdA0KPiA+
IGludGVsX2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IA0KPiA+IMKgCWludGVsX3Bzcl9lbmFibGVf
c291cmNlKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiDCoAlpbnRlbF9kcC0+cHNyLmVuYWJs
ZWQgPSB0cnVlOw0KPiA+IC0JaW50ZWxfZHAtPnBzci5wYXVzZWQgPSBmYWxzZTsNCj4gPiArCWlu
dGVsX2RwLT5wc3IucGF1c2VfY291bnRlciA9IDA7DQo+ID4gDQo+ID4gwqAJLyoNCj4gPiDCoAkg
KiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhlcmUgb24gUFNSIGVuYWJsZS4gV2UgY2FuDQo+
ID4gYXNzdW1lIGxpbmsNCj4gPiBAQCAtMjIxMCw3ICsyMjEwLDYgQEAgdm9pZCBpbnRlbF9wc3Jf
ZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqAgKi8NCj4gPiDC
oHZvaWQgaW50ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApwqAgew0KPiA+
IC0Jc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+IHRvX2ludGVsX2Rpc3BsYXko
aW50ZWxfZHApOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNy
Ow0KPiA+IA0KPiA+IMKgCWlmICghQ0FOX1BTUihpbnRlbF9kcCkgJiYgIUNBTl9QQU5FTF9SRVBM
QVkoaW50ZWxfZHApKSBAQA0KPiA+IC0NCj4gPiAyMjIzLDEyICsyMjIyLDEwIEBAIHZvaWQgaW50
ZWxfcHNyX3BhdXNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ID4gwqAJCXJldHVybjsN
Cj4gPiDCoAl9DQo+ID4gDQo+ID4gLQkvKiBJZiB3ZSBldmVyIGhpdCB0aGlzLCB3ZSB3aWxsIG5l
ZWQgdG8gYWRkIHJlZmNvdW50IHRvDQo+ID4gcGF1c2UvcmVzdW1lDQo+ID4gKi8NCj4gPiAtCWRy
bV9XQVJOX09OKGRpc3BsYXktPmRybSwgcHNyLT5wYXVzZWQpOw0KPiA+IC0NCj4gPiAtCWludGVs
X3Bzcl9leGl0KGludGVsX2RwKTsNCj4gPiAtCWludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2VkKGlu
dGVsX2RwKTsNCj4gPiAtCXBzci0+cGF1c2VkID0gdHJ1ZTsNCj4gPiArCWlmIChpbnRlbF9kcC0+
cHNyLnBhdXNlX2NvdW50ZXIrKyA9PSAwKSB7DQo+ID4gKwkJaW50ZWxfcHNyX2V4aXQoaW50ZWxf
ZHApOw0KPiA+ICsJCWludGVsX3Bzcl93YWl0X2V4aXRfbG9ja2VkKGludGVsX2RwKTsNCj4gPiAr
CX0NCj4gPiANCj4gPiDCoAltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gDQo+ID4gQEAg
LTIyNTEsMTMgKzIyNDgsMTQgQEAgdm9pZCBpbnRlbF9wc3JfcmVzdW1lKHN0cnVjdCBpbnRlbF9k
cA0KPiA+ICppbnRlbF9kcCkNCj4gPiANCj4gPiDCoAltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0K
PiA+IA0KPiA+IC0JaWYgKCFwc3ItPnBhdXNlZCkNCj4gPiAtCQlnb3RvIHVubG9jazsNCj4gPiAr
CWlmICghcHNyLT5lbmFibGVkKSB7DQo+IA0KPiBBbnkgcmVhc29uIG5vdCB0byBjaGVjayBpbnRl
bF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgaGVyZSwgbWF5YmUgd2UNCj4gY2FuIGNoZWNrIGZvciAh
cHNyLT5lbmFibGVkICYmIHBzci0+cGF1c2VfY291bnRlciA+IDAuDQo+IE90aGVyIGNoYW5nZXMg
YXJlIExHVE0uDQoNCldoZXJlIHlvdSB3b3VsZCBkZWNyZWFzZSBwYXVzZV9jb3VudGVyPyBBcmUg
eW91IGNvbmNlcm5lZCBvbiB1bmJhbGFuY2VkDQpwYXVzZS9yZXN1bWUgY2FsbHM/DQoNCkJSLA0K
DQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiANCj4gPiAr
CQltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gKwkJcmV0dXJuOw0KPiA+ICsJfQ0KPiA+
IA0KPiA+IC0JcHNyLT5wYXVzZWQgPSBmYWxzZTsNCj4gPiAtCWludGVsX3Bzcl9hY3RpdmF0ZShp
bnRlbF9kcCk7DQo+ID4gKwlpZiAoLS1pbnRlbF9kcC0+cHNyLnBhdXNlX2NvdW50ZXIgPT0gMCkN
Cj4gPiArCQlpbnRlbF9wc3JfYWN0aXZhdGUoaW50ZWxfZHApOw0KPiA+IA0KPiA+IC11bmxvY2s6
DQo+ID4gwqAJbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+IMKgfQ0KPiA+IA0KPiA+IEBA
IC0zMzIyLDcgKzMzMjAsNyBAQCB2b2lkIGludGVsX3Bzcl9mbHVzaChzdHJ1Y3QgaW50ZWxfZGlz
cGxheQ0KPiA+ICpkaXNwbGF5LA0KPiA+IMKgCQkgKiB3ZSBoYXZlIHRvIGVuc3VyZSB0aGF0IHRo
ZSBQU1IgaXMgbm90IGFjdGl2YXRlZA0KPiA+IHVudGlsDQo+ID4gwqAJCSAqIGludGVsX3Bzcl9y
ZXN1bWUoKSBpcyBjYWxsZWQuDQo+ID4gwqAJCSAqLw0KPiA+IC0JCWlmIChpbnRlbF9kcC0+cHNy
LnBhdXNlZCkNCj4gPiArCQlpZiAoaW50ZWxfZHAtPnBzci5wYXVzZV9jb3VudGVyKQ0KPiA+IMKg
CQkJZ290byB1bmxvY2s7DQo+ID4gDQo+ID4gwqAJCWlmIChvcmlnaW4gPT0gT1JJR0lOX0ZMSVAg
fHwNCj4gPiAtLQ0KPiA+IDIuNDMuMA0KPiANCg0K
