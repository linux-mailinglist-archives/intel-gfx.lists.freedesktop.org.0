Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFGsHA/u+mn3UQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:30:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CD134D73D7
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 09:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6401A10E0F6;
	Wed,  6 May 2026 07:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WfnhxFhd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 107EB89830;
 Wed,  6 May 2026 07:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778052619; x=1809588619;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Pz3xTQk9t805vaglnA4mWoN7PauInidENpY6Ejbj2Qw=;
 b=WfnhxFhd9sgzXbIxh+tegMX8NsKKMqllT/7DeEuN7saNX2ESnw98ROyx
 ku/tmEunIURPA97377etXylbaJ8nvryLct77pkGW+wv3WGA/ta0sPntI/
 RAy0I3RsRrOWFzMqZZP+JfwVBCqQX6PI4lqVPB8319zmh4bTTRUMCmgwR
 pTZYikkzBH0SFXwvu1AkW9TxJi23ohhh6VL2rdmVkyPea3J9M2ml16CWs
 +Hqm9x2k01KBxB/E12aUgN5P4fvrqcAFQIRWsfujxH0P8FGYx9ts2gp5T
 cRoGxcfA+qDWW3wYhQO3suGCLkxYrgRuAHIx0bSe3uNtsz3cdLE3DP6iL g==;
