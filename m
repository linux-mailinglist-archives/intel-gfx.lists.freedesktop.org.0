Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKF4FPp8smkcNAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:44:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5EE26F1A4
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:44:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCFD10E9AE;
	Thu, 12 Mar 2026 08:44:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L9pIK9UM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA2510E351;
 Thu, 12 Mar 2026 08:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773305078; x=1804841078;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=o5FI2lD7zdYt2sVyl6WIIPlUkRGjDA/6vE9wz0I5CIA=;
 b=L9pIK9UMqK8uRJoUvHVWtV8G01vZGp6O/vMN0ZolrhsJs8Yt/cXaQh2r
 gDBmz3RYfSODX102ZdXcp6DwWiaWvOVql1MBYGqtXsjJXjafufvElZIKz
 qFrtnFTc8yRsLKWaE6L6zj35Llr/kR47UCReRTC8PcIxcBymho1BAiQmi
 o8chM2dk/7uqyMsdUPJO6PHC0jNvh/u4FS+c9lS5ESKFpEhdPes6/Q0WZ
 FoCwX6biuPj0A4ierYTijMvwi6SvCP4Yw7xpc9nWuol1AEKO9vPr1s3Ln
 TJLMaKTh84qvBScuAn8wul03r1FqhhARnqlZIZSOsko10VuXosLIrM04H Q==;
X-CSE-ConnectionGUID: YkPn3E18QTW1y47y3l3Skw==
X-CSE-MsgGUID: MNZby6eyQqSy93NS9PNCNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74302749"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74302749"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:44:38 -0700
X-CSE-ConnectionGUID: emHD0jRMROeJjntYnRp1DA==
X-CSE-MsgGUID: oHUQmuawTy2nZeunLvZ77w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="220808068"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:44:38 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:44:37 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:44:37 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.24) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:44:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=t7InHfxUXPkq/OJHdGbKVJEfTU3Jr4qveo2GgHGsnJIY30iOMFwS68FLTueKaqqZKn68g7lvgx9kk2nidefog12Iopn2R2C+4hfnKufJjO+MyCXAShAa26cErkxVAfAi8Oip/A4G1LPg2hEuncmIQRyJ+xXIDQicYzETcBVvd67jUCCRQzZNQ0beGal2FtS1gWsN4Mg0Co8LcTIV5K2J78232O0SzM2P3QMruiBHTPohaOwZPS0yjelUmvn0QKgfympXrAQHu86DlmarHykUR9CLbT1oxiK3UYTK26yU1gUPFiFejE/QQ/QHf6o5kfcZ/D36h6znsbQgJ3gUPUXXsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o5FI2lD7zdYt2sVyl6WIIPlUkRGjDA/6vE9wz0I5CIA=;
 b=v2qpuzlAUkgp6JVqVRVyCTmIp9jV1lCCeG0t3QK5K98ZR9yk+lKPR3cXbRRqlQj+63ihbSiqsEaUF+1oeonciYoqVWerpKG4Hga5DRUa/AIN2otwhkXp7I0vFLrFoluK097jrcNgrRHbMv8IUJBWHdrdiaC5g86zlNkCNjgJsjYHvo50PmEE5wWecMZehr1LXiuDQ0zXanf1VGXkjFPguqySrVgx13pOyRcQyUCswtqfheoj7EN+v4qPcKIHNNuqWEgLlkNCdHZ7Ab/gjxWfhhjBxAx5Kd7OXA1KyoBy88GJUd2IVoDYh3Qq8LFBDEUEElST/7gMWWWgO9Aa5SMmdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 PH3PPF8B755DBFD.namprd11.prod.outlook.com (2603:10b6:518:1::d36) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Thu, 12 Mar
 2026 08:44:33 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 08:44:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v7 2/3] drm/i915/display: Panel Replay BW optimization for
 DP2.0 tunneling
Thread-Topic: [PATCH v7 2/3] drm/i915/display: Panel Replay BW optimization
 for DP2.0 tunneling
Thread-Index: AQHcseFjAk7O0O9PZ0alWSUsw3nevLWqc6qAgAAhPjA=
Date: Thu, 12 Mar 2026 08:44:32 +0000
Message-ID: <DS0PR11MB804985A80B873CE3A9E33C58F944A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-3-animesh.manna@intel.com>
 <a6defae2a9121438e66c47a0a277172f2342bc11.camel@intel.com>
