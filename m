Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJEdD8MB82lswgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:16:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EDF49E81B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 09:16:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC02510F232;
	Thu, 30 Apr 2026 07:16:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVMv1yvG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A004010E00F;
 Thu, 30 Apr 2026 07:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777533375; x=1809069375;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zZaxC3WeNvVigYrc4prZq2kWO5AXb7J0K6AEGzxTNPs=;
 b=YVMv1yvGxsBH2U4UyoPeVPONBgu3xiCmYDRAIWlKsfq+p6e9b/hhXohs
 qbqwuk5kSHAob+1RmfPgKdNjdKe03baoMj8sU48ilr5i10r1wz/kqLTgd
 D3BFsR8h0ac7xffhoJK7Hjav42aIuPZhtyGia7KCgZWMs6K3SYcJLSYzd
 UMtX+71bzZO19qhgm4Aeg6z+xOXq28bs6O/57jHLrVerwlJQ/QvaHb/bY
 CaE0/ycwZIE0mzXWmTaiZGvzM3x2M6RRL1ebnnT3zZC2H4ybUJvN6H9se
 qLTIQk1of9F1CAtLpDVd+42lfbBkb+WrqjJsomsuuDEAjzUNDoXCDyv77 Q==;
X-CSE-ConnectionGUID: dyffb+w6RFqeUm+GF6BVyQ==
X-CSE-MsgGUID: Drvw9gKfRQa9zHg7q99LoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78342599"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="78342599"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:16:14 -0700
X-CSE-ConnectionGUID: XHnVnimyTOKuPflsvCGyXg==
X-CSE-MsgGUID: 1GatXORrSb6L/tIMWPWycg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="231367377"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 00:16:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:16:12 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 00:16:12 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 00:16:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=USW0tzrKynu1LbyySFPvp/fQaf8GuLsZFcylL9NjJLxpYKuJKIpk3SPnP5Ni8CTPOjinWVW0PbovAqGQAe1gb/mPa6vsbptRLjt6czGV/7ZyZRl7x1OcdKbZJTPt+RLzX7XAyURpm0LwqQS+v7DwC/4l2Q+2wPilLbjt06+L7he/uJgRRbdI0dSaofUUu85apCse951XZKEMGnV4AfnCYGjP3BIWsk3KozbcWX+oaMxGT6CAUwJcCdz3j/PB9htpopzIXm9WipG7CfWCLj2HbSqHknvHdVssJ73cgksc4SfbRx9E3bGzsucQisToefoDLT48e2pxFtHiLUcUIJe57Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FBkxF/8XvsW+ne5YqfL4KbU3TWWhk2FjzEr/17vJbiw=;
 b=hxEX9InnrbsftIDnjZKNMSWH6FQOuOox0j1gZxiWHIJOHBDZnFwrN2zF2nalcSrP3t0JrcibfsmFsu7faoxUCe55SqNn1iPZC1KNj2Jqk0Talfvoi6DxAf/IKvDAK+a/j0FWl8T2YHjRf2R7TzJ3gxU+evYjwR2dJoPcHCbkVsVzHYrQXTPWVnh/YdDgGN0RgnaE55rKrsBprC4r3+5fbnYIbee/15uY5mnEmuhOgbiuFXiLMIIZzoHdhy7Iq4RH8N974ZwUAyOSIqyKWXuPkhq82cpjTL2lvdeQiyEnyliBGnV+G1BthrWqMhKAWwYcmKxdU/RYXxHytda54zGygg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 SAWPR11MB9569.namprd11.prod.outlook.com (2603:10b6:806:4e4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.15; Thu, 30 Apr
 2026 07:16:09 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%6]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 07:16:08 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "Shankar, Uma" <uma.shankar@intel.com>,
 Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
Subject: RE: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Topic: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
Thread-Index: AQHcymygLFle3YrMBUK3c+JVuOmCk7XekaCAgAQ3pTCAAEtSAIAJESQggABjuwCAAADesIAJgL+AgAE+zzA=
Date: Thu, 30 Apr 2026 07:16:08 +0000
Message-ID: <DS0PR11MB8049D6BF96D604286DD36660F9352@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260412103712.4021213-1-animesh.manna@intel.com>
 <20260412103712.4021213-4-animesh.manna@intel.com>
 <d9c82dabf89fb932b3c10aa0ee768fdda181c396@intel.com>
 <DS0PR11MB804961654148D027B4F03601F9202@DS0PR11MB8049.namprd11.prod.outlook.com>
 <aeIK8oEzWAkDJw5i@intel.com>
 <SN7PR11MB8042195650F92982C02967A8F92A2@SN7PR11MB8042.namprd11.prod.outlook.com>
 <aen5uNCEibNR7IGP@intel.com>
 <DS0PR11MB80493A1ECB27DC4548EBA882F92A2@DS0PR11MB8049.namprd11.prod.outlook.com>
 <afHzL3Sri5Tc_roE@intel.com>
