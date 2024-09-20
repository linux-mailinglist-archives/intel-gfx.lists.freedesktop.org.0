Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D3C97D156
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 08:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C14F10E7B2;
	Fri, 20 Sep 2024 06:47:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dcn6PIsn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62ACB10E7B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 06:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726814819; x=1758350819;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:mime-version;
 bh=xPmNoJ6WZHPcddqt38J3DhUsXoEgktzEfgoyxb5XWSY=;
 b=dcn6PIsnSbRxwRzqs+E+3dJ2a0z/yHYSLinzqeAbEZ7Y0OI0H3FR7w3a
 d3GewSRldN8MCkCekC/yK8AddC9zQwbwUoGi5lMn7DThu6BOfCy49pWhG
 yMz+jp4f/MtacNglhpCf0d7nNwzdcFy9KHdSBf0UCNejlXIk073iPKYxF
 gwZ5kN/Br7zWrRyBwJ2H6F9WXHXojkjW7qlob/0OseL8eqNmzXjVqiiXW
 PfmJKAxpOQOloHKzNaH8Rb3dNXQA+0+6H3PoK85gCTQ54WaAC4WPoeYmV
 celQ6+tw3dr0r0Lg77PY5hPFnaZdPy5Y1/eT37xnaDkgebOOiKY/p0tot g==;
X-CSE-ConnectionGUID: lzoyfSirQw60AqpfCue59A==
X-CSE-MsgGUID: gNEcDG7hRKapPcuEfA5yOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25283736"
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208,217";a="25283736"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 23:46:57 -0700
X-CSE-ConnectionGUID: 20sgyQXJTlab93Ev8KiRng==
X-CSE-MsgGUID: JQAatP7PQqeWFm1BGCFfdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,243,1719903600"; d="scan'208,217";a="75154011"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 23:46:56 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 23:46:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 23:46:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 23:46:53 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 23:46:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cwhuwgL8floak1/4t1g/Q7d+djzYQkY4R+bOT365rlxKr6amPpCyLCQV33KusfaMaWQo6z2ewt+2NOyYmittfvbDrrp9HxKxN6CCzzVdILndmjp/5M88UwW61cEkbwuqRrJdrsM17NIaNAzsKYqW9UEN8GZ1YvJszD69O5vnwlhbBwBaVg5bZ6TsekLJqAfQx1OEFWZa0GVpHE3187zZY1NwjOsV2oLhpsU51sQx5fS7rVBOAPjO1SmqxCZLvPfZ43OzaeTRkEMseVI1Mtt1Zt1ANQjMNOVSkVZqVbkSd1n13JHJM/XJT8OrWZHjrsk71v1jhW+q3Vjb1710EbJEXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aK5loQrZerz8Txb55/DlldHqyq1O8QQrUatQYOIAkhY=;
 b=nozK0u+7a13YGAJSY8Fnhz1FPuF898Q3TQZBfNOj+ouodxwwqCZOBpt77Ow7NLo7HVUgkam//8sEsuIQtxoc1791xz3It+MmmjKNykKUMxFVROnohVN+CuC9EIahz/Wd8cNUnMgh2wcUIEFCsM64vT6O2SNAXrAgh1a2a/A5vJrxMVrtO8iL6mluN8f10kth7eU/DzaHlnYX8K2f07zGYQidgVKxL3Vmycs8HHQyRBNd9jQONiffTIxSSGuVULg6j8znIZ+47qHvGDcsj2tKXiOQrYEiYwMhrX58XaLZzBaN/RrRithLiKbsThJdifSuVTcm6fJ0es+nfglVIBLAcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH0PR11MB5901.namprd11.prod.outlook.com (2603:10b6:510:143::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Fri, 20 Sep
 2024 06:46:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.7982.016; Fri, 20 Sep 2024
 06:46:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Topic: [PATCH] drm/i915/psr: Implment WA to help reach PC10
Thread-Index: AQHa/PWpZ+RNVuAGYkG7Qr5vJr+rvbJFu5EAgALmIYCABk00AIAAGzcAgBAW4ACAASMnAIAADUWggAAE2YCAAAETVA==
Date: Fri, 20 Sep 2024 06:46:38 +0000
Message-ID: <SN7PR11MB67504154D1E5DFE86B9BFE6BE36C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240909045454.412110-1-suraj.kandpal@intel.com>
 <20240909063218.447934-1-suraj.kandpal@intel.com>
 <DM4PR11MB6360E85B9BAE1924EFC27A9EF4632@DM4PR11MB6360.namprd11.prod.outlook.com>
 <02fc45c42b31279c147bda74d088cb849c1d8f56.camel@intel.com>
 <SN7PR11MB6750ACEF4BFD6543C268A5D4E36C2@SN7PR11MB6750.namprd11.prod.outlook.com>
 <a4389fd35721a476abdb9f8d30f7f2cf3611453a.camel@intel.com>