X-CSE-ConnectionGUID: QNCOgNiKTderNWLPaub8Ww==
X-CSE-MsgGUID: yhj6vuiwRp6p6/S8A5w0tg==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="96545988"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="96545988"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:30:00 -0700
X-CSE-ConnectionGUID: 81nEFKGCT8SCoM0IrOr1BA==
X-CSE-MsgGUID: Wm5syJPPRieHLz2+OVMwPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="259755668"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 00:29:59 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:29:59 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 00:29:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 00:29:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YGPzqIHvyilWBmSWsZ30HqzkOHu7hWl18SKKRrxkehL7ulkPNywaXHo6yZ8/QQEcm+I/0d2FQ2ypQLoLI+vYJjiCQj8ncmIPP+YnncV/tHRyqq09HW5PYQLR92vwEESrRLLu8x0Oht4T3d6L01zbxXq17BsBtkaIKJiPJJolBNf3q4ZDYupoypBFAtm2U9a3MwyVOjmy2hmlgIbdAB4Rr3Hh3Jbw6hKi8tB11eXtgTMB8FGQZqawILt0dXR0Bb/YDfZBuDfc/QxF5aihYKoYFHxN4zToF2kFOYvLgCMBMz6+fUFAO1K4wZ3rQZFlXNLnDYg5MN8Iz2dBQAB1vH7LOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pz3xTQk9t805vaglnA4mWoN7PauInidENpY6Ejbj2Qw=;
 b=FEXvAwLgjpSoSPk2K29GzDg3q1ttt9ToFPO+smIb3vgjFyqE79Nk+M1sFANHghCj8a0zOvV67ym4AwBy0ccfwgf33odUaSixq/1qPmq8Ia1SpQTUOVVA+VBUXUxacGBGVZXnA2jyjIw5OV/QY3sG4JbGI++ntZFv43L9aHEQF8nCnux+rdobjh/Bwl5TKDD60hejsP5BNZ94ZhBuFqZSpxWXdVnVeob1EjnXMfGvZHFoHg4h6b0o9EaJ4UWWoCKz+PTPwiwWoOgS6mYoLhsmqYfl9fC+vgw0FSgrWXCUYfqMdEbixor28U15Ywxbcuh6vF0Kh8DOVAQbfj1CKtk9dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DM6PR11MB4594.namprd11.prod.outlook.com
 (2603:10b6:5:2a0::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Wed, 6 May
 2026 07:29:51 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 07:29:51 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Topic: [PATCH 4/4] drm/i915/psr: Apply SDP on prior scanline workaround
 for NVL
Thread-Index: AQHczJpv1d/PKgcH7ESM803ciH1dWrYAubMQ
Date: Wed, 6 May 2026 07:29:50 +0000
Message-ID: <DM3PPF208195D8D58A9DB70E8251EC20BA3E33F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260415054000.400070-1-jouni.hogander@intel.com>
 <20260415054000.400070-5-jouni.hogander@intel.com>
In-Reply-To: <20260415054000.400070-5-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DM6PR11MB4594:EE_
x-ms-office365-filtering-correlation-id: 496aa5e1-ea98-48fb-c236-08deab41427d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|56012099003|18002099003|38070700021;
x-microsoft-antispam-message-info: 4frfCUE3Mt4n6zXZSttlnRIShVu6o5qDVxpYevjhPREa36REK3NyCF5w5SSr9yJebX0XLp2A/wyZq2cxl8T9m7iJoqQbW19hUS1laNztJCOroY71G7bxQIdF9kIqnjgz9xwGwpMiFtDNX2+I3l/jILABGTy7CbDi7AE73scbgBGjbLKiUccFYrE5TfWWE+uYOVmSqW0N0c7rX4y3C6gmslGYKtJUIzo+aOmrKLdJKOai04Q3EZfSj7DzMAX4rD8r/FqfY8gQgYigc75Fnv/5FE7cbX/O/FXS42MXs704sH7PVWM3oxUPen+f9XVpQVmsaW1PLm7DH6kY0xwtltHQ9qWgaEqsB9ECndonBB2rzsWwPxv0D4yuecMvTJJAdhxSDrz/ZbTW7uxNfRnwt2OVn1EFJoaCBAzsOIp5buVaC7w5EpCOz4HdMfD6mxx2wyLA3YaM+34tcGbreNj5gljcTQOYWYcfsro+VrnrIVfCQFyAi7gGE5dXOPYWqRlgrE4s5YxyH2p6pVHqV8SkmP4qB6COew7GUELYMbQSxPpexCrlByG4FMn3+McA8v5C4VISlRFGAP621co+TF4a3BRfCDRv71f07BeemIUgiPI8W2me8dBoo4Z1UHlKE0hf1euFh3FurN6NFafAYhw4EOGnNTJl+OdW+TeXs3Ii/16LXHD4PW/koNpAV6lhU9Fph1kG/FSMGP0yQYdIgzxdwTQirLSEyZaUO3NqEuhZYbj5PoE0BHVXpsFxrFnNV9MiP7JX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(56012099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dzBrK3RFNi9WNTFWWkhlbWJaY3BzNXlCYkVIaCtaODQwSlhYMzRZQ1gyMGIy?=
 =?utf-8?B?WDZDanEyUjFQY0pjNG9xVUlVOUxtS2sxOFdnUDF1S0psaWg2UGt0K3ZZeHI1?=
 =?utf-8?B?RmVBVzc2RHFVeUxZVlVaQVNMT1NSOWJQNTJTYk9wRlVpdndUVGNqSUZsNzl2?=
 =?utf-8?B?L3hvbVV5MU9BZEFnTEtTWXppRjNNblgySzZVcWZka2puTCtpb0lhamZFck5s?=
 =?utf-8?B?SEZNWDFheTlDNGJRR3ZQZy9TVVNOUGpjSXBkODRwRlNnV2dPeDZ2WlE4aC9l?=
 =?utf-8?B?Z0VLTzRTZW9kbVNwZExhb2tRT1VFdDY1aGRCT3JXT1ZuVHgrYkFzSnZWNXJr?=
 =?utf-8?B?ZmYzN0lYNnVPczBVUFFIcFkyL0lrMElvNlZpamsrcjQrbXROcnprdUczcXAr?=
 =?utf-8?B?a2hxSmJOYVNleGFQQ1ZZcEFWaEl3OC9WeWlGWFpYY2xFSHJ4SU9WdGZKeFRI?=
 =?utf-8?B?cFdrb05xMytKY00wY0VzelVXZC9mVlcrOFgvQ3B2REFkcEU0dUU1NlJ6S2sy?=
 =?utf-8?B?UU9ENTFOVms1cVllMVpTVHRGQmlqcENNMlVyaThXZWZDYzNrQzB5d3ZsNkhP?=
 =?utf-8?B?TjB0ZldneUh2UmhPbzNka3V6Z0grYk90QkRNNWU1YkkveWMraHdFb2sremlM?=
 =?utf-8?B?bi9LV0htdDh6V0lHOUV3TGdQdWpmbTVYWm9qcVFsU3JDZWY0VVo1SGlpOHRC?=
 =?utf-8?B?U0N3T0pRNk9jUytWWEJrUThmWGc5WkZaNUp6UkN2dTZYUlNabGdaK0VvUzhs?=
 =?utf-8?B?eEZ6YmJzRlR5SXNiRFR0U2l0L3F2a0Z6MHFqMUU3aTFpVlFpZys1bFQxKzZs?=
 =?utf-8?B?dWJRUlZ1MTZZUUZ4U0p4RXkvVW5vVlZSMUZ6VjNuaXpMOTlNWXMvZkFSUWhV?=
 =?utf-8?B?bXk4TVJaR2VFV2hMSnYrNkVaaWJiT1daS3NZR2kvRklDS01qVXJXS1E0a1BK?=
 =?utf-8?B?bHpXOEhVQXdaSytySjdDcU1rK3B6U01uaUovRnpOTDhaSElUcXo4N0dtQkVT?=
 =?utf-8?B?SE9PZWVWTlJESVE3R3J2ZVkzQktyWTcrRnRrbVk5K3NNZ1N2OFpmdTVRTkNn?=
 =?utf-8?B?c0tYcWlvRWtBeG40dWtxa2Q4S0ErUVI0d3pzd0ZkejJGT05XNWwybXR3Nk9w?=
 =?utf-8?B?SkhPL1d2UFdTNWMwQm82TzRkK1hlMHFtZGVUMXRTc0RPdEpndWJ5M1dlaGFk?=
 =?utf-8?B?VGpLYk0reHNxK1RXY01LYWZ2OEE3QXVJc3RwMkpud1RlWXhJbkxZb0ZOamh0?=
 =?utf-8?B?RlFNTG1mTFdKQnlTdU9YWk9QTlpJQ2tid3Erc0hNMTc3QjBZZEhuaGZtSDFJ?=
 =?utf-8?B?TUxGaTJUNXJWV3pkNVhvTEh0RUkrTDJ0bHZJdVduUm9FL0M0ajl2ajB5ZGxG?=
 =?utf-8?B?YnVWaUVKZTdWY0JFLy9UTWQzazRBNDZQZjV0T0E1dGp0OTVldDVNTEExWENX?=
 =?utf-8?B?L0ptUm85WENEVmVzN1ljK2JiYk1ocVR4cW1zUDZLN0tQRUJIeGpVbmNPUm50?=
 =?utf-8?B?NDdCU3I4TUdYWklPNEo5SGxWQ0hMcmswanEvNHByZ2o2ZTRmY09oYTVBdE5i?=
 =?utf-8?B?L3oyNTgxRElXdWtUMjI1YVhhK2VzWHJuZ2F3bm5KMHMzUVF0L2xXQ2s5SWNt?=
 =?utf-8?B?clo3amIwN1VVelRNeUdMNUpVNDVDRFFDSURoQ2RsYzhUV1NUcmE2aDl6eDJ2?=
 =?utf-8?B?Mlc4c1RuVHBJYlBmNmsvMnVyeGVTejFrcitueDVCRXVYRG9NSC9IZHJ6ZXgy?=
 =?utf-8?B?TkJ3Q0IyTjByckF6QVpyTEVUK1pJRVZDVENmaEJoNzNGTlVaY2VlUm1LM2pJ?=
 =?utf-8?B?SzNIQW1wNmh5QTZKNElRczhVazdDb21BU2VQNTZiNkRRNW1tZW1LdFBHWFNE?=
 =?utf-8?B?eHJrTlpHS2R3b25JN0JIZ0V3L1VYMWlzcitNQ3VpbXV1bVFpQnY4QTF1bGx2?=
 =?utf-8?B?RWgxYzIrVUhremtheTlEN1cyUVRUYTR0TjNYQjFsK0pDY1pXc3l2L1Z0ck95?=
 =?utf-8?B?dk9XRTFjMHdxWWtCMlMvUHRBZE1FdmdHZjdOTjJ2RU5QM2dJdTlaOUZjQ0xP?=
 =?utf-8?B?OHBBREo0OHdwUWZ0SzlMV2dkN0xGazFWRGplalFoUkdGWVRiN3R4S2JSdkoy?=
 =?utf-8?B?OTdrRmxEdHJMQTEreHE5WC9ZL2U3Y3l4S2R2SWJWRTNidG9udFk3bDlDUHZG?=
 =?utf-8?B?V3V3d2pVR3lCMTVna0FJNTdYVmdPWXhpYisxVUFJT3B0cGlOQ09UVVVrVmZO?=
 =?utf-8?B?MWtPemJIVGZuTXlvWmNWc3RBSzNsbTNrZUR5MTNUV0lVYTdGRER6YjJSWGpm?=
 =?utf-8?B?OVphVmtBVnFjcGM2R2g1QzhtNk9Wa3NwWGJUcHdXUUNwWDJkcTZKdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: ece3TeUAVvz9INpCu3SRKGFYu1XwEyC2koC60TrTcH6wPriONwRA/OleiUTO4Y02ESrrJTQ5vq+ru/Gor4QzLw2V8KXgK5EIjVecmjHbGswAIKSzCQMblEmYphlUQQZCywE5Lb3dlNbcG4X7bHmIu0yv3gfrc/hTXQuK+AwTGNvQP/M7ppLDrF/79geJ+Z0CsnzQ7/mz/oWYfUaHVs8U9NMocPE7rUzozSm/auqW92lZDnYAtX6XnZJ3aigo0sGASL9k4BPIR72+GI1LlSTxluO881biXGMkhblSiS5CBJ2PWeiPX1QyoiedbOl5Pn6xLO9xpI4dEcXCOd+4bQ3axQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 496aa5e1-ea98-48fb-c236-08deab41427d
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 07:29:50.9761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AmNjW3kDBe+VfUc0Mf6oFVgxyjr0zOX9JFOHTSiqYh0egc7TGg0x2CQmtaTDJuIfGSpybxRWdbkhTmLsP6Ks9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4594
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
X-Rspamd-Queue-Id: 4CD134D73D7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:dkim,intel.com:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

PiBTdWJqZWN0OiBbUEFUQ0ggNC80XSBkcm0vaTkxNS9wc3I6IEFwcGx5IFNEUCBvbiBwcmlvciBz
Y2FubGluZSB3b3JrYXJvdW5kDQo+IGZvciBOVkwNCj4gDQo+IEluIE5WTCB0aGVyZSBpcyBhbiBI
VyBvcHRpbWl6YXRpb24gZG9uZS4gV2hlbiB0aGVyZSBpcyBhbiBTVSB0cmlnZ2VyZWQgaW4NCj4g
Q2FwdHVyZSBzdGF0ZSwgTGluayB3aWxsIGJlIGtlcHQgT04gcG9zdCBDYXB0dXJlIENSQyBTRFAu
IEJlZm9yZSB2YWxpZCBTVQ0KPiBwaXhlbHMgSW50ZWwgc291cmNlIHdpbGwgdHJhbnNtaXQgZHVt
bXkgcGl4ZWxzLiBTb21lIFRDT05TIGFyZSBpbXByb3Blcmx5DQo+IGNvbnNpZGVyaW5nIHRoZXNl
IGR1bW15IHBpeGVscyBhcyBhIHZhbGlkIHBpeGVsIGRhdGEuIFByaW9yIE5WTCBsaW5rIHdhcyB3
YXMNCj4gdHVybmVkIG9mIGV2ZW4gaWYgdGhlcmUgd2FzIFNVIHRyaWdnZXJlZCBpbiBDYXB0dXJl
IHN0YXRlIGFuZCBubyBkdW1teSBwaXhlbHMNCg0KKm9mZg0KKmNhcHR1cmUNCg0KPiB3ZXJlIHRy
YW5zbWl0dGVkLiBUaGVzZSBkdW1teSBwaXhlbHMgYXJlIHByb2JsZW0gb25seSBpZiBTRFAgb24g
cHJpb3INCj4gc2NhbmxpbmUgaXMgdXNlZCBhbmQgRWFybHkgVHJhbnNwb3J0IGlzIG5vdCBpbiB1
c2UuIFRoZSB3b3JrYXJvdW5kIGlzIHRvIHN0YXJ0DQo+IFNVIGFyZWEgYWx3YXlzIGF0IHNjYW5s
aW5lIDAuDQo+IA0KPiBCc3BlYzogNzQ3NDEsIDc5NDgyDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5p
IEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1ICsrKysrDQo+ICAxIGZpbGUgY2hh
bmdlZCwgNSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggMzQxMTg2NjIyZWQ0Li4yODY2OGZlZDgzNDcgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjkxMCw2
ICsyOTEwLDExIEBAIGludGVsX3Bzcl9hcHBseV9zdV9hcmVhX3dvcmthcm91bmRzKHN0cnVjdA0K
PiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiAgCSAgICBjcnRjX3N0YXRlLT5zcGxp
dHRlci5lbmFibGUpDQo+ICAJCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9IDA7DQo+IA0K
PiArCS8qIFdhXzE2MDI5MDI0MDg4ICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49
IDM1ICYmIGNydGNfc3RhdGUtDQo+ID5yZXFfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmUgJiYNCj4g
KwkgICAgIWNydGNfc3RhdGUtPmVuYWJsZV9wc3IyX3N1X3JlZ2lvbl9ldCkNCj4gKwkJY3J0Y19z
dGF0ZS0+cHNyMl9zdV9hcmVhLnkxID0gMDsNCg0KSSBhbSBhIGxpdHRsZSBjb25mdXNlZCBhcyB0
byB3aGF0IHRoZSBXQSBpcyBhc2tpbmcgZnJvbSB1cw0KQWNjb3JkaW5nIHRvIEJzcGVjDQoiU2Vs
ZWN0aXZlIFVwZGF0ZSBDb25zaWRlcmF0aW9ucw0KV2hlbiBleGl0aW5nIHRoZSBDYXB0dXJlIGZy
YW1lLCBpZiB0aGVyZSBpcyBhbiBTVSBhdmFpbGFibGUsIHRoZSBQU1IyIGZ1bmN0aW9uIHdpbGwg
a2VlcCB0aGUgbWFpbiBsaW5rIGF3YWtlIHVudGlsIHRoZSBTVSBoYXMgYmVlbiBzZW50IHRvIHRo
ZSBQYW5lbC4gIFNvbWUgUGFuZWxzIG1heSBoYXZlIGEgcHJvYmxlbSB3aXRoIHRoaXMgYmVoYXZp
b3Igd2hpY2ggd2lsbCByZXF1aXJlIHRoZSBEcml2ZXIgdG8gZG8gb25lIG9mIHRoZSBmb2xsb3dp
bmcgKGluIG9yZGVyIG9mIHByaW9yaXR5KToNCg0KU2V0IDB4M0YwIERQQ0QgdG8gMHgyIHdoaWNo
IG1lYW5zIHRoZSBUQ09OIGhhcyBubyByZXN0cmljdGlvbiBvZiAxMDBuc2VjIGJldHdlZW4gVlND
IFNEUCB0byBTVSBzdGFydC4NCklmIGFib3ZlIGNhbm5vdCBiZSBzdXBwb3J0ZWQgcGx1cyB0aGUg
VENPTiB2ZW5kb3IgY2FuIHN1cHBvcnQgZWFybHkgdHJhbnNwb3J0LCB0aGVuIGVuYWJsZSBlYXJs
eSB0cmFuc3BvcnQuDQpJZiBuZWl0aGVyIG9mICMxIGFuZCAjMiBjYW4gYmUgZG9uZSBmcm9tIFRD
T04sIGl0IHdpbGwgYmUgYSBjdXN0b20gV0EgaW4gZHJpdmVyIHRvIGFsd2F5cyBzdGFydCBTVSBh
dCBzY2FubGluZSAwICh0aGlzIHdpbGwgY29tZSBhcyBhIHBvd2VyIHBlbmFsdHkpLg0KIg0KDQpI
ZXJlIGl0IHNheXMgaXRzIGRyaXZlcidzIHJlc3BvbnNpYmlsaXR5IHRvIHNldCAweDNGMCBEUENE
IChJIGRvbid0IHNlZSB0aGF0IGhhcHBlaW5pbmcgYW55d2hlcmUpICBidXQgdGhlbiBhbGwgd2Ug
ZG8gaXMganVzdCByZWFkIHRoaXMgRFBDRCBhbmQgZGVjaWRlIGlmIGNydGNfc3RhdGUtDQo+IHJl
cV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSdzIHZhbHVlIC5JcyB0aGF0IHNvbWUgc29ydCBvZiB0
eXBvIG9yIGFtIEkgbWlzc2luZyBzb21ldGhpbmcgaGVyZSA/DQoNClJlZ2FyZHMsDQpTdXJhaiBL
YW5kcGFsDQoNCj4gKw0KPiAgCS8qIFdhIDE0MDE5ODM0ODM2ICovDQo+ICAJaWYgKERJU1BMQVlf
VkVSKGRpc3BsYXkpID09IDMwKQ0KPiAgCQlpbnRlbF9wc3JfYXBwbHlfcHJfbGlua19vbl9zdV93
YShjcnRjX3N0YXRlKTsNCj4gLS0NCj4gMi40My4wDQoNCg==