In-Reply-To: <afHzL3Sri5Tc_roE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|SAWPR11MB9569:EE_
x-ms-office365-filtering-correlation-id: 1b5e3fd2-a56b-4226-085e-08dea68859f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: uxGAIUV2YqZFiGRWvxeAbWJIyyDIp9qSSWzMTagdxfjMitnDbJ9Ua7qbB58ruzh5KxLjEfmxbBZEP6Zn9u7uiNUZGTPK2FyPdvgW3BZpNRmes4DKMVF0iMvcwSIlzOGxGqhZaQP+f3hCqM5DBSri3vWgUVxfLu1ib3GzXCT462CV8WWn50hiMku2GoZgRneA9GNGs6rtOCz5TZNzngQ6ofgZfJEkuaV0naFRrGEyKkKvd1CR2sdyz+dMt6oRBc0IcT08XXyTPA+V7AqK2A2yxH1Eamuej/+cpHGa4avCldY6mwLKkafS0BiP6w1V1k4g+HPKjeafOUbjHOeICxPTqC2Pg1oi8Ws0zX2mAU3sWlJLg2zZcHmolUN2fm0QMv1ExJGIxPevA/tNTCJHSaaxtoVmFsc+jlsWLjq7XcImyHkzzoPlf523lSheYRHey3gki3lfkNPMgyNCUzaedv6h4V8msq9Mlqt1LxQRyo6rs2k3qBmCSqmh05rcF3cjf/2XlURKHZmptyQXRKVZD1QOWBZLUCAu9wZmXa9MlqLnpVAfuqb+HqSdOx/oHXvSCUdvefKGU0vKuElpK6+KCeoEZnEg0JSrXllaQALnowHchlYu+31h+bOGb7AxzCCr6FTa8IuJzBSjFc1Wha39Z5Qq9eoXxhAc1hE8Z9ciwLd+H8tS/fXlWclpIyJevZc+iCpB7M89bMYffEMBIrcNabFM0/HfOrFTpKpTxHcTTBzj/W4RF+5WKXx6Jr+76nQW3eTMhFTzwwEnQYCGZ015FGQ74kinnWAKWLEDLJIm+UnEgcY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1W9kn77QaIaNyZjgPQIqfzWgcQZSIPOsOZVN2PTZuzwYOLAw/1Ex/253BM?=
 =?iso-8859-1?Q?kU8J7lSGyB1NSpYdNYX7QtSnBSPyhpl6N/u3TdjN7HOEdM5Z7mPH9+XGgz?=
 =?iso-8859-1?Q?IggcBexO0ay/B5PNyNmzuaet5xB7j2O9mnek8qz6N7aQjKbC49wuqX10bR?=
 =?iso-8859-1?Q?EBDB9kq76tTu0LtdwKxI15mfHdms4a2dXEbKyRRpP7HHRR4hCzt60/JemW?=
 =?iso-8859-1?Q?K8drliFeqqmCSZbhP9KguaGOp6T+ApeMJEfxeUEVV+bv8GJ+XjZk6Qx18N?=
 =?iso-8859-1?Q?+LwuV7pzHfnt/Cc8hxLMeSjcmUTgr4E/0TVOUxx4TJxBtXBtmmIouWV/x1?=
 =?iso-8859-1?Q?ohRL6jANiBuXgm4Vy2QwWwExyoWejYqVhUbxSOzP70xFrqTzmsKPHNbSzJ?=
 =?iso-8859-1?Q?tbrNMbvyUgLxcjRZUeT65nNjutL4p68KrH4LJG3uE1xIRpTIznc0LOwFNt?=
 =?iso-8859-1?Q?4cvz153qOuxU5u0pHM/wa4LGJI1AzpnHBRBYyKMgVB1ma14SJ20liGYhJz?=
 =?iso-8859-1?Q?QEvdxUgm1Qt8Qbjn1/gu6OaeT415O1wNmO4hHqezz0HvtdhjOwnl8oMI27?=
 =?iso-8859-1?Q?6vnyJMoJ0+uGzaHASmc58a8mphFngMHnE+hPE7/+46Xg94Gn2HOVImbjM4?=
 =?iso-8859-1?Q?C12swcEhwzlvfRGbzruP8cJ97hRdwvkTONXymZLanZMj2bvf/bNTI4kQg6?=
 =?iso-8859-1?Q?9K4KZjhhJ/Uk0qqHdZo5ZRoxl2CjEK/IXYHo7lZGd0RDK8pA3CWjCh5IDe?=
 =?iso-8859-1?Q?7+TU2TZBVcaYfTpEch2ozsJFC/T/W86IgX4kI9k9MXTLZoq9EQfjMRAvho?=
 =?iso-8859-1?Q?3Y55vyeVZNNtxjj8uDNTHhoEuBTfk3JXFAHt26ka5MptPKk7gbVK2feLpb?=
 =?iso-8859-1?Q?1HyANOsO5CIBToFhNPHL5m1A10gF2c/vymAsYLYndsxzDzBdxrBpgAB5Ly?=
 =?iso-8859-1?Q?WUfGIJzNItHboD3uFQHUJE9zwccv7BLL/bJa/lVQqWhdMfoBNIQmrv3jxQ?=
 =?iso-8859-1?Q?qK4e451kP1EJ4P5oGaL+a0Ne2tyqdGN3mPCdanjRsA84No02xdIQA+jEFN?=
 =?iso-8859-1?Q?5jlkV0APY3a6Xw+trIgPlzjUhzNkEFxnb3SpvL6Eba1PEMj4zbem10Ynny?=
 =?iso-8859-1?Q?mnz23Qug8shVSKNtAVmJKAC/zFwimSryUlsfTtFbZG+C4DxyMqe1BvjEnQ?=
 =?iso-8859-1?Q?ZoOHQsBgB/CMxj9bdBd2zRcvQgrzH32Kco2k2LeHUOWDQK4LwsjJU1Suhu?=
 =?iso-8859-1?Q?4z3zw5Hoo3JBtNRrZgvdq+H8cRM4xscXaP5fT0zET6zQHancznZuG4PXqL?=
 =?iso-8859-1?Q?DneOvz5GbrYKX80fgsd3uzmEA9aXy3Hy4kLLgHxv93oWxOtVBFzHklkzbX?=
 =?iso-8859-1?Q?Ewo9u6uwCKs+WPL+88ZRbA4hTy1HnurvJRT5gJfN1I7WqTicqvV8PrmCWf?=
 =?iso-8859-1?Q?p8sxsdbYIjlyrDPbXsMSxr5rRzcon58MVcuH6bB8tJAYl0Il9UoVBAk5dX?=
 =?iso-8859-1?Q?IbXEtaIExhbWF14xg8UgKrcV+c8PfibEs4srYZ6hLnnWv1yF9bvZMaKRaC?=
 =?iso-8859-1?Q?SbeVMab3m5zDV6zXk8VSEG1E4GGOKKw7j7GswExSiOyfzbYKbfKHYlursu?=
 =?iso-8859-1?Q?wHc4d95m7gAE/4eX7BENuguGWNvEYS9M18mgTXhOaoDIsisKJoq4x7F9k1?=
 =?iso-8859-1?Q?dylUblLOC7Rjvvl+Q2KQg28FIiVnrbu80DGj1ReX+yC6NoW2YPMEQ0p5aw?=
 =?iso-8859-1?Q?mLhpDp4CMwwfvM1nnjOwPo00m0j8zd3qZ5WLMQI3AdBX9htpWi1y1/dJZb?=
 =?iso-8859-1?Q?0keMfaXzLw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: r0hx/nVru/39wjr/5HpQDU3ZHEAXng3EEXfO9CS8q1dRZHejyzv3p5OXUjo7c5tXGTgZV0pb46963RtTaiu1JvPJgaKmaNN23F7l7/j/3qMYSa7hWse2yhTw56Q9QkC9WmfT5/UK0P733wjX2cAwDP1VnU7bKmSDSMamFodQUDqB9j0yXY8EAYvTQzW4iGP7lc2svOh3xVJwP2CvCG4+FnZF0LJrCr229yFqO+7b7bDb5+KZtCEHHiCelcIYysc37tMyPVhwUC6Gzc4KCkp2Q2V3TK9vZb0V2kSsAZFWHcNaRJQ2uz18HG4Lx2pqjpBWOCyO85pPKJmNJ8fqEcWCeQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b5e3fd2-a56b-4226-085e-08dea68859f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 07:16:08.8073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VquK3ftMK4J2oz8LbZEArYQWMYjs/S3jsWHAjBHeoZzM1+Jt7o246RIsB+HBPLbxYsZmmU3UHBsOVAVXAum42g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9569
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
X-Rspamd-Queue-Id: 88EDF49E81B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, April 29, 2026 5:32 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
>=20
> On Thu, Apr 23, 2026 at 11:07:55AM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Thursday, April 23, 2026 4:22 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>
> > > Cc: Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop=
.org;
> > > intel-xe@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>;
> > > Dibin Moolakadan Subrahmanian
> > > <dibin.moolakadan.subrahmanian@intel.com>
> > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > >
> > > On Thu, Apr 23, 2026 at 04:55:55AM +0000, Manna, Animesh wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: Friday, April 17, 2026 3:57 PM
> > > > > To: Manna, Animesh <animesh.manna@intel.com>
> > > > > Cc: Nikula, Jani <jani.nikula@intel.com>;
> > > > > intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org;
> > > > > Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > Subrahmanian
> > > > > <dibin.moolakadan.subrahmanian@intel.com>
> > > > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for CMTG
> > > > >
> > > > > On Fri, Apr 17, 2026 at 06:03:52AM +0000, Manna, Animesh wrote:
> > > > > >
> > > > > >
> > > > > > > -----Original Message-----
> > > > > > > From: Nikula, Jani <jani.nikula@intel.com>
> > > > > > > Sent: Tuesday, April 14, 2026 7:03 PM
> > > > > > > To: Manna, Animesh <animesh.manna@intel.com>; intel-
> > > > > > > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > > > > > Cc: Shankar, Uma <uma.shankar@intel.com>; Dibin Moolakadan
> > > > > > > Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>;
> > > Manna,
> > > > > > > Animesh <animesh.manna@intel.com>
> > > > > > > Subject: Re: [PATCH v4 03/13] drm/i915/cmtg: Set timings for
> > > > > > > CMTG
> > > > > > >
> > > > > > > On Sun, 12 Apr 2026, Animesh Manna
> <animesh.manna@intel.com>
> > > > > wrote:
> > > > > > > > Timing registers are separate for CMTG, read transcoder
> > > > > > > > register and program cmtg transcoder with those values.
> > > > > > > >
> > > > > > > > v2:
> > > > > > > > - Use sw state instead of reading directly from hardware.
> > > > > > > > [Jani]
> > > > > > > > - Move set_timing later after encoder enable. [Dibin]
> > > > > > > >
> > > > > > > > v3:
> > > > > > > > - Replace id with trans. [Jani]
> > > > > > > > - Program cmtg set_timing() along with primary transcoder
> timing.
> > > > > > > >
> > > > > > > > v4:
> > > > > > > > - Use _MMIO_TRANS() for cmtg registers instead of direct
> > > > > > > > multiplication. [Jani]
> > > > > > > >
> > > > > > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > > > > > ---
> > > > > > > >  drivers/gpu/drm/i915/display/intel_cmtg.c     | 61
> > > > > ++++++++++++++++++-
> > > > > > > >  drivers/gpu/drm/i915/display/intel_cmtg.h     |  3 +
> > > > > > > >  .../gpu/drm/i915/display/intel_cmtg_regs.h    | 31 +++++++=
+++
> > > > > > > >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > > > > > > >  4 files changed, 98 insertions(+), 1 deletion(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > > > index 403f9e10a8dc..a3db1368bd83 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> > > > > > > > @@ -4,7 +4,6 @@
> > > > > > > >   */
> > > > > > > >
> > > > > > > >  #include <linux/string_choices.h> -#include <linux/types.h=
>
> > > > > > > >
> > > > > > > >  #include <drm/drm_device.h>
> > > > > > > >  #include <drm/drm_print.h>
> > > > > > > > @@ -222,3 +221,63 @@ void intel_cmtg_set_clk_select(const
> > > > > > > > struct
> > > > > > > intel_crtc_state *crtc_state)
> > > > > > > >  	if (clk_sel_set)
> > > > > > > >  		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> > > > > > > clk_sel_set);  }
> > > > > > > > +
> > > > > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > > > > +*crtc_state, bool lrr) {
> > > > > > > > +	struct intel_display *display =3D to_intel_display(crtc_s=
tate);
> > > > > > > > +	enum transcoder cpu_transcoder =3D crtc_state-
> > > >cpu_transcoder;
> > > > > > > > +	const struct drm_display_mode *adjusted_mode =3D
> > > &crtc_state-
> > > > > > > >hw.adjusted_mode;
> > > > > > > > +	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start,
> > > > > > > > +crtc_vblank_end;
> > > > > > > > +
> > > > > > > > +	if (!intel_cmtg_is_allowed(crtc_state))
> > > > > > > > +		return;
> > > > > > > > +
> > > > > > > > +	crtc_vdisplay =3D adjusted_mode->crtc_vdisplay;
> > > > > > > > +
> > > > > > > > +	/*
> > > > > > > > +	 * For platforms that always use VRR Timing Generator, th=
e
> > > > > > > VTOTAL.Vtotal
> > > > > > > > +	 * bits are not required. Since the support for these bit=
s is
> > > going to
> > > > > > > > +	 * be deprecated in upcoming platforms, avoid writing the=
se
> > > > > > > > +bits for
> > > > > > > the
> > > > > > > > +	 * platforms that do not use legacy Timing Generator.
> > > > > > > > +	 */
> > > > > > > > +	crtc_vtotal =3D 1;
> > > > > > > > +
> > > > > > > > +	/*
> > > > > > > > +	 * VBLANK_START not used by hw, just clear it
> > > > > > > > +	 * to make it stand out in register dumps.
> > > > > > > > +	 */
> > > > > > > > +	crtc_vblank_start =3D 1;
> > > > > > > > +
> > > > > > > > +	crtc_vblank_end =3D adjusted_mode->crtc_vblank_end;
> > > > > > > > +
> > > > > > > > +	if (lrr) {
> > > > > > > > +		intel_de_write(display,
> > > > > > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > > > > +			       VACTIVE(crtc_vdisplay - 1) |
> > > > > > > > +			       VTOTAL(crtc_vtotal - 1));
> > > > > > > > +		intel_de_write(display,
> > > > > > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > > > > +			       VBLANK_START(crtc_vblank_start - 1) |
> > > > > > > > +			       VBLANK_END(crtc_vblank_end - 1));
> > > > > > > > +		return;
> > > > > > > > +	}
> > > > > > > > +
> > > > > > > > +	intel_de_write(display,
> > > TRANS_HTOTAL_CMTG(cpu_transcoder),
> > > > > > > > +		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
> > > > > > > > +		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> > > > > > > > +	intel_de_write(display,
> > > TRANS_HBLANK_CMTG(cpu_transcoder),
> > > > > > > > +		       HBLANK_START(adjusted_mode-
> > > >crtc_hblank_start - 1) |
> > > > > > > > +		       HBLANK_END(adjusted_mode->crtc_hblank_end
> > > - 1));
> > > > > > > > +	intel_de_write(display,
> > > TRANS_HSYNC_CMTG(cpu_transcoder),
> > > > > > > > +		       HSYNC_START(adjusted_mode->crtc_hsync_start
> > > - 1) |
> > > > > > > > +		       HSYNC_END(adjusted_mode->crtc_hsync_end -
> > > 1));
> > > > > > > > +	intel_de_write(display,
> > > TRANS_VTOTAL_CMTG(cpu_transcoder),
> > > > > > > > +		       VACTIVE(crtc_vdisplay - 1) |
> > > > > > > > +		       VTOTAL(crtc_vtotal - 1));
> > > > > > > > +	intel_de_write(display,
> > > TRANS_VBLANK_CMTG(cpu_transcoder),
> > > > > > > > +		       VBLANK_START(crtc_vblank_start - 1) |
> > > > > > > > +		       VBLANK_END(crtc_vblank_end - 1));
> > > > > > > > +	intel_de_write(display,
> > > TRANS_VSYNC_CMTG(cpu_transcoder),
> > > > > > > > +		       VSYNC_START(adjusted_mode->crtc_vsync_start -
> > > 1) |
> > > > > > > > +		       VSYNC_END(adjusted_mode->crtc_vsync_end -
> > > 1));
> > > > > > > > +	intel_de_write(display,
> > > > > > > TRANS_SET_CTX_LATENCY_CMTG(cpu_transcoder),
> > > > > > > > +		       crtc_state->set_context_latency); }
> > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > > > index 660ec513626e..53a44f505dd2 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> > > > > > > > @@ -6,9 +6,12 @@
> > > > > > > >  #ifndef __INTEL_CMTG_H__
> > > > > > > >  #define __INTEL_CMTG_H__
> > > > > > > >
> > > > > > > > +#include <linux/types.h>
> > > > > > > > +
> > > > > > > >  struct intel_display;
> > > > > > > >  struct intel_crtc_state;
> > > > > > > >
> > > > > > > > +void intel_cmtg_set_timings(const struct intel_crtc_state
> > > > > > > > +*crtc_state, bool lrr);
> > > > > > > >  void intel_cmtg_set_clk_select(const struct intel_crtc_sta=
te
> > > > > > > > *crtc_state);  void intel_cmtg_sanitize(struct intel_displa=
y
> > > > > > > > *display);  bool intel_cmtg_is_allowed(const struct
> > > > > > > > intel_crtc_state *crtc_state); diff --git
> > > > > > > > a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > > > b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > > > index 4a80b88d88fd..f7fc812d8ef0 100644
> > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> > > > > > > > @@ -20,4 +20,35 @@
> > > > > > > >  #define TRANS_CMTG_CTL_B		_MMIO(0x6fb88)
> > > > > > > >  #define  CMTG_ENABLE			REG_BIT(31)
> > > > > > > >
> > > > > > > > +#define _TRANS_HTOTAL_CMTG_A		0x6F000
> > > > > > > > +#define _TRANS_HTOTAL_CMTG_B		0x6F100
> > > > > > > > +#define TRANS_HTOTAL_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_HTOTAL_CMTG_A,
> > > > > > > _TRANS_HTOTAL_CMTG_B)
> > > > > > > > +#define _TRANS_HBLANK_CMTG_A		0x6F004
> > > > > > > > +#define _TRANS_HBLANK_CMTG_B		0x6F104
> > > > > > > > +#define TRANS_HBLANK_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_HBLANK_CMTG_A,
> > > > > > > _TRANS_HBLANK_CMTG_B)
> > > > > > > > +#define _TRANS_HSYNC_CMTG_A		0x6F008
> > > > > > > > +#define _TRANS_HSYNC_CMTG_B		0x6F108
> > > > > > > > +#define TRANS_HSYNC_CMTG(trans)
> > > > > > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_HSYNC_CMTG_A,
> > > > > > > _TRANS_HSYNC_CMTG_B)
> > > > > > > > +#define _TRANS_VTOTAL_CMTG_A		0x6F00C
> > > > > > > > +#define _TRANS_VTOTAL_CMTG_B		0x6F10C
> > > > > > > > +#define TRANS_VTOTAL_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_VTOTAL_CMTG_A,
> > > > > > > _TRANS_VTOTAL_CMTG_B)
> > > > > > > > +#define _TRANS_VBLANK_CMTG_A		0x6F010
> > > > > > > > +#define _TRANS_VBLANK_CMTG_B		0x6F110
> > > > > > > > +#define TRANS_VBLANK_CMTG(trans)
> > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_VBLANK_CMTG_A,
> > > > > > > _TRANS_VBLANK_CMTG_B)
> > > > > > > > +#define _TRANS_VSYNC_CMTG_A		0x6F014
> > > > > > > > +#define _TRANS_VSYNC_CMTG_B		0x6F114
> > > > > > > > +#define TRANS_VSYNC_CMTG(trans)
> > > > > > > 	_MMIO_TRANS((trans), \
> > > > > > > > +
> > > _TRANS_VSYNC_CMTG_A,
> > > > > > > _TRANS_VSYNC_CMTG_B)
> > > > > > >
> > > > > > > I though there was already feedback that these match the regu=
lar
> > > > > > > transcoder registers.
> > > > > >
> > > > > > _TRANS_HTOTAL_A         0x60000
> > > > > > _TRANS_HTOTAL_B         0x61000
> > > > > >
> > > > > > _TRANS_HTOTAL_CMTG_A            0x6F000
> > > > > > _TRANS_HTOTAL_CMTG_B            0x6F100
> > > > > >
> > > > > > I am not clear how to match?
> > > > >
> > > > > #define TRANSCODER_CMTG0_OFFSET 0x6F000 #define
> > > > > TRANSCODER_CMTG1_OFFSET 0x6F100
> > > >
> > > > Ok, just to double check my understanding, I am putting below all t=
he
> > > changes which maybe you are suggesting.
> > > > Can please confirm or if I am missing something please let me know.
> > > >
> > > > Step1: Define offset macro.
> > > > #define TRANSCODER_CMTGA_OFFSET 0x6F000 #define
> > > > TRANSCODER_CMTGB_OFFSET 0x6F100
> > >
> > > s/AB/01/ to actually match the spec.
> >
> > Ok.
> >
> > >
> > > > Step2: Add trans_cmtg_offset array in intel_display_device_info
> structure
> > > and initialize.
> > > > .trans_cmtg_offsets =3D {                                          =
            \
> > > >                 [TRANSCODER_A] =3D TRANSCODER_CMTGA_OFFSET,
> > > \
> > > >                 [TRANSCODER_B] =3D TRANSCODER_CMTGB_OFFSET, },
> > >
> > > They are just transcoders, so they go into .trans_offsets.
> > > If there are any pipe register that are actually transcoder registers=
 then