In-Reply-To: <a4389fd35721a476abdb9f8d30f7f2cf3611453a.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-reactions: allow
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH0PR11MB5901:EE_
x-ms-office365-filtering-correlation-id: 1728395b-1c67-49d6-dd42-08dcd93ffa58
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?w0h2V3gAf269zh1NQEFvJst4PTZgdjHfUiIwh0VIhsGHMwMK4twmNRye4c?=
 =?iso-8859-1?Q?8rrQy5qiqlfVd2qMKbYCguWH/CHvp6+MHyVAG9K5LR6p9jYRko3DkAjOUw?=
 =?iso-8859-1?Q?cqkrVmiqHWujYUz4FoG3RGmnGBmS5Vptz3QXUv7rbqYgTykoq19SnD+z78?=
 =?iso-8859-1?Q?2gYVMP2rZgFRl/AORNgcErh5ZOwjGcTOm6L7cth8nSvaTvJHzmv/Mitpum?=
 =?iso-8859-1?Q?kHERgU0Vlv0pHq06bGxTbQfb2jl3kITt45wDVZF9O4gc4j0gKngIyJn057?=
 =?iso-8859-1?Q?FPBSiyjCGe9DaDV6t3vQ1g8quYOYwOR1PAAZfVJffaPZxrNEsZjovhZpVp?=
 =?iso-8859-1?Q?e/vU6lYXCXO4yvfX+50T2RH04F6HNXFZ/0DrKbvkiU5Le5F8wjfuNLEuVA?=
 =?iso-8859-1?Q?uxi72yQbz7GfMLuz+vSilLsYwqQk+MZV7g7Acukz03AXYmLfsHKLoltvqr?=
 =?iso-8859-1?Q?/k/b9PNOzcsyJlO7ZNOmtZkMMFZGTlK9adl4eUZgp2hG7eLkBix9OFohXy?=
 =?iso-8859-1?Q?O0MY/u9yFSYGhzc+JPgRqPI5Q36E/zSYFKz5To0OOzjyY7+0QEY/3XnmYH?=
 =?iso-8859-1?Q?vydTXlVqamRJO2S6PkEyNHmA7G84I45FCUiB5FpbWXSxbsa9d3ua7MI4c3?=
 =?iso-8859-1?Q?alStvCCBiuktx+xCcdk7kCuv1GptOwmMkBGe3VM4FjkA3Ieuygz3/TifwY?=
 =?iso-8859-1?Q?nKHpjJy0J1MWV2qzAr6otPlyX7HhvZmlZGxfQKEXiuhWK84qx2odr/34+R?=
 =?iso-8859-1?Q?9ieQsBu6/44BSzhktG8vZIWapqltt5nbW+mD2ESZE0iyq1LdqH8n5njbat?=
 =?iso-8859-1?Q?dcRH4aDG3WV6yHomOVpDeI4YwEW0IuyuYuWs5L94Nd6px9iEB+5dCwcOoo?=
 =?iso-8859-1?Q?dLjD72KJu0bc0uxlkC2Co6cKoLqpunKw9NRB8zkqqXwNog8GadX0iEQL3a?=
 =?iso-8859-1?Q?W0pkeTfW2pCPG/L1IWPaLXi9CCNiMGSMYXv//Jzmu1dCUYvVfPLGEV7emw?=
 =?iso-8859-1?Q?+KF8lXoP6rQqNhBMtPH05qqrSK30vzCMfS+D8jtmLufJY883+P4Rt0aUZx?=
 =?iso-8859-1?Q?8HBBPF57XF1GCFQ/TIAfMAFIMOicy7ietObx8chUAA/E3RuNYQQYcg66o3?=
 =?iso-8859-1?Q?AtpKAh51dj1qpiVeJMR5Y5dXjoGLRnlYehdDQR/r4bwaiBALLYzMrCHmG3?=
 =?iso-8859-1?Q?IqSqGcDME+bNtYL6MTpYlegR74vfNrtU4TSQArXcQtp4Id4WjCj+GDIP9X?=
 =?iso-8859-1?Q?fygVqNrYyFdNULrUMAV3uyYWhyj1cGvB90ojz4YimK3CFRiqmU6/IZccCI?=
 =?iso-8859-1?Q?6rUxC2L5lH80i8siEYWT38ZXjFxJeHLVjxZIYAHQCYDT44cBEhoyYZ0+Yr?=
 =?iso-8859-1?Q?RfdL55cRN2GHnCvh1nF3M28gg/Q4Hrtw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?K4fIE/VAz9zOPfXXAEef7G02hD+l0UlajH6iGLmBRqkiRNxtcI1UEYQTil?=
 =?iso-8859-1?Q?vnaEdAb1isEwYaPiJ7jRICrYoJMHniAqHLBS7dFsUzMZE7JNvJ7NtHt2PP?=
 =?iso-8859-1?Q?sPnUPlGw6bYXvLj3tuv55D/K/cqLCToPWu+f76zPvs+gic+0FNPeswxNYJ?=
 =?iso-8859-1?Q?dspcnS+w/biWzTyPpLMWWHfvJOlGiRNvBZOo4flnya068HbGVx9lIcrxrn?=
 =?iso-8859-1?Q?uitNw/MTqq46XKE0tcVIAru+xadbYnXcjFgyMgQBb9ltC+ex/6Z6ZTyzSr?=
 =?iso-8859-1?Q?IBPfd+tnkpjFG4pSDylsMvzoXBbvnuyDL6jWTMI8n4HgtS1QMBLz/i2q+v?=
 =?iso-8859-1?Q?Rku3Hf6O0QhpaRpwh/Sx9JB20RYOTJnn5wQuNcXjD3gLhS2RyvYMqrpBIL?=
 =?iso-8859-1?Q?mEeIjaqg5xsoKsiLS5AIaeeChVrFwI9W7zgdHgziH+Q+ry2m4PM2LaKP7H?=
 =?iso-8859-1?Q?FfhWUaWSlH1rmjRsAeIuJjpehU5t00z+Pimu1C0nViqt7osEDemEDsTZDK?=
 =?iso-8859-1?Q?EbvKAmYGJOMztNy/VLmcuyuF1qVy4YNHzC1cvIYbWIdvH7xDUDQ6X5o3JG?=
 =?iso-8859-1?Q?vOdWbWJlZ2kZFg7obwWP/g1CCgpOTm1HVZDTDzUsUQWWjJJekx3dGLiQux?=
 =?iso-8859-1?Q?ifwyGOBXJj+vdcpYLUAag+IqK/d0JfhvFfVcra/qfLGgFnBTPezJy+RwES?=
 =?iso-8859-1?Q?f8k48aYBUgWBDTN4B1xFqFqkolKjnZ4/v1pIZu3TAP7riro9/BDijAW2ik?=
 =?iso-8859-1?Q?cdCebi2Ax/PI+bBvkktyfwPwoh+yNoxZRGOCyhTVKWiMzGf3E3D8Ztbn55?=
 =?iso-8859-1?Q?sByjepQnPdxE5oSH1JfB9wxxEpMB6JbeMMnveKudrKbPLMTa4CzbY7F6iV?=
 =?iso-8859-1?Q?tWEQ/BR8H2IDbTFeUqprW+FvSYJoi/odIPWOeYl4vMZNmSYQ8FmEFKw2RJ?=
 =?iso-8859-1?Q?kndrUD/Y7pEAGl43r/urPvmNsqRbrSPfmrSlfdbPmPL3D4620yxHv3X12S?=
 =?iso-8859-1?Q?QHmt/nAiReXGVbs+PHv4X4M9UBRAzQfGloHPxRr3gaJBj48d1QPjsQRtz9?=
 =?iso-8859-1?Q?F52ZSOEt0ocNEVqZ+b+xrTowAbkKy1gxqH/X5J80OAqmS/03dLxweSDOw1?=
 =?iso-8859-1?Q?g3+LtSI/c4s2JfVI3MqXq0JtPtQ80ZDstx9J4EXTmw25TfcHSAmPWSJ4fG?=
 =?iso-8859-1?Q?HeOMZZrSpkedJa3M5GPEns5PVWibJrhATHEHgB1t37HeXIwYfdxGiS/UFD?=
 =?iso-8859-1?Q?9HzTcrKMrWBytGr4dqOqzUpELtO3+yITSfhjtubuzU3fIJ+xTg25BtWX2q?=
 =?iso-8859-1?Q?wLb9Uk7q55TN40QkpmzWSdze3zbyo8emM/UNYT8RMOCXrw9cZej1sxQjVH?=
 =?iso-8859-1?Q?RiNaESW/rnYmMMB7yUzrfX/tuCnwVckADw2vwGdYETLsGtCttIepVxa/CX?=
 =?iso-8859-1?Q?0s0Eyp1xfzPXbV0R0EYIWA+rAdu9weG2NgZOuzle7a9oCQRNguhaOkzu1I?=
 =?iso-8859-1?Q?pDvrSBnZThrGkp3DYRlnjfz1F5xFz1Q+lhX8iG0JzWBSr4N0zi9k/LqoPF?=
 =?iso-8859-1?Q?TDzJlt2TB+k0hhTlISYJ+XUMNifuPrVe0HpoXDL+ArCFH/xCuGzOs6enq5?=
 =?iso-8859-1?Q?b4KoJbb8+E3+7z5ZUp9mAp1D6q1ti62T06mUv0dTyDMmor51zs8Bb1JQ?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: multipart/alternative;
 boundary="_000_SN7PR11MB67504154D1E5DFE86B9BFE6BE36C2SN7PR11MB6750namp_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1728395b-1c67-49d6-dd42-08dcd93ffa58
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2024 06:46:38.5559 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: scKnuNrnnqQ1pgS8hwNUl5Mt14ldDDVV/rn3lqhtkB0OdPsgD6hfJwXLMqjCR0naEoogQkcia4D3iB3BtopVmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5901
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

