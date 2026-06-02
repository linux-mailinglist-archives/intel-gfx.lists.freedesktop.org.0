Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PeVH51fHmo/iwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:44:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E55A9628292
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 06:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47E88113834;
	Tue,  2 Jun 2026 04:44:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I6DTgFEy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2431D113834;
 Tue,  2 Jun 2026 04:44:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780375449; x=1811911449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kWKB7L8xbPUCY+HiwkoMpjPnjBifJ2iJgMbsAFfuZ5Y=;
 b=I6DTgFEyW0tMIF0sX3oNUQHaoCTXtuCXScH8qHshiH4K+5C9yaHtUArp
 mAk37mWrJ6l0EZK0r0yggz6r6VphaRO1w8UKiRx004+E/8B1uub/MQ8SP
 GMgEplXSBNoCn39WHNiU21ZN/oFUlizcyiLpN18fM+CDUUy/WbDK8Jx12
 CFO2obsN+ckUooy0hCFxyeysLEWrCwbBVz03FYRP6vUj+/ODO1Udf6cZx
 GgJmPHXHB+H9Ejoj6IlATngN5udYxLJ9yvbjyJFGNtk1rr8FqoNTHXiY9
 PND1Mjhkj9ucWjRTPXj63aII6AJB4H/eDsHP5zTKQa9JHaJNka3/fNXup g==;
X-CSE-ConnectionGUID: kOPe+AejTfifKKfnwI3LrA==
X-CSE-MsgGUID: VOgcZMO7Rpml5lQs4QGhsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="85007445"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="85007445"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:44:09 -0700
X-CSE-ConnectionGUID: yhK59Fn8QPuu0Cjr9TPJ6w==
X-CSE-MsgGUID: OLJDx6POSz+pTiD0Ljf5cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="243903877"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 21:44:08 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:44:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 21:44:07 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.21) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 21:44:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MjjE341vftXimj6m40f/DUomaPssHSGPnkCjQu7IZPeYCSQs90AHAxyFQaJyQ+YtJFlUBIBlIKASc27x6sIv3Vd1V2xFiiq2SrRYwMd6QnWt9c4SEoIJOQ7gXpU57fQVSr0Yv1Y0wlRrdPbg8g9n9o53Yb6Q7oOtOH5DZdV82vx8+d5il5KNq/eKULbU1fCmYQB2YU8tk8ByWcfZfbigDVjdtpGO4DGQRtZLXnJxdQ1Vv/0cwpjZHybavYN8hpMyxu2Oociht3jUcr1infzCUyBfjsQrDuR3mblUzAjDauzy8zzUlrCm6DhE6OuQu+DHIQSP8gNrb4UOzbN0PlTZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWKB7L8xbPUCY+HiwkoMpjPnjBifJ2iJgMbsAFfuZ5Y=;
 b=UC/VZZ19YgleoTgcfMkQwOc1N/DrA5Y4EFbSNG7v/fJXCCssa9RY25qWmLBEZrZ9wGoKhP1aErNljLpbXBgaBweSIeBohqCNg1jzMZXkHkgRmglfHHtneqPi2dkA1qyqXDwZCm7KLE1jKXWsC6l8YsHhaHnuSEikbmCaQ3t7rbO3aM39Qxhj72i1novaJZgMoC88qhXv2rGuX6/IB8ETd4I2zugaEJp354GVgkCjEZONf7CwKKpQatyhYsUaxJWGjIRkNAFSzQjm7bhCEc53f91rKiRe8BZvYuke22pGNzDSQM+TzRdh679unnVjiNGr619xIt8ks6/0u1eUhwJJNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by PH7PR11MB6032.namprd11.prod.outlook.com (2603:10b6:510:1d3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Tue, 2 Jun 2026
 04:44:00 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::fdb2:e2ba:9504:5adc%3]) with mapi id 15.21.0071.011; Tue, 2 Jun 2026
 04:44:00 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 09/10] drm/i915: override Combo's VS/PE when requested