In-Reply-To: <a6defae2a9121438e66c47a0a277172f2342bc11.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|PH3PPF8B755DBFD:EE_
x-ms-office365-filtering-correlation-id: ffdd6366-3b0a-45b5-7665-08de80139521
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021|56012099003|22082099003|18002099003;
x-microsoft-antispam-message-info: +KzDx83I6cc0LLtZLmFB/T2xHl5xQqvAVJGsNSHmp/vUCsD76xVemELhizchK276G+RtFC2t7bghXn15KVaXyazWQuvJCpfYWZl8YcQENlorVcw5sMSq/v/suTm0g0kgsKKDO/9pRH1h3IGV52yLMtkqMLTA6+0bHxOe4UPzatnW03CwNiXRCEe/KOepclvpzKBle+X272abD09YONZfvIB+xAdSmNAmzTfy4ac7paYR/w0vl/LLqMWMbR4+FjXiW0Jn5Mikm9GZ18Ruc0jpcMfha7ARyhcS5a7toKtReDn+Mni6ciUZWklkq+S15CfUcg5ifA4UTyCNAxOTGtE8iaOQXtNijezgA73yGl5M++HqAvDwXJHxZzYZaDzV9I6CzJvFGpHeomBsCmjdp7LtAujXRSou4zBUAm/4NUniSJxjEE7QNwdrBFd+Y+Q5OXpjJDgLyqjkexGNtjSRz2boIdzXeV+8irtpZi901jpIFouTiNVBkXFvqr7Av42m7p17v0uPjUveHu/6mdpwu+4+OeToA4nzSL6iSNkLe2vgoRp2b9TS6kIOMxRKhD0TWQqmVUc1Zqg/SDW6BtbcWF6RcPo8essNQ8+Eb/1QMa9igy53mQ7W89lb0k5GGTz/EozwmpqUoaU8LCs6aep3Xd2/lc6yx8btlkPwLfTtA7X0Lwl3XwE0v83Ea4heTUU77LDul6sZtwYDsvBU+9bg9ajTK61EnfWN2phDzP00pQLTtNpTFSV3Jxyqa0+w666bxd3JYkHtE0/3SWhyPfbLw4ZgshNOd6VWyAWz4iipXPETkW8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnJaT2phV0dmTFU4OXhLaENDL09MTzB5QkNlYzkyRUt1RXJZSzJJb1cydkhw?=
 =?utf-8?B?Q0VFS1JiVitNRWYrQkdoNjh3aVlGQ0pVdlFEcmoybExvcE41MzYxa1RRcitZ?=
 =?utf-8?B?VCt6Z3Q5TTZUN3pUSHUwdXFTNjZvSlZ3S3RkM2xkT09tbmhSdUdLdnE4bzIx?=
 =?utf-8?B?S05YUkdzZkUvS0VjMzMxUWNEWHc1L0VxRGRrTjZ4cmFIeWZKTFpDTEpRUjR6?=
 =?utf-8?B?Q0RmNTFPRjRJTFlaeEMrN3I1c2FNcVZuOExqbHUxdHpRaEFvcERhN2tPbmQx?=
 =?utf-8?B?VUFXR1JCWlJOenp3aVl5eXRiSkI2a1piaFFKWkp2b1dvN24yd2Q1S2lnZzJr?=
 =?utf-8?B?NUZSelIwSzBMRXBUaEM4TlE1SmZ5Nzd2Qnp2a3hUc1J5SEoxYmJFQUp5RWlY?=
 =?utf-8?B?RWpyZS9Vb3JFUllBemJtSEdKUlVtUWJCTzFJWkV3eFFtK0UyS0ZjOUtOZ1Ix?=
 =?utf-8?B?dHhUU3JhMms4cFNzSFNuNEQ0N2FTME5NT2tlT3U3ZW9JMzJzc0pRc2RRMS9X?=
 =?utf-8?B?VmxCRDdMMGQrdW5DYXVVVE9Kb05ZRDlERkV6UVBtakFWM0RCMU0vNDg3RWRa?=
 =?utf-8?B?eUh2VDkreTdENU8xU2R2Q3d5TVdYVGo0TVBNUFNrQW9UWE5DRm15WjJrVFdi?=
 =?utf-8?B?dlpxRy9rQUE1RjhqZUVmazdCN3dTQjlyRHpqekJuK285blkwSmluZlVMVzVz?=
 =?utf-8?B?RWpXOTYwRmJmVWo5VGZ1amJUVi9OT1UwdDRaSzR5N0p3a1RoZ2VMQVk5R254?=
 =?utf-8?B?QUhCN0tFUkt4V2xNU204SEM4V2tDU0hwK2tlL0xPVW5Ha1JlbnFicVNrNlBw?=
 =?utf-8?B?WnFOWDFGaTQxdE5hTCtHZjZLdHorM2I1NUc4VGFLQkY2R2J5RFMrZDJiVlFS?=
 =?utf-8?B?cVdRNE9tdnZGVTBVZjNUSUhzaTVQaWxOQWRkV0hlN3krM2dtTTV5dGJTell6?=
 =?utf-8?B?QWIvdGIrNFpBcERNSnBpNnpFc0ZvN2xtMnhMbjh6QkRlakM1UEZJck5rTFox?=
 =?utf-8?B?Z0kzTTdIVW5keDNIUkNaMjZYS1pnb3A5Tlgwbnc4Ukl2eTNVM1ZqQ0VtbXZK?=
 =?utf-8?B?N1krMkZjMzYycXlIalVJUEs2QjRLTTVUZXZBRGtUMFZaK0lML1VzSXBiMXY5?=
 =?utf-8?B?YXZQaTQrUHBQdTFFRmJ0eVBnOXZSZ0c5MVZ2d05hdC9XcnQvNUtlQlpkVUE2?=
 =?utf-8?B?a1NueEFXZ1RzK1dYbFF0L0U4WHp3Zkx0VjFYZ3gxdHUzZ090UVlZMzl1RjVQ?=
 =?utf-8?B?K0thakJDTmVnU1pBMy92YUwxeTUzSm9hbkFNWjl3Nkc5Wk85aFB4VDFEWDU3?=
 =?utf-8?B?Sk1XYk5jRUxZTTZMS3RWaU5pSU1qcHB5Qit2TVA4dmRQZ0lXRm5MWGI4Sm00?=
 =?utf-8?B?N1lKWGJ1bjk2SUlmVU1LWXF5ZDZ3SXVKWTgrTnV1dVAwTmY2MXdRd1kwRGtr?=
 =?utf-8?B?VmJLUTk3ajJmSmdsbTNBYVBYTVY4SS9mVG5xS0svenVJNzlyeVYyYmtxRWlo?=
 =?utf-8?B?NUhXRkNiLzVXTnhnTjI3OThidDZkY2J0WlhsVDEyYm5tSXpQSzk2QWpIeDhp?=
 =?utf-8?B?ZDBsR0NMTnlTU0pMUUF0bU1CUS9EZXlOVG1JSXpmRk1CNjFDelJtMkF5cnph?=
 =?utf-8?B?WWtkSWZ2MXo0bGFKRFI2ZnF6ZkEzaytDMGw5YUxtd003enJWTGdGMHJkTmdn?=
 =?utf-8?B?Vjl3OW1UemY5VXlaSExWTWlPeUlnQlBVZzRKTlJEKzZPek82UXlFUUxlWFdS?=
 =?utf-8?B?T2V0eGkrMFh5SzJFSUxidjhGREd2YmJ1YWJETFJvRmIzNWk2cWJ2YjRQb29k?=
 =?utf-8?B?eUNaMU9saTFwbjJpUUNMVktwRWVOelpKU1JibVlYZVR3NjVaUDNBYUhqampE?=
 =?utf-8?B?SVo1ZFEwZUdxNWdyYm5VUlFBbU54Wkt0WDZucitTd01BQXU5SU5lUldYc05W?=
 =?utf-8?B?QXkzcks0TWorelFRclRtbzFtZ1pCS3hGV3dReFVZUkZZTDhYcEw3L09LdnFC?=
 =?utf-8?B?dk1xWmFGMURraDJQenN0NmpuTXdLbEtOQi9oTHE4TFV4OXhDZ0pJOVZaU0RY?=
 =?utf-8?B?NUNyc1ZGVkJaT0Zha09DaHZlREdRUk4yakJRL2hkRHc0SVVBSHVyeUlFRkpF?=
 =?utf-8?B?MXN0VWcwZE94K1hzZ2Nhc1VhSlVKNmJoa0Z0N2lMbFM0ek8zazlGSTd2Ukow?=
 =?utf-8?B?SUJha1NvMFpKUTFEQ214QXZoSjZKdFlERHk5TzBFZ29SWHJlazhRM0h6K3pW?=
 =?utf-8?B?WEtVN0FjYUk0WlBMZFlkUHNFcVpONVU1a3dmbjlPYlBBRXVlNExqZzlYMnZD?=
 =?utf-8?B?ZHM5dHFhYjlhUUc0bVBwa2lycDBtQk1tbFNPUTJtalYzbVB3NHJGUT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: nZBACV8TjqM3Wice+Te//xQLW6kS1uq86qtX/utSkp11iioXwVTGCEV1l65DnrgaGIlg8N89pHgLF0oqCAF2qjjt0i9flJYlKglXnCx/E8Z6EX4H4JLIKvJlVvpJ4uyFl3XaGHkwOnhkLkU5juOLPEADc0JXTNpjqn/LkDWSUcriISY1oYi7IIdW/RSpOb5SW2cI30A9K7dPpJ57Q15yT71i03vO9VUzm9x8KhIk1Ae2M5kJ8sZTwOHTZTRNj+SEZxwV2S7tNrpxNWOPFs01kSs/QiVpi8tA5tslxR0ewdg/EIZR7sWIdyg3tqbvthx8BVXyQhrJmOMfdVuluEBdow==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffdd6366-3b0a-45b5-7665-08de80139521
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:44:32.7318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d5J7XuLK2ROP8L6EVG48J8+uzBUE8/Vrhgcrjnk0wXQndTnppJBCw1XIrUunV+ER53NaNPDjU74LxfCC8fyfKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF8B755DBFD
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,DS0PR11MB8049.namprd11.prod.outlook.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: AF5EE26F1A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMiwg
MjAyNiAxMjoxNSBQTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
dXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4g
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjcgMi8zXSBkcm0vaTkxNS9kaXNwbGF5OiBQYW5lbCBS
ZXBsYXkgQlcgb3B0aW1pemF0aW9uDQo+IGZvciBEUDIuMCB0dW5uZWxpbmcNCj4gDQo+IE9uIFRo
dSwgMjAyNi0wMy0xMiBhdCAxMDozMCArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiBV
bnVzZWQgYmFuZHdpZHRoIGNhbiBiZSB1c2VkIGJ5IGV4dGVybmFsIGRpc3BsYXkgYWdlbnRzIGZv
ciBQYW5lbA0KPiA+IFJlcGxheSBlbmFibGVkIERQIHBhbmVsIGR1cmluZyBpZGxlbmVzcyB3aXRo
IGxpbmsgb24uIEVuYWJsZSBzb3VyY2UgdG8NCj4gPiByZXBsYWNlIGR1bW15IGRhdGEgZnJvbSB0
aGUgZGlzcGxheSB3aXRoIGRhdGEgZnJvbSBhbm90aGVyIGFnZW50IGJ5DQo+ID4gcHJvZ3JhbW1p
bmcgVFJBTlNfRFAyX0NUTCBbUGFuZWwgUmVwbGF5IFR1bm5lbGluZyBFbmFibGVdLg0KPiA+DQo+
ID4gdjI6DQo+ID4gLSBFbmFibGUgcHIgYncgb3B0aW1pemF0aW9uIGFsb25nIHdpdGggcGFuZWwg
cmVwbGF5IGVuYWJsZS4gW0phbmldDQo+ID4NCj4gPiB2MzoNCj4gPiAtIFdyaXRlIFRSQU5TX0RQ
Ml9DVEwgb25jZSBmb3IgYm90aCBidyBvcHRpbWl6YXRpb24gYW5kIHBhbmVsIHJlcGxheQ0KPiA+
IGVuYWJsZS4gW0phbmldDQo+ID4NCj4gPiB2NDoNCj4gPiAtIFJlYWQgRFBDRCBvbmNlIGluIGlu
aXQoKSBhbmQgc3RvcmUgaW4gcGFuZWxfcmVwbGF5X2NhcHMuIFtKb3VuaV0NCj4gPg0KPiA+IHY1
Og0KPiA+IC0gQXZvaWQgcmVhZGluZyBEUENEIGZvciBlZHAuIFtKb3VuaV0NCj4gPiAtIFVzZSBk
cm1fZHBfZHBjZF9yZWFkX2J5dGUoKSBhbmQgc29tZSBjb3NtZXRpYyBjaGFuZ2VzLiBbSmFuaV0N
Cj4gPg0KPiA+IHY2Og0KPiA+IC0gRXh0ZW5kIHRoZSBjb3JyZXNwb25kaW5nIGludGVyZmFjZSBk
ZWZpbmVkIGluIGRybV9kcF90dW5uZWwuYyB0bw0KPiA+IHF1ZXJ5IHRoZSBQYW5lbCBSZXBsYXkg
b3B0aW1pemF0aW9uIGNhcGFiaWxpdHkuIFtJbXJlXQ0KPiA+DQo+ID4gQnNwZWM6IDY4OTIwDQo+
ID4gUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
cmVncy5oIHzCoCAxICsNCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmPCoMKgwqDCoMKgIHwgMjQNCj4gPiArKysrKysrKysrKysrKysrKy0tDQo+ID4gwqAyIGZp
bGVzIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Jl
Z3MuaA0KPiA+IGluZGV4IDQ3NDZlOWViZDkyMC4uZGFkYThkYzI3ZWE0IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9yZWdzLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVncy5o
DQo+ID4gQEAgLTIyNjMsNiArMjI2Myw3IEBADQo+ID4gwqAjZGVmaW5lIFRSQU5TX0RQMl9DVEwo
dHJhbnMpCQkJX01NSU9fVFJBTlModHJhbnMsDQo+ID4gX1RSQU5TX0RQMl9DVExfQSwgX1RSQU5T
X0RQMl9DVExfQikNCj4gPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfMTI4QjEzMkJfQ0hBTk5FTF9D
T0RJTkcJUkVHX0JJVCgzMSkNCj4gPiDCoCNkZWZpbmXCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZ
X0VOQUJMRQkJUkVHX0JJVCgzMCkNCj4gPiArI2RlZmluZcKgIFRSQU5TX0RQMl9QUl9UVU5ORUxJ
TkdfRU5BQkxFCQlSRUdfQklUKDI2KQ0KPiA+IMKgI2RlZmluZcKgIFRSQU5TX0RQMl9ERUJVR19F
TkFCTEUJCQlSRUdfQklUKDIzKQ0KPiA+DQo+ID4gwqAjZGVmaW5lIF9UUkFOU19EUDJfVkZSRVFI
SUdIX0EJCQkweDYwMGE0DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBpbmRleCA1MDQxYTVhMTM4ZDEuLjYzMjUyN2VkZTI5ZiAxMDA2NDQNCj4g
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC00NCw2
ICs0NCw3IEBADQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxfZG1jLmgiDQo+ID4gwqAjaW5jbHVkZSAi
aW50ZWxfZHAuaCINCj4gPiDCoCNpbmNsdWRlICJpbnRlbF9kcF9hdXguaCINCj4gPiArI2luY2x1
ZGUgImludGVsX2RwX3R1bm5lbC5oIg0KPiA+IMKgI2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiA+
IMKgI2luY2x1ZGUgImludGVsX2Zyb250YnVmZmVyLmgiDQo+ID4gwqAjaW5jbHVkZSAiaW50ZWxf
aGRtaS5oIg0KPiA+IEBAIC0xMDIzLDExICsxMDI0LDI4IEBAIHN0YXRpYyB1OCBmcmFtZXNfYmVm
b3JlX3N1X2VudHJ5KHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoAlyZXR1
cm4gZnJhbWVzX2JlZm9yZV9zdV9lbnRyeTsNCj4gPiDCoH0NCj4gPg0KPiA+ICtzdGF0aWMgYm9v
bCBpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0aW9uKHN0cnVjdCBpbnRlbF9kcA0KPiA+
ICppbnRlbF9kcCkNCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiArDQo+ID4gKwlpZiAoRElTUExBWV9W
RVIoZGlzcGxheSkgPCAzNSkNCj4gPiArCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiBUaGlzIGlzIG5v
dCBuZWNlc3NhcnkgaWYgeW91IGNoZWNrIGl0IGFscmVhZHkgYXQgY29tcHV0ZSBjb25maWcuDQo+
IA0KPiA+ICsNCj4gPiArCWlmICghaW50ZWxfZHBfdHVubmVsX2J3X2FsbG9jX2lzX2VuYWJsZWQo
aW50ZWxfZHApKQ0KPiA+ICsJCXJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4gKwlpZiAoIWludGVs
X2RwX3R1bm5lbF9wcl9vcHRpbWl6YXRpb25fc3VwcG9ydGVkKGludGVsX2RwKSkNCj4gPiArCQly
ZXR1cm4gZmFsc2U7DQo+IA0KPiBZb3Ugc2hvdWxkIG1vdmUgdGhpcyBwYXRjaCBhZnRlciBwYXRj
aCAzLiBUaGVuIHlvdSBjYW4gZHJvcCB0aGlzIGNoZWNrLg0KPiANCj4gPiArDQo+ID4gKwlyZXR1
cm4gdHJ1ZTsNCj4gPiArfQ0KPiA+ICsNCj4gPiDCoHN0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9w
YW5lbF9yZXBsYXkoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gPiDCoHsNCj4gPiDCoAlz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHAp
Ow0KPiA+IMKgCXN0cnVjdCBpbnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiA+IMKg
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2Rl
cjsNCj4gPiArCXUzMiBkcDJfY3RsX3ZhbCA9IFRSQU5TX0RQMl9QQU5FTF9SRVBMQVlfRU5BQkxF
Ow0KPiA+DQo+ID4gwqAJaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkgJiYgcHNyLT5zZWxf
dXBkYXRlX2VuYWJsZWQpIHsNCj4gPiDCoAkJdTMyIHZhbCA9IHBzci0+c3VfcmVnaW9uX2V0X2Vu
YWJsZWQgPw0KPiA+IEBAIC0xMDQwLDEyICsxMDU4LDE0IEBAIHN0YXRpYyB2b2lkIGRnMl9hY3Rp
dmF0ZV9wYW5lbF9yZXBsYXkoc3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+IMKg
CQkJwqDCoMKgwqDCoMKgIHZhbCk7DQo+ID4gwqAJfQ0KPiA+DQo+ID4gKwlpZiAoIWludGVsX2Rw
X2lzX2VkcChpbnRlbF9kcCkgJiYNCj4gPiBpbnRlbF9wc3JfYWxsb3dfcHJfYndfb3B0aW1pemF0
aW9uKGludGVsX2RwKSkNCj4gPiArCQlkcDJfY3RsX3ZhbCB8PSBUUkFOU19EUDJfUFJfVFVOTkVM
SU5HX0VOQUJMRTsNCj4gDQo+IElmIHlvdSBkbyBtb2RpZmljYXRpb24gSSBjb21tZW50ZWQgYWJv
dmUgeW91IGNvdWxkIGp1c3QgY2hlY2sNCj4gaW50ZWxfZHBfdHVubmVsX2J3X2FsbG9jX2lzX2Vu
YWJsZWQgaGVyZS4gTm8gbmVlZCB0byBhZGQNCj4gaW50ZWxfcHNyX2FsbG93X3ByX2J3X29wdGlt
aXphdGlvbiBoZWxwZXIuDQoNClN1cmUsIHdpbGwgY2hlY2sgb24gdGhpcy4NCg0KUmVnYXJkcywN
CkFuaW1lc2gNCj4gDQo+IEJSLA0KPiANCj4gSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiA+IMKgCQnC
oMKgwqDCoCBQU1IyX01BTl9UUktfQ1RMKGRpc3BsYXksIGludGVsX2RwLQ0KPiA+ID5wc3IudHJh
bnNjb2RlciksDQo+ID4gwqAJCcKgwqDCoMKgIDAsDQo+ID4gQURMUF9QU1IyX01BTl9UUktfQ1RM
X1NGX0NPTlRJTlVPU19GVUxMX0ZSQU1FKTsNCj4gPg0KPiA+IC0JaW50ZWxfZGVfcm13KGRpc3Bs
YXksIFRSQU5TX0RQMl9DVEwoaW50ZWxfZHAtDQo+ID4gPnBzci50cmFuc2NvZGVyKSwgMCwNCj4g
PiAtCQnCoMKgwqDCoCBUUkFOU19EUDJfUEFORUxfUkVQTEFZX0VOQUJMRSk7DQo+ID4gKwlpbnRl
bF9kZV9ybXcoZGlzcGxheSwgVFJBTlNfRFAyX0NUTChpbnRlbF9kcC0NCj4gPiA+cHNyLnRyYW5z
Y29kZXIpLCAwLCBkcDJfY3RsX3ZhbCk7DQo+ID4gwqB9DQo+ID4NCj4gPiDCoHN0YXRpYyB2b2lk
IGhzd19hY3RpdmF0ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQoNCg==