> we
> > > may also need a sort of fake .pipe_offsets (like we have for the EDP
> > > transcoder)
> >
> > Only CMTG transcoder is not enough, cmtg transcoder will be enabled
> along with normal transcoder.
> > Normal transcoder will use .trans_offsets and cmtg transcoder need
> separate structure .trans_cmtg_offsets for storing offset. So added
> separately.
> >
> > >
> > > > Step3: Define INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET which will
> use
> > > > trans_cmtg_offset #define
> > > INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET(display, trans) \
> > > >         (DISPLAY_INFO((display))->trans_cmtg_offsets[(trans)] - \
> > > >          DISPLAY_INFO((display))->trans_offsets[TRANSCODER_A] + \
> > > >          DISPLAY_MMIO_BASE((display)))
> > > >
> > > > Step4: Define _MMIO_TRANS2_CMTG which will use
> > > INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET
> > > > #define _MMIO_TRANS2_CMTG(display, trans, reg)
> > > _MMIO(INTEL_DISPLAY_DEVICE_TRANS_CMTG_OFFSET((display), (trans))
> +
> > > (reg))
> > > >
> > > > Step5: Define TRANS_HTOTAL_CMTG
> > > > #define TRANS_HTOTAL_CMTG(display, trans)
> > > 	_MMIO_TRANS2_CMTG(display, (trans), _TRANS_HTOTAL_A)
> > > > #define TRANS_HBLANK_CMTG(display, trans)
> > > _MMIO_TRANS2_CMTG(display, (trans), _TRANS_HBLANK_A)
> > >
> > > No, you just use TRANS_HTOTAL() and co.
> > >
> > > Or at least that's my current thinking. Avoids all the duplicated stu=
ff.
> >
> > Same like above - Only CMTG transcoder is not enough, cmtg transcoder
> will be enabled along with normal transcoder.
> > So, we need both TRANS_HTOTAL() and TRANS_HTOTAL_CMTG().
>=20
> We just need TRANS_HTOTAL(TRANSCODER_A) and
> TRANS_HTOTAL(TRANSCODER_CMTG0) (or whatever
> transcoders we happen to use).
>=20
> So just
> enum transcoder {
> ...
> +	 TRANSCODER_CMTG0,
> +	 TRANSCODER_CMTG1,
> ...
> };
>=20
> + #define TRANSCODER_CMTG0_OFFSET 0x6F000
> + #define TRANSCODER_CMTG1_OFFSET 0x6F100
>=20
> + .trans_offsets[TRANSCODER_CMTG0] =3D TRANSCODER_CMTG0_OFFSET,
> + .trans_offsets[TRANSCODER_CMTG1] =3D TRANSCODER_CMTG1_OFFSET,

Thanks Ville, got it.

>=20
> > Please let me know for any additional details and the above change stil=
l
> needed or not. Because only NVL will be supporting CMTG.
>=20
> The CMTG code will be used (if only for disablign CMTG) on all
> platforms that have CMTG, which IIRC is ADL+.

I can understand there are some gap in disabling path for older platforms w=
hich will take care in incremental approach.
Currently CMTG enablement is done for NVL where dynamic dc state (dc3co) wi=
ll be enabled.
CMTG enablement will not be done for older platforms as dynamic dc state (d=
c6v/dc3co) support is not added.

Regards,
Animesh

>=20
> --
> Ville Syrj=E4l=E4
> Intel