--_000_SN7PR11MB67504154D1E5DFE86B9BFE6BE36C2SN7PR11MB6750namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



________________________________
From: Hogander, Jouni <jouni.hogander@intel.com>
Sent: Friday, September 20, 2024 12:11:19 pm
To: Kandpal, Suraj <suraj.kandpal@intel.com>; Shankar, Uma <uma.shankar@int=
el.com>; intel-gfx@lists.freedesktop.org <intel-gfx@lists.freedesktop.org>
Cc: Deak, Imre <imre.deak@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10

On Fri, 2024-09-20 at 06:29 +0000, Kandpal, Suraj wrote:
>
>
> > -----Original Message-----
> > From: Hogander, Jouni <jouni.hogander@intel.com>
> > Sent: Friday, September 20, 2024 11:06 AM
> > To: Shankar, Uma <uma.shankar@intel.com>; Kandpal, Suraj
> > <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.org
> > Cc: Deak, Imre <imre.deak@intel.com>
> > Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10
> >
> > On Thu, 2024-09-19 at 12:14 +0000, Shankar, Uma wrote:
> > >
> > >
> > > > -----Original Message-----
> > > > From: Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Sent: Monday, September 9, 2024 12:02 PM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Hogander, Jouni
> > > > <jouni.hogander@intel.com>; Deak, Imre <imre.deak@intel.com>;
> > > > Kandpal, Suraj <suraj.kandpal@intel.com>
> > > > Subject: [PATCH] drm/i915/psr: Implment WA to help reach PC10
> > >
> > > Not: Typo in implement
> > >
> > > > To reach PC10 when PKG_C_LATENCY is configure we must do the
> > > > following things
> > > > 1) Enter PSR1 only when delayed_vblank < 6 lines and DC5 can be
> > > > entered
> > > > 2) Allow PSR2 deep sleep when DC5 can be entered
> > > > 3) DC5 can be entered when all transocoder have either PSR1,
> > > > PSR2 or
> > > > eDP 1.5 PR ALPM enabled and VBI is disabled and flips and
> > > > pushes are
> > > > not happening.
> > > >
> > > > --v2
> > > > -Switch condition and do an early return [Jani] -Do some checks
> > > > in
> > > > compute_config [Jani] -Do not use register reads as a method of
> > > > checking states for DPKGC or delayed vblank [Jani] -Use another
> > > > way
> > > > to see is vblank interrupts are disabled or not [Jani]
> > > >
> > > > --v3
> > > > -Use has_psr to check if psr can be enabled or not for
> > > > dc5_entry
> > > > cond [Uma] - Move the dc5 entry computation to
> > > > psr_compute_config
> > > > [Jouni] -No need to change sequence of enabled and activate, so
> > > > dont
> > > > make hsw_psr1_activate return anything [Jouni] -Use has_psr to
> > > > stop
> > > > psr1 activation [Jouni] -Use lineage no. in WA -Add the display
> > > > ver
> > > > restrictions for WA
> > > >
> > > > --v4
> > > > -use more appropriate name for check_vblank_limit() [Jouni] -
> > > > Cover
> > > > the case for idle frames when dpkgc is not configured [Jouni] -
> > > > Check
> > > > psr only for edp [Jouni]
> > > >
> > > > --v5
> > > > -move psr1 handling to plane update [Jouni] -add todo for cases
> > > > when
> > > > vblank is enabled when psr enabled [Jouni] -use intel_display
> > > > instead of drm_i915_private
> > > >
> > > > --v6
> > > > -check target_dc_state [Jouni]
> > > > -fix condition in pre/post plane update [Jouni]
> > > >
> > > > WA: 22019444797
> > > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_types.h    |   3 +
> > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 112
> > > > +++++++++++++++++-
> > > >  2 files changed, 114 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 733de5edcfdb..59c81f0a3abd 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1577,6 +1577,9 @@ struct intel_psr {
> > > >  #define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE    0x40
> > > >
> > > >         u32 debug;
> > > > +       bool is_dpkgc_configured;
> > > > +       bool is_dc5_entry_possible;
> > > > +       bool is_wa_delayed_vblank_limit;
> > > >         bool sink_support;
> > > >         bool source_support;
> > > >         bool enabled;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > index b30fa067ce6e..e50b476494a0 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > @@ -26,6 +26,7 @@
> > > >  #include <drm/drm_atomic_helper.h>
> > > >  #include <drm/drm_damage_helper.h>
> > > >  #include <drm/drm_debugfs.h>
> > > > +#include <drm/drm_vblank.h>
> > > >
> > > >  #include "i915_drv.h"
> > > >  #include "i915_reg.h"
> > > > @@ -874,6 +875,78 @@ static u8 psr_compute_idle_frames(struct
> > > > intel_dp
> > > > *intel_dp)
> > > >         return idle_frames;
> > > >  }
> > > >
> > > > +static bool
> > > > +intel_psr_check_wa_delayed_vblank(const struct
> > > > drm_display_mode
> > > > +*adjusted_mode) {
> > > > +       return (adjusted_mode->crtc_vblank_start -
> > > > +adjusted_mode->crtc_vdisplay) >=3D 6; }
> > > > +
> > > > +/*
> > > > + * PKG_C_LATENCY is configured only when DISPLAY_VER >=3D 20 and
> > > > + * VRR is not enabled
> > > > + */
> > > > +static bool intel_psr_is_dpkgc_configured(struct intel_display
> > > > *display,
> > > > +                                         struct
> > > > intel_atomic_state
> > > > *state) {
> > > > +       struct intel_crtc *intel_crtc;
> > > > +       struct intel_crtc_state *crtc_state;
> > > > +       int i;
> > > > +
> > > > +       if (DISPLAY_VER(display) < 20)
> > > > +               return false;
> > > > +
> > > > +       for_each_new_intel_crtc_in_state(state, intel_crtc,
> > > > crtc_state, i) {
> > > > +               if (!intel_crtc->active)
> > > > +                       continue;
> > > > +
> > > > +               if (crtc_state->vrr.enable)
> > > > +                       return false;
> > > > +       }
> > > > +
> > > > +       return true;
> > > > +}
> > > > +
> > > > +/*
> > > > + * DC5 entry is only possible if vblank interrupt is disabled
> > > > + * and either psr1, psr2, edp 1.5 pr alpm is enabled on all
> > > > + * enabled encoders.
> > > > + */
> > > > +static bool
> > > > +intel_psr_is_dc5_entry_possible(struct intel_display *display,
> > > > +                               struct intel_atomic_state
> > > > *state) {
> > > > +       struct intel_crtc *intel_crtc;
> > > > +       struct intel_crtc_state *crtc_state;
> > > > +       int i;
> > > > +
> > > > +       if ((display->power.domains.target_dc_state &
> > > > +            DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0)
> > > > +               return false;
> > > > +
> > > > +       for_each_new_intel_crtc_in_state(state, intel_crtc,
> > > > crtc_state, i) {
> > > > +               struct drm_crtc *crtc =3D &intel_crtc->base;
> > > > +               struct drm_vblank_crtc *vblank;
> > > > +               struct intel_encoder *encoder;
> > > > +
> > > > +               if (!intel_crtc->active)
> > > > +                       continue;
> > > > +
> > > > +               vblank =3D drm_crtc_vblank_crtc(crtc);
> > > > +
> > > > +               if (vblank->enabled)
> > > > +                       return false;
> > > > +
> > > > +               if (crtc_state->has_psr)
> > > > +                       return false;
> > >
> > > It should be !has_psr
> > > > +
> > > > +               for_each_encoder_on_crtc(display->drm, crtc,
> > > > encoder)
> > > > +                       if (encoder->type !=3D INTEL_OUTPUT_EDP)
> > > > +                               return false;
> >
> > I'm not sure if we need to care about dual eDP case. One PSR and
> > another non-
> > PSR. That will return true from this function even thought it's not
> > possible. That
> > can be solved by checking CAN_PSR(intel_dp) here.
>
> So ,
>                        if (encoder->type !=3D INTEL_OUTPUT_EDP &&
> CAN_PSR(intel_dp))
>                                return false;
> >
> > > > +       }
> > > > +
> > > > +       return true;
> > > > +}
> > > > +
> > > >  static void hsw_activate_psr1(struct intel_dp *intel_dp)  {
> > > >         struct intel_display *display =3D
> > > > to_intel_display(intel_dp);
> > > > @@ -986,7
> > > > +1059,15 @@ static void hsw_activate_psr2(struct intel_dp
> > > > *intel_dp)
> > > >         u32 val =3D EDP_PSR2_ENABLE;
> > > >         u32 psr_val =3D 0;
> > > >
> > > > -       val |=3D
> > > > EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > > > +       /*
> > > > +        * Wa_22019444797
> > > > +        * TODO: Disable idle frames when vblank gets enabled
> > > > while
> > > > +        * PSR2 is enabled
> > > > +        */
> > > > +       if (DISPLAY_VER(dev_priv) !=3D 20 ||
> > > > +           !intel_dp->psr.is_dpkgc_configured ||
> > >
> > > Why ! for dpkgc, Here this can be enabled if dpkgc_configured
> > > right ?
> > >
> > > > +           intel_dp->psr.is_dc5_entry_possible)
> > > > +               val |=3D
> > > > EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
> > > >
> > > >         if (DISPLAY_VER(display) < 14 &&
> > > > !IS_ALDERLAKE_P(dev_priv))
> > > >                 val |=3D EDP_SU_TRACK_ENABLE; @@ -2667,10
> > > > +2748,20 @@
> > > > void intel_psr_pre_plane_update(struct intel_atomic_state
> > > > *state,
> > > >         const struct intel_crtc_state *new_crtc_state =3D
> > > >                 intel_atomic_get_new_crtc_state(state, crtc);
> > > >         struct intel_encoder *encoder;
> > > > +       bool dpkgc_configured =3D false, dc5_entry_possible =3D
> > > > false;
> > > > +       bool wa_delayed_vblank_limit =3D false;
> > > >
> > > >         if (!HAS_PSR(display))
> > > >                 return;
> > > >
> > > > +       if (DISPLAY_VER(display) =3D=3D 20) {
> > > > +               dpkgc_configured =3D
> > > > intel_psr_is_dpkgc_configured(display,
> > > > state);
> > > > +               dc5_entry_possible =3D
> > > > +                       intel_psr_is_dc5_entry_possible(display
> > > > ,
> > > > state);
> > > > +               wa_delayed_vblank_limit =3D
> > > > +                       intel_psr_check_wa_delayed_vblank(&new_
> > > > crtc
> > > > _state-
> > > > > hw.adjusted_mode);
> > > > +       }
> > > > +
> > > >         for_each_intel_encoder_mask_with_psr(state->base.dev,
> > > > encoder,
> > > >                                              old_crtc_state-
> > > > > uapi.encoder_mask)
> > > > {
> > > >                 struct intel_dp *intel_dp =3D
> > > > enc_to_intel_dp(encoder); @@ -
> > > > 2679,6 +2770,12 @@ void intel_psr_pre_plane_update(struct
> > > > intel_atomic_state *state,
> > > >
> > > >                 mutex_lock(&psr->lock);
> > > >
> > > > +               if (DISPLAY_VER(i915) =3D=3D 20) {
> > > > +                       psr->is_dpkgc_configured =3D
> > > > dpkgc_configured;
> > > > +                       psr->is_dc5_entry_possible =3D
> > > > dc5_entry_possible;
> > > > +                       psr->is_wa_delayed_vblank_limit =3D
> > > > wa_delayed_vblank_limit;
> > >
> > > We can drop the variables and directly assign this to psr->...
> > > and use
> > > it subsequently.
> > > Also it would be good to have this done in compute and than just
> > > use
> > > it here.
> > >
> > > > +               }
> > > > +
> > > >                 /*
> > > >                  * Reasons to disable:
> > > >                  * - PSR disabled in new state @@ -2686,6
> > > > +2783,7 @@
> > > > void intel_psr_pre_plane_update(struct intel_atomic_state
> > > > *state,
> > > >                  * - Changing between PSR versions
> > > >                  * - Region Early Transport changing
> > > >                  * - Display WA #1136: skl, bxt
> > > > +                * - Display WA_22019444797
> > > >                  */
> > > >                 needs_to_disable |=3D
> > > > intel_crtc_needs_modeset(new_crtc_state);
> > > >                 needs_to_disable |=3D !new_crtc_state->has_psr;
> > > > @@ -
> > > > 2695,6
> > > > +2793,10 @@ void intel_psr_pre_plane_update(struct
> > > > intel_atomic_state *state,
> > > >                         psr->su_region_et_enabled;
> > > >                 needs_to_disable |=3D DISPLAY_VER(i915) < 11 &&
> > > >                         new_crtc_state->wm_level_disabled;
> > > > +               /* TODO: Disable PSR1 when vblank gets enabled
> > > > while PSR1 is
> > > > enabled */
> > > > +               needs_to_disable |=3D DISPLAY_VER(display) =3D=3D 2=
0
> > > > &&
> > > > dpkgc_configured &&
> > > > +                       (wa_delayed_vblank_limit ||
> > > > dc5_entry_possible) &&
> > > > +                       !new_crtc_state->has_sel_update &&
> > > > +!new_crtc_state->has_panel_replay;
> > >
> > > Good to move this to a small helper function which can be
> > > extended if
> > > required as well.
> > > Also seems used in post_plane as well.
> > >
> > > @Hogander, Jouni Can you also ack if this handling for PSR is ok.
> >
> > This need_to_disable/keep_disabled is ok. I think there is a bug in
> > check itself:
> >
> > dc5_entry_possible should be !dc5_entry_possible
> >
> > What do you think?
> >
>
> Dc5_entry_possible returns true when we can enter dc5.
> And the condition to disable ps1 is to have a delayed_vblank > 6 or
> When dc5 can be entered so that check would be correct

"When PKG_C_LATENCY is configured (not all 1s), enable PSR1(SRD_CTL SRD
Enable =3D=3D 1) only when the transcoder has Vblank delayed less than 6
lines OR DC5 can be entered. "

I think this emphasizes suggestion from Uma, move this as a helper.
Also add explanation there.
--------

I see what went  wrong here it's should be !dc5_entry_possible will move th=
is into its own helper too

Regards,
Suraj Kandpal


--------
BR,

Jouni H=F6gander
>
> Regards,
> Suraj Kandpal
>
> > BR,
> >
> > Jouni H=F6gander
> >
> > >
> > > >                 if (psr->enabled && needs_to_disable)
> > > >                         intel_psr_disable_locked(intel_dp);
> > > > @@ -2735,6 +2837,14 @@ void intel_psr_post_plane_update(struct
> > > > intel_atomic_state *state,
> > > >                 keep_disabled |=3D DISPLAY_VER(display) < 11 &&
> > > >                         crtc_state->wm_level_disabled;
> > > >
> > > > +               /*
> > > > +                * Wa_22019444797
> > > > +                * TODO: Disable PSR1 when vblank gets enabled
> > > > while PSR1 is
> > > > enabled
> > > > +                */
> > > > +               keep_disabled |=3D DISPLAY_VER(display) =3D=3D 20 &=
&
> > > > psr-
> > > > > is_dpkgc_configured &&
> > > > +                       (psr->is_wa_delayed_vblank_limit ||
> > > > psr-
> > > > > is_dc5_entry_possible) &&
> > > > +                       !crtc_state->has_sel_update &&
> > > > !crtc_state-
> > > > > has_panel_replay;
> > > > +
> > > >                 if (!psr->enabled && !keep_disabled)
> > > >                         intel_psr_enable_locked(intel_dp,
> > > > crtc_state);
> > > >                 else if (psr->enabled && !crtc_state-
> > > > > wm_level_disabled)
> > > > --
> > > > 2.43.2
> > >
>



--_000_SN7PR11MB67504154D1E5DFE86B9BFE6BE36C2SN7PR11MB6750namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
</head>
<body>
<div><br>
</div>
<div id=3D"mail-editor-reference-message-container" dir=3D"auto"><br>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"divRplyFwdMsg" style=3D"font-size: 11pt;"><strong>From:</strong>=
 Hogander, Jouni &lt;jouni.hogander@intel.com&gt;<br>
<strong>Sent:</strong> Friday, September 20, 2024 12:11:19 pm<br>
<strong>To:</strong> Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;; Shanka=
r, Uma &lt;uma.shankar@intel.com&gt;; intel-gfx@lists.freedesktop.org &lt;i=
ntel-gfx@lists.freedesktop.org&gt;<br>
<strong>Cc:</strong> Deak, Imre &lt;imre.deak@intel.com&gt;<br>
<strong>Subject:</strong> Re: [PATCH] drm/i915/psr: Implment WA to help rea=
ch PC10<br>
</div>
<br>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText" dir=3D"auto">On Fri, 2024-09-20 at 06:29 +0000, Ka=
ndpal, Suraj wrote:<br>
&gt; <br>
&gt; <br>
&gt; &gt; -----Original Message-----<br>
&gt; &gt; From: Hogander, Jouni &lt;jouni.hogander@intel.com&gt;<br>
&gt; &gt; Sent: Friday, September 20, 2024 11:06 AM<br>
&gt; &gt; To: Shankar, Uma &lt;uma.shankar@intel.com&gt;; Kandpal, Suraj<br=
>
&gt; &gt; &lt;suraj.kandpal@intel.com&gt;; intel-gfx@lists.freedesktop.org<=
br>
&gt; &gt; Cc: Deak, Imre &lt;imre.deak@intel.com&gt;<br>
&gt; &gt; Subject: Re: [PATCH] drm/i915/psr: Implment WA to help reach PC10=
<br>
&gt; &gt; <br>
&gt; &gt; On Thu, 2024-09-19 at 12:14 +0000, Shankar, Uma wrote:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; -----Original Message-----<br>
&gt; &gt; &gt; &gt; From: Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;<br=
>
&gt; &gt; &gt; &gt; Sent: Monday, September 9, 2024 12:02 PM<br>
&gt; &gt; &gt; &gt; To: intel-gfx@lists.freedesktop.org<br>
&gt; &gt; &gt; &gt; Cc: Shankar, Uma &lt;uma.shankar@intel.com&gt;; Hogande=
r, Jouni<br>
&gt; &gt; &gt; &gt; &lt;jouni.hogander@intel.com&gt;; Deak, Imre &lt;imre.d=
eak@intel.com&gt;;<br>
&gt; &gt; &gt; &gt; Kandpal, Suraj &lt;suraj.kandpal@intel.com&gt;<br>
&gt; &gt; &gt; &gt; Subject: [PATCH] drm/i915/psr: Implment WA to help reac=
h PC10<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Not: Typo in implement<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; To reach PC10 when PKG_C_LATENCY is configure we must d=
o the<br>
&gt; &gt; &gt; &gt; following things<br>
&gt; &gt; &gt; &gt; 1) Enter PSR1 only when delayed_vblank &lt; 6 lines and=
 DC5 can be<br>
&gt; &gt; &gt; &gt; entered<br>
&gt; &gt; &gt; &gt; 2) Allow PSR2 deep sleep when DC5 can be entered<br>
&gt; &gt; &gt; &gt; 3) DC5 can be entered when all transocoder have either =
PSR1,<br>
&gt; &gt; &gt; &gt; PSR2 or<br>
&gt; &gt; &gt; &gt; eDP 1.5 PR ALPM enabled and VBI is disabled and flips a=
nd<br>
&gt; &gt; &gt; &gt; pushes are<br>
&gt; &gt; &gt; &gt; not happening.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; --v2<br>
&gt; &gt; &gt; &gt; -Switch condition and do an early return [Jani] -Do som=
e checks<br>
&gt; &gt; &gt; &gt; in<br>
&gt; &gt; &gt; &gt; compute_config [Jani] -Do not use register reads as a m=
ethod of<br>
&gt; &gt; &gt; &gt; checking states for DPKGC or delayed vblank [Jani] -Use=
 another<br>
&gt; &gt; &gt; &gt; way<br>
&gt; &gt; &gt; &gt; to see is vblank interrupts are disabled or not [Jani]<=
br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; --v3<br>
&gt; &gt; &gt; &gt; -Use has_psr to check if psr can be enabled or not for<=
br>
&gt; &gt; &gt; &gt; dc5_entry<br>
&gt; &gt; &gt; &gt; cond [Uma] - Move the dc5 entry computation to<br>
&gt; &gt; &gt; &gt; psr_compute_config<br>
&gt; &gt; &gt; &gt; [Jouni] -No need to change sequence of enabled and acti=
vate, so<br>
&gt; &gt; &gt; &gt; dont<br>
&gt; &gt; &gt; &gt; make hsw_psr1_activate return anything [Jouni] -Use has=
_psr to<br>
&gt; &gt; &gt; &gt; stop<br>
&gt; &gt; &gt; &gt; psr1 activation [Jouni] -Use lineage no. in WA -Add the=
 display<br>
&gt; &gt; &gt; &gt; ver<br>
&gt; &gt; &gt; &gt; restrictions for WA<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; --v4<br>
&gt; &gt; &gt; &gt; -use more appropriate name for check_vblank_limit() [Jo=
uni] -<br>
&gt; &gt; &gt; &gt; Cover<br>
&gt; &gt; &gt; &gt; the case for idle frames when dpkgc is not configured [=
Jouni] -<br>
&gt; &gt; &gt; &gt; Check<br>
&gt; &gt; &gt; &gt; psr only for edp [Jouni]<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; --v5<br>
&gt; &gt; &gt; &gt; -move psr1 handling to plane update [Jouni] -add todo f=
or cases<br>
&gt; &gt; &gt; &gt; when<br>
&gt; &gt; &gt; &gt; vblank is enabled when psr enabled [Jouni] -use intel_d=
isplay<br>
&gt; &gt; &gt; &gt; instead of drm_i915_private<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; --v6<br>
&gt; &gt; &gt; &gt; -check target_dc_state [Jouni]<br>
&gt; &gt; &gt; &gt; -fix condition in pre/post plane update [Jouni]<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; WA: 22019444797<br>
&gt; &gt; &gt; &gt; Signed-off-by: Suraj Kandpal &lt;suraj.kandpal@intel.co=
m&gt;<br>
&gt; &gt; &gt; &gt; ---<br>
&gt; &gt; &gt; &gt; &nbsp;.../drm/i915/display/intel_display_types.h&nbsp;&=
nbsp;&nbsp; |&nbsp;&nbsp; 3 +<br>
&gt; &gt; &gt; &gt; &nbsp;drivers/gpu/drm/i915/display/intel_psr.c&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; | 112<br>
&gt; &gt; &gt; &gt; +++++++++++++++++-<br>
&gt; &gt; &gt; &gt; &nbsp;2 files changed, 114 insertions(+), 1 deletion(-)=
<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_display=
_types.h<br>
&gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_display_types.h<br=
>
&gt; &gt; &gt; &gt; index 733de5edcfdb..59c81f0a3abd 100644<br>
&gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_display_types.=
h<br>
&gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_display_types.=
h<br>
&gt; &gt; &gt; &gt; @@ -1577,6 +1577,9 @@ struct intel_psr {<br>
&gt; &gt; &gt; &gt; &nbsp;#define I915_PSR_DEBUG_PANEL_REPLAY_DISABLE&nbsp;=
&nbsp;&nbsp;&nbsp;0x40<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u32 deb=
ug;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool is_dpkg=
c_configured;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool is_dc5_=
entry_possible;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool is_wa_d=
elayed_vblank_limit;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool si=
nk_support;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool so=
urce_support;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool en=
abled;<br>
&gt; &gt; &gt; &gt; diff --git a/drivers/gpu/drm/i915/display/intel_psr.c<b=
r>
&gt; &gt; &gt; &gt; b/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; &gt; index b30fa067ce6e..e50b476494a0 100644<br>
&gt; &gt; &gt; &gt; --- a/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; &gt; +++ b/drivers/gpu/drm/i915/display/intel_psr.c<br>
&gt; &gt; &gt; &gt; @@ -26,6 +26,7 @@<br>
&gt; &gt; &gt; &gt; &nbsp;#include &lt;drm/drm_atomic_helper.h&gt;<br>
&gt; &gt; &gt; &gt; &nbsp;#include &lt;drm/drm_damage_helper.h&gt;<br>
&gt; &gt; &gt; &gt; &nbsp;#include &lt;drm/drm_debugfs.h&gt;<br>
&gt; &gt; &gt; &gt; +#include &lt;drm/drm_vblank.h&gt;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;#include &quot;i915_drv.h&quot;<br>
&gt; &gt; &gt; &gt; &nbsp;#include &quot;i915_reg.h&quot;<br>
&gt; &gt; &gt; &gt; @@ -874,6 +875,78 @@ static u8 psr_compute_idle_frames(=
struct<br>
&gt; &gt; &gt; &gt; intel_dp<br>
&gt; &gt; &gt; &gt; *intel_dp)<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return =
idle_frames;<br>
&gt; &gt; &gt; &gt; &nbsp;}<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +static bool<br>
&gt; &gt; &gt; &gt; +intel_psr_check_wa_delayed_vblank(const struct<br>
&gt; &gt; &gt; &gt; drm_display_mode<br>
&gt; &gt; &gt; &gt; +*adjusted_mode) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return (adju=
sted_mode-&gt;crtc_vblank_start -<br>
&gt; &gt; &gt; &gt; +adjusted_mode-&gt;crtc_vdisplay) &gt;=3D 6; }<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; &gt; + * PKG_C_LATENCY is configured only when DISPLAY_VER &=
gt;=3D 20 and<br>
&gt; &gt; &gt; &gt; + * VRR is not enabled<br>
&gt; &gt; &gt; &gt; + */<br>
&gt; &gt; &gt; &gt; +static bool intel_psr_is_dpkgc_configured(struct intel=
_display<br>
&gt; &gt; &gt; &gt; *display,<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; struct<br>
&gt; &gt; &gt; &gt; intel_atomic_state<br>
&gt; &gt; &gt; &gt; *state) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel=
_crtc *intel_crtc;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel=
_crtc_state *crtc_state;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (DISPLAY_=
VER(display) &lt; 20)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return false;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for_each_new=
_intel_crtc_in_state(state, intel_crtc,<br>
&gt; &gt; &gt; &gt; crtc_state, i) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!intel_crtc-&gt;active)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;continue;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (crtc_state-&gt;vrr.enable)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;return false;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return true;=
<br>
&gt; &gt; &gt; &gt; +}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +/*<br>
&gt; &gt; &gt; &gt; + * DC5 entry is only possible if vblank interrupt is d=
isabled<br>
&gt; &gt; &gt; &gt; + * and either psr1, psr2, edp 1.5 pr alpm is enabled o=
n all<br>
&gt; &gt; &gt; &gt; + * enabled encoders.<br>
&gt; &gt; &gt; &gt; + */<br>
&gt; &gt; &gt; &gt; +static bool<br>
&gt; &gt; &gt; &gt; +intel_psr_is_dc5_entry_possible(struct intel_display *=
display,<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel_atomi=
c_state<br>
&gt; &gt; &gt; &gt; *state) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel=
_crtc *intel_crtc;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel=
_crtc_state *crtc_state;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((display=
-&gt;power.domains.target_dc_state &amp;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; DC_STATE_EN_UPTO_DC5_DC6_MASK) =3D=3D 0)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return false;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for_each_new=
_intel_crtc_in_state(state, intel_crtc,<br>
&gt; &gt; &gt; &gt; crtc_state, i) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct drm_crtc *crtc =3D &amp;intel_cr=
tc-&gt;base;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct drm_vblank_crtc *vblank;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel_encoder *encoder;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!intel_crtc-&gt;active)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;continue;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;vblank =3D drm_crtc_vblank_crtc(crtc);<=
br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (vblank-&gt;enabled)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;return false;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (crtc_state-&gt;has_psr)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;return false;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; It should be !has_psr<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for_each_encoder_on_crtc(display-&gt;dr=
m, crtc,<br>
&gt; &gt; &gt; &gt; encoder)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (encoder-&gt;type !=3D INTEL_OUTPUT_EDP)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return false;<br>
&gt; &gt; <br>
&gt; &gt; I'm not sure if we need to care about dual eDP case. One PSR and<=
br>
&gt; &gt; another non-<br>
&gt; &gt; PSR. That will return true from this function even thought it's n=
ot<br>
&gt; &gt; possible. That<br>
&gt; &gt; can be solved by checking CAN_PSR(intel_dp) here.<br>
&gt; <br>
&gt; So ,<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if (encoder-=
&gt;type !=3D INTEL_OUTPUT_EDP &amp;&amp;<br>
&gt; CAN_PSR(intel_dp))<br>
&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; return false;<br>
&gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return true;=
<br>
&gt; &gt; &gt; &gt; +}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &nbsp;static void hsw_activate_psr1(struct intel_dp *in=
tel_dp)&nbsp; {<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct =
intel_display *display =3D<br>
&gt; &gt; &gt; &gt; to_intel_display(intel_dp);<br>
&gt; &gt; &gt; &gt; @@ -986,7<br>
&gt; &gt; &gt; &gt; +1059,15 @@ static void hsw_activate_psr2(struct intel_=
dp<br>
&gt; &gt; &gt; &gt; *intel_dp)<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u32 val=
 =3D EDP_PSR2_ENABLE;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u32 psr=
_val =3D 0;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;val |=3D<br>
&gt; &gt; &gt; &gt; EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp))=
;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Wa_220194=
44797<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * TODO: Dis=
able idle frames when vblank gets enabled<br>
&gt; &gt; &gt; &gt; while<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * PSR2 is e=
nabled<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (DISPLAY_=
VER(dev_priv) !=3D 20 ||<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; !intel_dp-&gt;psr.is_dpkgc_configured ||<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Why ! for dpkgc, Here this can be enabled if dpkgc_configure=
d<br>
&gt; &gt; &gt; right ?<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; intel_dp-&gt;psr.is_dc5_entry_possible)<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;val |=3D<br>
&gt; &gt; &gt; &gt; EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp))=
;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (DIS=
PLAY_VER(display) &lt; 14 &amp;&amp;<br>
&gt; &gt; &gt; &gt; !IS_ALDERLAKE_P(dev_priv))<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;val |=3D EDP_SU_TRACK_ENABLE; @@ -=
2667,10<br>
&gt; &gt; &gt; &gt; +2748,20 @@<br>
&gt; &gt; &gt; &gt; void intel_psr_pre_plane_update(struct intel_atomic_sta=
te<br>
&gt; &gt; &gt; &gt; *state,<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const s=
truct intel_crtc_state *new_crtc_state =3D<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;intel_atomic_get_new_crtc_state(st=
ate, crtc);<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct =
intel_encoder *encoder;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool dpkgc_c=
onfigured =3D false, dc5_entry_possible =3D<br>
&gt; &gt; &gt; &gt; false;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool wa_dela=
yed_vblank_limit =3D false;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!HA=
S_PSR(display))<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (DISPLAY_=
VER(display) =3D=3D 20) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dpkgc_configured =3D<br>
&gt; &gt; &gt; &gt; intel_psr_is_dpkgc_configured(display,<br>
&gt; &gt; &gt; &gt; state);<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dc5_entry_possible =3D<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;intel_psr_is_dc5_entry_possible(display<br>
&gt; &gt; &gt; &gt; ,<br>
&gt; &gt; &gt; &gt; state);<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wa_delayed_vblank_limit =3D<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;intel_psr_check_wa_delayed_vblank(&amp;new_<br>
&gt; &gt; &gt; &gt; crtc<br>
&gt; &gt; &gt; &gt; _state-<br>
&gt; &gt; &gt; &gt; &gt; hw.adjusted_mode);<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for_eac=
h_intel_encoder_mask_with_psr(state-&gt;base.dev,<br>
&gt; &gt; &gt; &gt; encoder,<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; old_crtc_state-=
<br>
&gt; &gt; &gt; &gt; &gt; uapi.encoder_mask)<br>
&gt; &gt; &gt; &gt; {<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct intel_dp *intel_dp =3D<br>
&gt; &gt; &gt; &gt; enc_to_intel_dp(encoder); @@ -<br>
&gt; &gt; &gt; &gt; 2679,6 +2770,12 @@ void intel_psr_pre_plane_update(stru=
ct<br>
&gt; &gt; &gt; &gt; intel_atomic_state *state,<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mutex_lock(&amp;psr-&gt;lock);<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (DISPLAY_VER(i915) =3D=3D 20) {<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;psr-&gt;is_dpkgc_configured =3D<br>
&gt; &gt; &gt; &gt; dpkgc_configured;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;psr-&gt;is_dc5_entry_possible =3D<br>
&gt; &gt; &gt; &gt; dc5_entry_possible;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;psr-&gt;is_wa_delayed_vblank_limit =3D<br>
&gt; &gt; &gt; &gt; wa_delayed_vblank_limit;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; We can drop the variables and directly assign this to psr-&g=
t;...<br>
&gt; &gt; &gt; and use<br>
&gt; &gt; &gt; it subsequently.<br>
&gt; &gt; &gt; Also it would be good to have this done in compute and than =
just<br>
&gt; &gt; &gt; use<br>
&gt; &gt; &gt; it here.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Reasons to disable:<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - PSR disabled in new state @@ =
-2686,6<br>
&gt; &gt; &gt; &gt; +2783,7 @@<br>
&gt; &gt; &gt; &gt; void intel_psr_pre_plane_update(struct intel_atomic_sta=
te<br>
&gt; &gt; &gt; &gt; *state,<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - Changing between PSR versions=
<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - Region Early Transport changi=
ng<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - Display WA #1136: skl, bxt<br=
>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * - Display WA_22019444797<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;needs_to_disable |=3D<br>
&gt; &gt; &gt; &gt; intel_crtc_needs_modeset(new_crtc_state);<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;needs_to_disable |=3D !new_crtc_st=
ate-&gt;has_psr;<br>
&gt; &gt; &gt; &gt; @@ -<br>
&gt; &gt; &gt; &gt; 2695,6<br>
&gt; &gt; &gt; &gt; +2793,10 @@ void intel_psr_pre_plane_update(struct<br>
&gt; &gt; &gt; &gt; intel_atomic_state *state,<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;psr-&gt;su_region_et_enabled;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;needs_to_disable |=3D DISPLAY_VER(=
i915) &lt; 11 &amp;&amp;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;new_crtc_state-&gt;wm_level_disabled;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* TODO: Disable PSR1 when vblank gets =
enabled<br>
&gt; &gt; &gt; &gt; while PSR1 is<br>
&gt; &gt; &gt; &gt; enabled */<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;needs_to_disable |=3D DISPLAY_VER(displ=
ay) =3D=3D 20<br>
&gt; &gt; &gt; &gt; &amp;&amp;<br>
&gt; &gt; &gt; &gt; dpkgc_configured &amp;&amp;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;(wa_delayed_vblank_limit ||<br>
&gt; &gt; &gt; &gt; dc5_entry_possible) &amp;&amp;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;!new_crtc_state-&gt;has_sel_update &amp;&amp;<br>
&gt; &gt; &gt; &gt; +!new_crtc_state-&gt;has_panel_replay;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Good to move this to a small helper function which can be<br=
>
&gt; &gt; &gt; extended if<br>
&gt; &gt; &gt; required as well.<br>
&gt; &gt; &gt; Also seems used in post_plane as well.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; @Hogander, Jouni Can you also ack if this handling for PSR i=
s ok.<br>
&gt; &gt; <br>
&gt; &gt; This need_to_disable/keep_disabled is ok. I think there is a bug =
in<br>
&gt; &gt; check itself:<br>
&gt; &gt; <br>
&gt; &gt; dc5_entry_possible should be !dc5_entry_possible<br>
&gt; &gt; <br>
&gt; &gt; What do you think?<br>
&gt; &gt; <br>
&gt; <br>
&gt; Dc5_entry_possible returns true when we can enter dc5.<br>
&gt; And the condition to disable ps1 is to have a delayed_vblank &gt; 6 or=
<br>
&gt; When dc5 can be entered so that check would be correct<br>
<br>
&quot;When PKG_C_LATENCY is configured (not all 1s), enable PSR1(SRD_CTL SR=
D<br>
Enable =3D=3D 1) only when the transcoder has Vblank delayed less than 6<br=
>
lines OR DC5 can be entered. &quot;<br>
<br>
I think this emphasizes suggestion from Uma, move this as a helper.<br>
Also add explanation there.</div>
<div class=3D"PlainText" dir=3D"auto">--------</div>
<div class=3D"PlainText" dir=3D"auto"><br>
</div>
<div class=3D"PlainText" dir=3D"auto">I see what went&nbsp; wrong here it's=
 should be !dc5_entry_possible will move this into its own helper too</div>
<div class=3D"PlainText" dir=3D"auto"><br>
</div>
<div class=3D"PlainText" dir=3D"auto">Regards,</div>
<div class=3D"PlainText" dir=3D"auto">Suraj Kandpal<br>
<br>
<br>
--------<br>
BR,<br>
<br>
Jouni H=F6gander<br>
&gt; <br>
&gt; Regards,<br>
&gt; Suraj Kandpal<br>
&gt; <br>
&gt; &gt; BR,<br>
&gt; &gt; <br>
&gt; &gt; Jouni H=F6gander<br>
&gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (psr-&gt;enabled &amp;&amp; nee=
ds_to_disable)<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;intel_psr_disable_locked(intel_dp);<br>
&gt; &gt; &gt; &gt; @@ -2735,6 +2837,14 @@ void intel_psr_post_plane_update=
(struct<br>
&gt; &gt; &gt; &gt; intel_atomic_state *state,<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;keep_disabled |=3D DISPLAY_VER(dis=
play) &lt; 11 &amp;&amp;<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;crtc_state-&gt;wm_level_disabled;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Wa_22019444797<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * TODO: Disable PSR1 when vblank gets =
enabled<br>
&gt; &gt; &gt; &gt; while PSR1 is<br>
&gt; &gt; &gt; &gt; enabled<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;keep_disabled |=3D DISPLAY_VER(display)=
 =3D=3D 20 &amp;&amp;<br>
&gt; &gt; &gt; &gt; psr-<br>
&gt; &gt; &gt; &gt; &gt; is_dpkgc_configured &amp;&amp;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;(psr-&gt;is_wa_delayed_vblank_limit ||<br>
&gt; &gt; &gt; &gt; psr-<br>
&gt; &gt; &gt; &gt; &gt; is_dc5_entry_possible) &amp;&amp;<br>
&gt; &gt; &gt; &gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;!crtc_state-&gt;has_sel_update &amp;&amp;<br>
&gt; &gt; &gt; &gt; !crtc_state-<br>
&gt; &gt; &gt; &gt; &gt; has_panel_replay;<br>
&gt; &gt; &gt; &gt; +<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!psr-&gt;enabled &amp;&amp; !k=
eep_disabled)<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;intel_psr_enable_locked(intel_dp,<br>
&gt; &gt; &gt; &gt; crtc_state);<br>
&gt; &gt; &gt; &gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (psr-&gt;enabled &amp;&amp=
; !crtc_state-<br>
&gt; &gt; &gt; &gt; &gt; wm_level_disabled)<br>
&gt; &gt; &gt; &gt; --<br>
&gt; &gt; &gt; &gt; 2.43.2<br>
&gt; &gt; &gt; <br>
&gt; <br>
<br>
</div>
</span></font><br>
</div>
</body>
</html>

--_000_SN7PR11MB67504154D1E5DFE86B9BFE6BE36C2SN7PR11MB6750namp_--