Thread-Topic: [PATCH v4 09/10] drm/i915: override Combo's VS/PE when requested
Thread-Index: AQHc76F9unj9Q5GWHESG8dnxxohhDbYqtVNQ
Date: Tue, 2 Jun 2026 04:44:00 +0000
Message-ID: <IA3PR11MB893772F7E6E9B24629152B51E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-10-michal.grzelak@intel.com>
In-Reply-To: <20260529192859.4172376-10-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|PH7PR11MB6032:EE_
x-ms-office365-filtering-correlation-id: 3a963e7e-bf50-473e-1cb2-08dec061906e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099006|4143699003|11063799006|18002099003|22082099003|3023799007|38070700021;
x-microsoft-antispam-message-info: 2u9wgeEO26wtwxvWWVNXQEjTItff/5iTKXhcgo1aoNh9BRSH7RCJgvUBghjzVXfRy9KcCKGK83R3IvxIt0nnmVcTX+EfgkyJGWtN0s8xGLSDGmAUwr9WthO5g3js/lGj6/TlKUFno35fwII7kcOq+6b9barWr3w1kDjK6VaYqiLg9+hmrH8O3si5z62s3NS47ygHU/UgIsQV3f9nqxMmjkWM+z380w1PreudveDzrZqeT2M7/AaK3cxVNT/WxETwXHtrPJUNrVh6q2Olg4H7DNWjt4ia2FM+E1SlZ9Pdh9RyGSBccEyCH+oF00HMPRM03g3IqAr9Dv48rnzvjPg/kXDu68lln9xjQ3KvhYclrSkYPzKM/jE+eg+cHBWgwDlvUPEY61Xqa78VEf8ep5aLi/HfuD7U1K3I9liO7SDrsdO3m1392NRPYZ1r1IEHrqtA703FByIC9vyZw3hKcTy1VIUV4WUbnO78WaZ3VcZVWvh6PRzwoJYQvq/PLKum7MqY4Gy56UHbBODI416fWQHGC5W65cNdDbVEueJJCigIGKQJAf2ilW+x4WxtfQbmiaVLBdZvokwo7bJnscb+G/Mvri2VzZr1yrpO/URf+M17ZGLsuaLw9ykNYv7zd+Z5EvFhTV0wtVLU2qowF1cZI+uIbZZOT8xywhbW4Lu2gHC5W6Gsh+jJAOc3RMyszOGU5AIHeU5iBgpwAqqKtMye6q7dPmkeRbsrQlg+JFpDeXWrY+wmV/DLT9d0ysQ4SoxfGzS4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099006)(4143699003)(11063799006)(18002099003)(22082099003)(3023799007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K09DUWplSzBUb2N6b1VXa3c5ZytHaG1LMllaUmhVNzlCeUo4cGo2RDF5ajlz?=
 =?utf-8?B?cnhlQ1YraFNDWHF6Qk8xUVVLWEMzVUVuRXRYMVRId3lGNFRzanozSFpRRWtV?=
 =?utf-8?B?OFUyRmQ5SllIZ04wUnI2bFF3bGpYUkFpT3dVSWRudGxFajk1ZjVSb1FFV3JE?=
 =?utf-8?B?WHZ3V3poOWpXUDYxV1BhS05Oc0gycnFEd01iUW04WFBUZWRoV0EyOW03UmMz?=
 =?utf-8?B?NUpzNjFlaHp2TWJtVzlJWkYzaktQQ09HRVBYcnJ2K1l3M2xMd0QvT29vVDBQ?=
 =?utf-8?B?Vm10VnA5aFRRL0VHVUFMd2pJU3JhNmZwL1RSNktPTHdWMUxNNVEvMjU4cy95?=
 =?utf-8?B?dUg3S25ZYTFDMGVvUGcwb1pjQlduMFB2MkhITy9QV3Z6VDhpL0o3dFFIVCtN?=
 =?utf-8?B?eG9GYkpnNUVDUXRRWmpMcnVOeEJWcGRCbzlpajNSaTBQZC9jMnpQbUppdkVN?=
 =?utf-8?B?WWJXZjdSQzB4VG85RkhqV3F0R2FLSWZ3cTNUU3lOa3V0L3lRa3B6V0Z2a3Vj?=
 =?utf-8?B?LzNEK2xienNEV2xKa2MyVjJ2VVhMTU1DcFpkdGtqa280dHJKSjR0cWw1V1RN?=
 =?utf-8?B?Y05ZV0lrZTVaNURiNEJBWXFlS0kzbEhCRmJNK1VWdnJhMENRZ0o2SnhySTV3?=
 =?utf-8?B?QVE5cVJnNGhQVTZGdHdMZzArRU52eVdRUEJid2dTZ3N1SFJJMVJ6aUgrN1Mr?=
 =?utf-8?B?eTZ3VSthZUZyN201NlNTZ1ljNXpGZ0t6ME8vb2FMd29INmpiUlpuekNldGg4?=
 =?utf-8?B?TEhyQ1ZlTlprUG9lN0FDOHZXVUNJZXA3ZFZIMGRiY2h5VEszTHdPbDQ1LzFG?=
 =?utf-8?B?VTgvSjhiS1hQcFRPSEJBVWZ2bUxCbHk3T3A2Y1NSL0U5S2dUUWlLRGpJVEYw?=
 =?utf-8?B?MEVGZ2F1QkNEU2pUMDVkaDh0UnRid3FRczI2eUloVW5qVVZPcGZRZXhIYjdt?=
 =?utf-8?B?bXRIUG9aUjhwMlN1dFNZallnVktzaHVWQmo2c1prZHhlZytRZ1dzMWdYWlk2?=
 =?utf-8?B?R3lBRzNDbFo5WWlJbktyTEVrQ2JRc3BiRlAwMkJuZ0YvQW0vb2lSRzVybUVl?=
 =?utf-8?B?R1RqR0p2amUvN3VIMjV6QTRORzdWR2FhaWRTZHVFQnB3bkd1WkxyK2l0RDJa?=
 =?utf-8?B?TGVmWmZnRllJaXpiKzduUVo3WHNnQmtFOEpscmFYQXdGdkpHWkQyUmg2cVM2?=
 =?utf-8?B?UjVZdS9nN2FVS1dUR2RCUkV5Vnh0OXZSZDJwdjVIK0tGNVBGRnpRRk9uTGR4?=
 =?utf-8?B?RUlhYkRhVkNsQ0dVbzc2RmZwcXNhd3FnY1VIVUJNck9PQThjMFlrRGJTU3BM?=
 =?utf-8?B?dndYTFd1Z1RCWjA1NS9BWXBTdnkyNjFLcGRDQ3pNWmQ2OFJIQmg2M2NMNFg5?=
 =?utf-8?B?Z0VJbGE5OGVybncwL0xvNk9EZUVEaUlydUpXOGsreG9odDlYKzBjTFJLcE83?=
 =?utf-8?B?aTQ0cHVHeGFueWh2ZHdzNlJwUzE3YVIyQVBORkw2Nk5LTll1QUROQnlybXQ1?=
 =?utf-8?B?MEIwOGxmdkRiM0p2WlBleStzT0lUN3pKUW1rZ2NJK2tTdWdPN3pTMVRpSWNS?=
 =?utf-8?B?R1k3bUsyUTNubzB1RWhNdE85RlJndHRZZTBZeDVkdC9jdEJLVWVHc0ppcUxm?=
 =?utf-8?B?ejVsUEJIOUtYS1htb3dKMzZ3UXR1aWFIb3RFVTlvWVVVM3VZZVBJSzlmWHdZ?=
 =?utf-8?B?RWNtSTFaa3A3K2w3OXpJSndhalRsaHJFRnV1c2NReWlBYWN3N3VJWUxlOXhH?=
 =?utf-8?B?VFpCY1B6R2hhb1JBbFJiTWZzQjMzTStNZ1dvbXNjUVhhVVhvVW5VNjU4OHRC?=
 =?utf-8?B?dWt1a2JFSTFKWFVIM2YvdzdPVklpQ256QVNDT0lCR281ZVA1QjNCdzREbXFv?=
 =?utf-8?B?L0dxa1Rmdm4yNlhtSTZpeUh2K0hyTGFzZ3RJb2dBU2lXS1Vob1ZLL2tHVXY2?=
 =?utf-8?B?c09xL3dvN2Q1QkRONXljYkZyWGkvNm1ZWUJmVzhra2hlNTVhOHovd0dBMGNU?=
 =?utf-8?B?UDlLZFVraGdwcG5vOE1RMkF0UTByeElSQi9ia25BOW5uVEpXdmIrMTFaNFBJ?=
 =?utf-8?B?dk0wTFhodEI0WjJYTVhTRVpnMDJQTDM0TWFkcnl4eDB3dFNlU3gwOTBKZnpJ?=
 =?utf-8?B?YU43U0lpYkxQMmhhMlNEcVdDSzYvSUZhQllMRHhpcFRpbmIwV2NrOHV4Vjdr?=
 =?utf-8?B?ejNDZXZURlBINGNxakpRMm1tQlN6b0ZPYXJETmZjWjZLMnBheG92NmU1cU5G?=
 =?utf-8?B?NHNHcGc0REdZRE9nSTlxYXViU2JUaENZY2kwUkErMUoxOEVmdnZINnJhK283?=
 =?utf-8?B?QzRoVGloTldVVUd5QktLbDFXZVBHeGEySHVzdlVtN1RrZCtjYk05dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: A9abSdxHW3v8P/YXImvfN+0z8do2QEvh/ahq9YNsY79OxGCYjKsNB92Ijjv0riKi+6Whrkuh/D4RQnxOleXvMuaR914tmG5oXBLnVC/0JWiWmIrIK6rRVgOdGICleoUFbkWFJoOANRceo2CxwXSG29PuWLu3nGNg/J0ELpRu9omoZWwQp/8n05tZsPFLIpZTQzIEonjzoBUyl68xSeuNMXdTWtdLZK2nPyoQ8rim9Jp+KTtq5yPiMe9oF3wb/ql+1pwWu/TzFK+ehBdOiPPHivkr3DeXjTYh6MLA1Hz54mQttQqWbGahixLRcbErYxL2+XVwJfJ3TdboFvKmmNCjAg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a963e7e-bf50-473e-1cb2-08dec061906e
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 04:44:00.0600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jU/Pbv0Cz3MyrqbFZ2+DRXi+2sRAwjoFqrBnGzjVCUmoFMoHO5S9FUUEmx8h/20623+dorQW8IiTbzJFKfbcSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6032
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[4];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E55A9628292
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDkvMTBdIGRybS9pOTE1OiBvdmVycmlkZSBDb21ibydzIFZT
L1BFIHdoZW4gcmVxdWVzdGVkDQo+IA0KPiBBZGQgYWNjZXNzb3IgZnVuY3Rpb24gZm9yIENvbWJv
IHRvIHJlYWQgcmVxdWVzdGVkIHRhYmxlIGZyb20gVkJUICM1Ny4NCj4gUGFyc2UgdGhlIHJlcXVl
c3RlZCB0YWJsZSBhbmQgdHJhbnNmb3JtIGRhdGEgaW50byBwb3J0J3MgYnVmZmVyLg0KPiANCj4g
Rm9yIEVITCwgaW4gY2FzZXMgd2hlbiBlRFAgZW5jb2RlciB1c2VzIGxvdyB2c3dpbmcsIGNob29z
ZSAzcmQgdGFibGUgaWYNCj4gZW5jb2RlciBzdXBwb3J0cyBIQlIzLiBPdGhlcndpc2UgdXNlIDJu
ZCB0YWJsZSBmb3IgZURQIHVzaW5nIGxvdyB2c3dpbmcuDQo+IA0KPiBJbiBjYXNlcyB3aGVuIGVE
UCBlbmNvZGVyIGRvZXMgbm90IHVzZSBsb3cgdnN3aW5nLCBjaG9vc2UgMm5kIHRhYmxlIGlmDQo+
IGVuY29kZXIgc3VwcG9ydHMgbW9kZSBoaWdoZXIgb3IgaW5jbHVkaW5nIEhCUjIuIE90aGVyd2lz
ZSB1c2UgM3JkIHRhYmxlIGZvcg0KPiBlRFAgbm90IHVzaW5nIGxvdyB2c3dpbmcuDQo+IA0KPiBG
b3IgZXh0ZXJuYWwgRFAgdXNlIDJuZCB0YWJsZSBpZiBlbmNvZGVyIHN1cHBvcnRzIG1vZGVzIGhp
Z2hlciB0aGFuIG9yDQo+IGluY2x1ZGluZyBIQlIyLiBVc2UgMXN0IHRhYmxlIGlmIGV4dGVybmFs
IERQIGVuY29kZXIgc3VwcG9ydHMgbW9kZXMgbG93ZXINCj4gdGhhbiBIQlIyLg0KPiANCj4gRm9y
IEpTTCwgYWx3YXlzIHVzZSAxc3QgdGFibGUgZm9yIGV4dGVybmFsIERQLiBGb3IgZURQcyBub3Qg
dXNpbmcgbG93IHZzd2luZw0KPiB1c2UgMXN0IHRhYmxlIGFzIHdlbGwuDQo+IA0KPiBJbiBjYXNl
cyB3aGVuIGVEUCBlbmNvZGVyIHVzZXMgbG93IHZzd2luZywgY2hvb3NlIDFzdCB0YWJsZSBpZiBl
bmNvZGVyDQo+IHN1cHBvcnRzIEhCUjMuIFdoZW4gZW5jb2RlciBzdXBwb3J0cyBIQlIyIGNob29z
ZSAzcmQgdGFibGUuIFdoZW4NCj4gZW5jb2RlciBzdXBwb3J0cyBtb2RlcyBsb3dlciB0aGFuIEhC
UjIgY2hvb3NlIDJuZCB0YWJsZS4NCj4gDQo+IFRoZXJlIGFyZSBubyBjaGFuZ2VzIHRvIGludGVs
X2RkaV9kcF9sZXZlbCgpIHNpbmNlIHNlbGVjdGlvbiBvZiBjb3JyZWN0IHJvdyBvZg0KPiBpbnRl
bF9kZGlfYnVmX3RyYW5zX2VudHJ5IGlzIHNhbWUgYXMgd2hlbiBubyBvdmVycmlkZSByZXF1ZXN0
IGhhcyBiZWVuDQo+IGRvbmUuDQo+IA0KPiBMb29raW5nIGZyb20gb3RoZXIgT1NlcywgaW4gY2Fz
ZSB3aGVuIGVuY29kZXIgZG9lcyBub3Qgc3VwcG9ydCBEUCB3ZSBjb3VsZA0KPiB0aGVvcmV0aWNh
bGx5IHVzZSAxc3QgdGFibGUuIEhvd2V2ZXIsIGFzIG9mIG5vdywgdXNlIGRlZmF1bHQgdGFibGVz
Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnplbGFrIDxtaWNoYWwuZ3J6ZWxha0Bp
bnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9i
aW9zLmMgICAgIHwgNDEgKysrKysrKysrKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5oICAgICB8ICAzICsrDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kZGlfYnVmX3RyYW5zLmMgICAgfCA1NCArKysrKysrKysrKysrKysrKy0tDQo+ICAuLi4v
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmggICAgfCAgNiArKysNCj4gIDQg
ZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiBpbmRleCAyZDM1
N2QzMzJjYjAuLjZhZGVjNmU2MGRmMyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTM5MzMsNiArMzkzMyw0NyBAQCBpbnRlbF9iaW9zX2Vu
Y29kZXJfZ2V0X2N4MF92c3Blbyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfYmlvc19lbmNvZGVyX2Rh
dGEgKmRldmRhdGEsDQo+ICAJcmV0dXJuIHZzcGVvOw0KPiAgfQ0KPiANCj4gK2NvbnN0IHN0cnVj
dCBpbnRlbF9kZGlfYnVmX3RyYW5zICoNCj4gK2ludGVsX2Jpb3NfZW5jb2Rlcl9nZXRfY29tYm9f
dnNwZW8oY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhLA0K
PiArCQkJCSAgIGludCBpZHgpDQo+ICt7DQo+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3Bs
YXkgPSBkZXZkYXRhLT5kaXNwbGF5Ow0KPiArCXN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICp2
c3BlbyA9ICh2b2lkICopIGRldmRhdGEtPnZzcGVvOw0KPiArCXVuaW9uIGludGVsX2RkaV9idWZf
dHJhbnNfZW50cnkgKmVudHJpZXMgPSAodm9pZCAqKSB2c3Blby0+ZW50cmllczsNCj4gKwljb25z
dCB1MzIgKnRhYmxlcyA9IGRpc3BsYXktPnZidC52c3Blby50YWJsZXM7DQo+ICsJaW50IG51bV9j
b2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zOw0KPiArCWludCBudW1fcm93
cyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fcm93czsNCj4gKwlzaXplX3Qgb2Zmc2V0ID0gMDsN
Cj4gKwlpbnQgbGV2ZWw7DQo+ICsNCj4gKwlJTlRFTF9ESVNQTEFZX1NUQVRFX1dBUk4oZGlzcGxh
eSwNCj4gKwkJCQkgaWR4IDwgQ09NQk9fSElHSF9WU1dJTkdfSEJSMyB8fA0KPiArCQkJCSBpZHgg
PiBDT01CT19MT1dfVlNXSU5HX0VEUF9IQlIzLA0KPiArCQkJCSAiQ29tYm8gcmVxdWVzdGVkIGlu
dmFsaWQgVlMvUEUtTyB0YWJsZToNCj4gJWRcbiIsIGlkeCk7DQoNClNhbWUgY29tbWVudCBhcyBw
cmV2aW91cyBwYXRjaA0KDQo+ICsNCj4gKwlvZmZzZXQgKz0gaWR4ICogbnVtX3Jvd3MgKiBudW1f
Y29sdW1uczsNCj4gKw0KPiArCWZvciAobGV2ZWwgPSAwOyBsZXZlbCA8IG51bV9yb3dzOyBsZXZl
bCsrKSB7DQo+ICsNCj4gKwkJdTMyIGR3Ml9zd2luZ19zZWwgPSB0YWJsZXNbb2Zmc2V0XTsNCj4g
KwkJdTMyIGR3N19uX3NjYWxhciA9IHRhYmxlc1tvZmZzZXQrMV07DQo+ICsJCXUzMiBkdzRfY3Vy
c29yX2NvZWZmID0gdGFibGVzW29mZnNldCsyXTsNCj4gKwkJdTMyIGR3NF9wb3N0X2N1cnNvcl8y
ID0gdGFibGVzW29mZnNldCszXTsNCj4gKwkJdTMyIGR3NF9wb3N0X2N1cnNvcl8xID0gdGFibGVz
W29mZnNldCs0XTsNCg0KU3BhY2VzIGFyb3VuZCBvcGVyYXRvcg0KDQpSZWdhcmRzLA0KU3VyYWog
S2FuZHBhbA0KDQo+ICsNCj4gKwkJZW50cmllc1tsZXZlbF0uaWNsLmR3Ml9zd2luZ19zZWwgPSBk
dzJfc3dpbmdfc2VsOw0KPiArCQllbnRyaWVzW2xldmVsXS5pY2wuZHc3X25fc2NhbGFyID0gZHc3
X25fc2NhbGFyOw0KPiArCQllbnRyaWVzW2xldmVsXS5pY2wuZHc0X2N1cnNvcl9jb2VmZiA9IGR3
NF9jdXJzb3JfY29lZmY7DQo+ICsJCWVudHJpZXNbbGV2ZWxdLmljbC5kdzRfcG9zdF9jdXJzb3Jf
MiA9IGR3NF9wb3N0X2N1cnNvcl8yOw0KPiArCQllbnRyaWVzW2xldmVsXS5pY2wuZHc0X3Bvc3Rf
Y3Vyc29yXzEgPSBkdzRfcG9zdF9jdXJzb3JfMTsNCj4gKw0KPiArCQlvZmZzZXQgKz0gbnVtX2Nv
bHVtbnM7DQo+ICsJfQ0KPiArDQo+ICsJdnNwZW8tPm51bV9lbnRyaWVzID0gbnVtX3Jvd3M7DQo+
ICsJcmV0dXJuIHZzcGVvOw0KPiArfQ0KPiArDQo+ICBib29sIGludGVsX2Jpb3NfZW5jb2Rlcl9p
c19kZWRpY2F0ZWRfZXh0ZXJuYWwoY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9k
YXRhICpkZXZkYXRhKSAgew0KPiAgCXJldHVybiBkZXZkYXRhLT5kaXNwbGF5LT52YnQudmVyc2lv
biA+PSAyNjQgJiYgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYmlvcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9z
LmgNCj4gaW5kZXggYjE1M2MwMDllZmM5Li5jNmMxZjczYTc3NGEgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+IEBAIC03OSw2ICs3OSw5IEBAIGlu
dGVsX2Jpb3NfZW5jb2Rlcl9nZXRfbHRfdnNwZW8oY29uc3Qgc3RydWN0DQo+IGludGVsX2Jpb3Nf
ZW5jb2Rlcl9kYXRhICpkZXZkYXRhLCAgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMg
Kg0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZ2V0X2N4MF92c3Blbyhjb25zdCBzdHJ1Y3QgaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGENCj4gKmRldmRhdGEsDQo+ICAJCQkJIGludCB0YWJsZSk7DQo+ICtj
b25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ICtpbnRlbF9iaW9zX2VuY29kZXJf
Z2V0X2NvbWJvX3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiAq
ZGV2ZGF0YSwNCj4gKwkJCQkgICBpbnQgdGFibGUpOw0KPiANCj4gIGJvb2wgaW50ZWxfYmlvc19l
bmNvZGVyX3JlcXVlc3RzX3ZzcGVvKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9iaW9zX2VuY29kZXJf
ZGF0YSAqZGV2ZGF0YSk7ICBib29sDQo+IGludGVsX2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kdmko
Y29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhDQo+ICpkZXZkYXRhKTsgZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gaW5kZXggM2I0NDQ2NjVjMzFkLi5kMTUwMzMxODYzNmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jDQo+IEBAIC0x
Nzg2LDYgKzE3ODYsNTAgQEAgeGUzcGxwZF9nZXRfbHRfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9l
bmNvZGVyDQo+ICplbmNvZGVyLA0KPiAgCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmeGUz
cGxwZF9sdF90cmFuc19kcDE0LA0KPiBuX2VudHJpZXMpOyAgfQ0KPiANCj4gK3N0YXRpYyBpbnQN
Cj4gK2pzbF9nZXRfY29tYm9fdnNwZW9faW5kZXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsDQo+ICsJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7
DQo+ICsJaWYgKGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VE
UCkpIHsNCj4gKwkJaWYgKHVzZV9lZHBfbG93X3Zzd2luZyhlbmNvZGVyKSkgew0KPiArCQkJaWYg
KGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPiA1NDAwMDApDQo+ICsJCQkJcmV0dXJuIENPTUJPX0hJ
R0hfVlNXSU5HX0hCUjM7DQo+ICsJCQllbHNlIGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID4g
MjcwMDAwKQ0KPiArCQkJCXJldHVybiBDT01CT19MT1dfVlNXSU5HX0VEUF9IQlIzOw0KPiArCQkJ
ZWxzZQ0KPiArCQkJCXJldHVybiBDT01CT19MT1dfVlNXSU5HX0VEUF9IQlIyOw0KPiArCQl9DQo+
ICsJfQ0KPiArDQo+ICsJaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkp
DQo+ICsJCXJldHVybiBDT01CT19ISUdIX1ZTV0lOR19IQlIzOw0KPiArDQo+ICsJcmV0dXJuIC1F
SU5WQUw7DQo+ICt9DQo+ICsNCj4gK3N0YXRpYyBpbnQNCj4gK2VobF9nZXRfY29tYm9fdnNwZW9f
aW5kZXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICsJCQkgIGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7DQo+ICsJaWYgKGludGVsX2NydGNfaGFz
X3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0VEUCkpIHsNCj4gKwkJaWYgKHVzZV9lZHBf
bG93X3Zzd2luZyhlbmNvZGVyKSkgew0KPiArCQkJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sg
PiA1NDAwMDApDQo+ICsJCQkJcmV0dXJuIENPTUJPX0xPV19WU1dJTkdfRURQX0hCUjM7DQo+ICsJ
CQllbHNlDQo+ICsJCQkJcmV0dXJuIENPTUJPX0xPV19WU1dJTkdfRURQX0hCUjI7DQo+ICsJCX0N
Cj4gKwl9DQo+ICsNCj4gKwlpZiAoaW50ZWxfY3J0Y19oYXNfZHBfZW5jb2RlcihjcnRjX3N0YXRl
KSkgew0KPiArCQlpZiAoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+IDI3MDAwMCkNCj4gKwkJCXJl
dHVybiBDT01CT19MT1dfVlNXSU5HX0VEUF9IQlIyOw0KPiArCQllbHNlDQo+ICsJCQlyZXR1cm4g
Q09NQk9fSElHSF9WU1dJTkdfSEJSMzsNCj4gKwl9DQo+ICsNCj4gKwlyZXR1cm4gLUVJTlZBTDsN
Cj4gK30NCj4gKw0KPiAgc3RhdGljIGludA0KPiAgc25wc19nZXRfYzEwX3ZzcGVvX2luZGV4KHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkJIGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKSBAQCAtDQo+IDE4ODEsMTEgKzE5MjUsMTUgQEAgdm9pZCBp
bnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXINCj4gKmVuY29kZXIp
DQo+ICAJCWVsc2UNCj4gIAkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSB0Z2xfZ2V0X2RrbF9i
dWZfdHJhbnM7DQo+ICAJfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA9PSAxMSkgew0K
PiAtCQlpZiAoZGlzcGxheS0+cGxhdGZvcm0uamFzcGVybGFrZSkNCj4gKwkJaWYgKGRpc3BsYXkt
PnBsYXRmb3JtLmphc3Blcmxha2UpIHsNCj4gIAkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBq
c2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsNCj4gLQkJZWxzZSBpZiAoZGlzcGxheS0+cGxhdGZvcm0u
ZWxraGFydGxha2UpDQo+ICsJCQllbmNvZGVyLT5nZXRfcGh5X3ZzcGVvX2luZGV4ID0NCj4ganNs
X2dldF9jb21ib192c3Blb19pbmRleDsNCj4gKwkJCWVuY29kZXItPmdldF9waHlfdnNwZW8gPQ0K
PiBpbnRlbF9iaW9zX2VuY29kZXJfZ2V0X2NvbWJvX3ZzcGVvOw0KPiArCQl9IGVsc2UgaWYgKGRp
c3BsYXktPnBsYXRmb3JtLmVsa2hhcnRsYWtlKSB7DQo+ICAJCQllbmNvZGVyLT5nZXRfYnVmX3Ry
YW5zID0gZWhsX2dldF9jb21ib19idWZfdHJhbnM7DQo+IC0JCWVsc2UgaWYgKGludGVsX2VuY29k
ZXJfaXNfY29tYm8oZW5jb2RlcikpDQo+ICsJCQllbmNvZGVyLT5nZXRfcGh5X3ZzcGVvX2luZGV4
ID0NCj4gZWhsX2dldF9jb21ib192c3Blb19pbmRleDsNCj4gKwkJCWVuY29kZXItPmdldF9waHlf
dnNwZW8gPQ0KPiBpbnRlbF9iaW9zX2VuY29kZXJfZ2V0X2NvbWJvX3ZzcGVvOw0KPiArCQl9IGVs
c2UgaWYgKGludGVsX2VuY29kZXJfaXNfY29tYm8oZW5jb2RlcikpDQo+ICAJCQllbmNvZGVyLT5n
ZXRfYnVmX3RyYW5zID0gaWNsX2dldF9jb21ib19idWZfdHJhbnM7DQo+ICAJCWVsc2UNCj4gIAkJ
CWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBpY2xfZ2V0X21nX2J1Zl90cmFuczsgZGlmZg0KPiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5o
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgN
Cj4gaW5kZXggN2QzZTBiNzUzNWZlLi5hNzJjZjBlZDc5OTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+IEBAIC0x
MDEsNiArMTAxLDEyIEBAIGVudW0gaW50ZWxfYzEwX3ZzcGVvIHsNCj4gIAlDMTBfRURQX0hCUjMN
Cj4gIH07DQo+IA0KPiArZW51bSBpbnRlbF9jb21ib192c3BlbyB7DQo+ICsJQ09NQk9fSElHSF9W
U1dJTkdfSEJSMyA9IDAsDQo+ICsJQ09NQk9fTE9XX1ZTV0lOR19FRFBfSEJSMiwNCj4gKwlDT01C
T19MT1dfVlNXSU5HX0VEUF9IQlIzDQo+ICt9Ow0KPiArDQo+ICBib29sIGlzX2hvYmxfYnVmX3Ry
YW5zKGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICp0YWJsZSk7DQo+IA0KPiAgdm9p
ZCBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIp
Ow0KPiAtLQ0KPiAyLjQ1LjINCg0K
