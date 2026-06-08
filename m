Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id S8GuHGGKJmqpYQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:24:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B914C654919
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 11:24:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hpjwGz7I;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD0D10F03A;
	Mon,  8 Jun 2026 09:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E087F10F038;
 Mon,  8 Jun 2026 09:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780910686; x=1812446686;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Cw+Zv6yz/P92pr7mx4iJaTy0vWBwjzRTMReFDY6iPo8=;
 b=hpjwGz7IiNmwU6xwSZgxlsyOT0Z3wWG72GLZlZHdT84k4IjBvPo6f3a5
 gjuoJ0m08cTWdXILy5aKqBQHI4dhd2bRFXNGNfXd7WQAt1GJ0yvSC++0B
 3BD4BG6yhhflEwf7ih+l4qnc/4Zkz8gXmxf1LXHgWjTy6AnlbW2LQGOaQ
 NigCWz/Ui40d/eJXSPLKLaEuns+X1HmXtfphpetkO3VRURDQBiEb1bT/u
 8g+aQ0qwID08USxOrLHZJHFq/k455kSBO7/KNYNvTQ5JZOJmBOAVe4BBM
 3pE+kmdNqz27KCkzhaE78B+M0hFK7qr6tC6PJGOYIDwLNx2cjvL60QNCB A==;
X-CSE-ConnectionGUID: oloudMDZTw6JtE4TshbufQ==
X-CSE-MsgGUID: wJfjCIcbSACpU8lNwOrkmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="107082403"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="107082403"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:24:46 -0700
X-CSE-ConnectionGUID: E32Aj7EFTPi7n2GwZ8zNiw==
X-CSE-MsgGUID: NfQxLdaTQHCvH1rqHXnsUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="249427411"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 02:24:46 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:24:45 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 8 Jun 2026 02:24:45 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.35) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 8 Jun 2026 02:24:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kLI86mmaGvaZF9OMsKQVNNBZKTDI/bXsXO6AfbzOExOvcgUPBQ7jJi9s+yPC6FUFX5XBaSgNw97Enjr0Jd7nvhnD7TNIOpLKKRfF6okpytJ+LFP6S8vAU9jq3iEDoviX1ophSEo7RDXyOIKZbFSL70luMD9e3Ua6u4AtYsGEd+vHSSWDXArA6N2jcyne+H0wb3sqxz9o/bsCVovfrA007E86U0cZ6n+3fyYg+d4oq6moIiOh5AQV5VXuMw8Q87Qs1nyKZeWkLGzaUdzUWXzLSNzCK5xiEDaobQkiUwp78gqWs/pDi+in+kOhsbGFPV8PdD8cVt7rELZd3BDOWWWrjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cw+Zv6yz/P92pr7mx4iJaTy0vWBwjzRTMReFDY6iPo8=;
 b=gNASaOBJ7lHPkubbBjZ8T8XHnJkO3or+YUW6rznfEo3X+k9UPAWG1/t91CtXa7O1eOqYt+NnvsEEgh7D7ieuGsWVErgZDkhKgy0bnESbbbNSRgKYAfc80biMCfybjxmPOImUqRDsUj+4ageNF18tpd9bAWsIhR2rAhzrqvmi9KUFsOcky/xxRGDiN6SZDQWPVpBsGIMilf9tePQ4c+CxSlyliFykChnRZnMOzTI1uiykdfqObdz/kHtWVIH1DlYFj1p0cNND8yswz19vNgY5mSOZPo7Bp1uwvW1B529iMuhbBBOgXSceLN2GOJdoF+OwbqKSRyvGRKAjXdRKZa209A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CH3PR11MB8708.namprd11.prod.outlook.com
 (2603:10b6:610:1be::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Mon, 8 Jun 2026
 09:24:39 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Mon, 8 Jun 2026
 09:24:39 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 17/22] drm/i915/display: Factor out a helper to modeset
 a pipe with atomic state
Thread-Topic: [PATCH v2 17/22] drm/i915/display: Factor out a helper to
 modeset a pipe with atomic state
Thread-Index: AQHc8av7XXdgedDHaUqpGAknezzavrY0bdXQ
Date: Mon, 8 Jun 2026 09:24:39 +0000
Message-ID: <DS4PPF69154114FFDF58413FE2838BB85DEEF1C2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
 <20260601093836.3057345-18-imre.deak@intel.com>
In-Reply-To: <20260601093836.3057345-18-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CH3PR11MB8708:EE_
x-ms-office365-filtering-correlation-id: f01e0b8d-3ac5-43aa-fc23-08dec53fc3d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|38070700021|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: TFdt/vsIY9x01+GIv9x9cbNw/qKHXYZwkLpDADhISNSV69wepcitFBmmAioJbjF1TcfveOIurKNEFRafdSJhzf+Y9258FVrL4DeV0OA76LJYkLiE3OL1gBDb/uZjXVeXLmGComumkvehq7wX8owTeZdVOyo80OFLab2fKswABlfLLrNilYuPh42thpaKclZBrugSHmuxU9YlVB0dp395yvr7UGqCSujrUkR7Eui9nLpt4WSKj/G41EfOPXN4DjrEVFfYNv6+XdTCQOCOpPpzAvR1/VGH+lkDdFgU8HDFScqXBrHq+vxgitX/W+DExGc0z3QfNA1mQk9fwcf90tEADekp3TI4bxRsroGBlLoYcPoLrsgLudsyhH0miSpfRxsSTpMx13cz7X0P4a8B6+48VHCecg88LtyDWHAnW/QYNp2DvysgR1tH2rmGaJW4eIjbkAD8tYsiSdwU8D0fZQKbGBT6C2x175wlD+bTuVeReRmTYBlX6iQhn5M4NPYTGGMuFfEsXRQNcczO/nGj+qCQVdNtmWOs2JgXTwF+Bp2WADYwffPFdLfnOyB/HgSJX999CjNtPu6pGB0qDp3AIbHPioWy8n1ikhCf5QUc1H8N/jHKjvrtjIQiIOqbIzexLMvj+LFj4iQvp4Cjnnu/StUjbbwaEljnYLm+wEpjYuOkmYQXFkuj0uGng+h6NL1MMxKPU/exBpZ02M4+gLWrn3WMgHSaUDsFKHJqfHth722JH/FnmKjB89mt9XKtPmhEg8t/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(38070700021)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RE4walQ0M3VMVFVRcitXVU8zSGh1ZG9mQjZTNUsvQzhTazVIMnVjWjlhc1Vl?=
 =?utf-8?B?bzZNYmcrc2ZyZE5JbkFrdEE1OVV1MVhReHRlMzRSSDB5RmplNHd1U3pRcjlx?=
 =?utf-8?B?cnVTUExyNHJHeHE5WEpVMVVySmltRXkvNFVvd3lUUFlrNW1Sd2hQSDVVNXM1?=
 =?utf-8?B?UXMzQWt0dVNvWWhQK0JVS1g5QjErQm9qMmpzRGJvUWpKMldTbTlQM3BZMEhQ?=
 =?utf-8?B?OG42OE9acGFGVGYzMkFzRXE3QmlQNG9WT3I4enpqLy8yNXltQm1ySldiMjgz?=
 =?utf-8?B?RFgzc1QwWExzaitCdEErZ2p5YUwxYlNiSHE0OGVZajFMSE01WStCci9nUTFv?=
 =?utf-8?B?QmgwRGJ6RzdVQUVKaDMwM1pMRW1mRWNMQm1iTi9iV2R5SnNIbndrTDRmTjRE?=
 =?utf-8?B?SkJ6UFlJUDQ5cTR0YUdLN1VmNHBhZWV2Q2Q0R2JHb1RJbjg4VVJRZERWTmgv?=
 =?utf-8?B?T1NGUFVtc2c4cCtVeHNHN2pSV2p3RVhKSmcwakY1ZFdveVpvZjBLVzBBNWtY?=
 =?utf-8?B?Mnp1RXJlMUt4WlNCTnJGQ0ExQVV1cUQ3cWdEeXdyQlo3dERrKzB5VnNMSWFX?=
 =?utf-8?B?RlpHdFdZUnNiLzhiWGdZenBCKzZLeE0wd2Q2TTVMNUZ6cE9zZjBmQ1hvZ0ZR?=
 =?utf-8?B?VHRqUkxiR1RudVdKcVFnckJWalNFRk9Wbkp6NjhFenFWOUZ1QkRrS3NPZ0pT?=
 =?utf-8?B?d21Sb3VxQXFTY1hXQWpPUS96UVBOYzBBb003ZFlFeXhCOCtKa1JIMU91NVdR?=
 =?utf-8?B?UjM2MkZIR1BTeTRMZmt1Q2xIM3lKbTN4SzlrU3ZQV0crVDZwakZDLzV4MDla?=
 =?utf-8?B?OGE3MDNMdW15M2wyTTd1V3JEUEs3YTQ4MWQzVW1wREhuSVFPQzRvaDZDb1N5?=
 =?utf-8?B?Mi9yRGc1aG16aXByRGsvRVR0QzVaRFhVZm9ocHc2ZzhNaXA5UGNNVTM0d0lh?=
 =?utf-8?B?Wkp0UGFhTWhjdXVWc0dNWS8xOHlXOVM0U2RaNUJ1ZnVMbDhXZGRJbkszYndU?=
 =?utf-8?B?UVpQbXR3Y1h5T2VsVks5cDdRYnU2S1o1VXUyYUdvU29hNHlXQWczbk9XZXNs?=
 =?utf-8?B?NGZLNlZnaU5FSHYvVGJCVGNIVTlVQUlVMTlkWHQ1TnNUUXM4L1pKS0RIckpt?=
 =?utf-8?B?Y2lUemZyajE4eTByVEkxWDc0clNWSHhzQmtBbW1qVllXSU1LUnlQVmRheGJC?=
 =?utf-8?B?a09rV0JGR0pWTUxad0llOW5iT3JsYjR0OTRRY21hM1dWZHpDdTUyMEpTM1lY?=
 =?utf-8?B?SUtJUkpoL3UwMWVKMVBycWJ4NmNTQ09qRGdTbWVab0JJalNpZ2Q0ZCtCN3N1?=
 =?utf-8?B?VWprRGdEd1ZqUHNQUlBMUWNDL0ZTSnUyS3h2SUxUYW1LYjZGTkd2U016VkFT?=
 =?utf-8?B?ck4venhMU3Y2dndEZnQ2VmVYSmV2M3ZHMDlXMGhLRCtOMTFMV2plb25vdzNX?=
 =?utf-8?B?TlNXNlNtL1dDK21mUmlGNkhxcGFmRDVKOXBzNGpGclQzTkRWdloxb2dEUlV6?=
 =?utf-8?B?TW5JbnhJakxudXJSZXNsOG9xR2ZkdVNYaFdDZlpWcHZCc0EvbEhreEg3eE55?=
 =?utf-8?B?dVZ1TVBkZ0pmTUJkcGxRaXdjNDMxMWhxWGxFR0ZpK0IrbkVMUGxWamZiMlR6?=
 =?utf-8?B?WFYwQk9UZUE5KzFuKytDd0t1b3hxdW5OdFQ5VUw3OGlDZVJXdzd1eW9DZmJ5?=
 =?utf-8?B?T3I1ZHJnT3V2RnAwWkQ2cnBxWlVRTjdsWnhoUkVpOGJoOHFtN0cwNjlLckps?=
 =?utf-8?B?Q1JiSnlMQ2tJUVNlV2dpTFRTdExiOUIzQUNLYUpUSCtpbVZKb3VXTCtBWUkw?=
 =?utf-8?B?Y1U5OWMrSDhDMWliT04yRVRvQ0pnbklOdWxDdWNWdUhQN29NT2NiMWN1UG12?=
 =?utf-8?B?OGQzZkQ1QXpiTVd3U1FWd2c0NkhidGRlUVl6cjNudTZkakRvMXVFVlZEREt2?=
 =?utf-8?B?NFVvMnY5OWlqNGZUOUtLb1BocFVlWW02aTE1RmRzTFhMbXZUaHpSTSsrcVBR?=
 =?utf-8?B?UjNGdXFyVTFkZkFmZWVxZkVhNDcvaC9qeTRMQ3VDU3pQSDh3S2FXakFycVpr?=
 =?utf-8?B?TGVENGZWYkl2aUJ4KzlobktKbERIanhiaDNHT3ZxZk9RanJ6ODc1RlVTRjlx?=
 =?utf-8?B?RWg1MXBNTytWQmlRM0I1b0FETWhZbFFLa1htZ2lNRUhZRk91SHgwcUJLcWFz?=
 =?utf-8?B?NXpOZm05N0I3aHFQd0lrVmt2T2Z6R0lTQXdjL1Q1aGxKVllhTHp1dW40UWJo?=
 =?utf-8?B?VXQyZTlZbDRTZE4xV052Q0NTcWNld1VSSUZpSTdEbjV2TFpJbzZzeUxrUnJz?=
 =?utf-8?Q?9PE7sw4IEfICCIHHlm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: D+HYlUJ4cbd6b4rvCoeca7JGcA9wxwnkVOSyDoQVrrzMFRDZZnU7eZ5Ra413u0w4/kgi12uW7OAUqE05kJRAW69O7/MlEbxuITkypFfBKwyNJtMv/d5og5Ekjtkze5trAkoN5VCoQzsNeqoPWenLBHvAY9pdDjA4zssrJNuMX7oed34hpLC8LSkRaZaehoy2+26NpTqoQikjF7D+GOzhFx/0EZBg4w9Qxy/GJeKMSlG7O/KrJYzpc8bBSElbVpXw9zahJF3DS2/9NajjaH2ERPOKuRVKDjvh5/cdDBo6XYbaV0EzCIyBTLlHXOxcETqVAVMHcbFF4fqe5gLTJpIGaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f01e0b8d-3ac5-43aa-fc23-08dec53fc3d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2026 09:24:39.2582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +NKHWpQOzux5n2TI1bkLpLVQpQiUawfy2pP//h+ydExdWnMp3eAV4HQuQTiQx/zDnubuFH2yYURcjrdTUZiIyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8708
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,intel.com:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B914C654919

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDEgSnVuZSAyMDI2IDEyLjM5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDE3LzIyXSBkcm0vaTkxNS9kaXNwbGF5OiBGYWN0b3Igb3V0IGEgaGVscGVy
IHRvIG1vZGVzZXQgYSBwaXBlIHdpdGggYXRvbWljIHN0YXRlDQo+IA0KPiBGYWN0b3Igb3V0IGEg
aGVscGVyIG1vZGVzZXR0aW5nIGEgcGlwZSB0aGF0IGFjY2VwdHMgYW4gZXhpc3RpbmcgYXRvbWlj
DQo+IHN0YXRlLiBUaGlzIHByZXBhcmVzIGZvciBhIGZvbGxvdy11cCBjaGFuZ2UgdGhhdCBuZWVk
cyB0byBhbGxvY2F0ZSBpdHMNCj4gb3duIGF0b21pYyBzdGF0ZS4NCj4gDQo+IHYyOiBSZWJhc2Ug
b24gdXBzdHJlYW0gZHJtX2F0b21pY19zdGF0ZSAtPiBkcm1fYXRvbWljX2NvbW1pdCByZW5hbWUu
DQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4N
Cg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAzMCAr
KysrKysrKysrKysrKy0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmggfCAgMyArKw0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyNSBpbnNlcnRpb25zKCsp
LCA4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gaW5kZXggOGUyNjliNzFmMThlNC4uYjE1YzI4Njc1ZDI4OCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
QEAgLTU2NTgsMTggKzU2NTgsMTUgQEAgaW50IGludGVsX21vZGVzZXRfYWxsX3BpcGVzX2xhdGUo
c3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJcmV0dXJuIDA7DQo+ICB9DQo+
IA0KPiAtaW50IGludGVsX21vZGVzZXRfY29tbWl0X3BpcGVzKHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiAtCQkJICAgICAgIHU4IHBpcGVfbWFzaywNCj4gLQkJCSAgICAgICBzdHJ1
Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCkNCj4gK2ludCBpbnRlbF9tb2Rlc2V0X2Nv
bW1pdF9waXBlc19mb3JfYXRvbWljX3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmlu
dGVsX3N0YXRlLA0KPiArCQkJCQkJdTggcGlwZV9tYXNrLA0KPiArCQkJCQkJc3RydWN0IGRybV9t
b2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgpDQo+ICB7DQo+IC0Jc3RydWN0IGRybV9hdG9taWNfY29t
bWl0ICpzdGF0ZTsNCj4gKwlzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlID0gJmludGVs
X3N0YXRlLT5iYXNlOw0KPiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50
ZWxfZGlzcGxheShpbnRlbF9zdGF0ZSk7DQo+ICAJc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+
ICAJaW50IHJldDsNCj4gDQo+IC0Jc3RhdGUgPSBkcm1fYXRvbWljX2NvbW1pdF9hbGxvYyhkaXNw
bGF5LT5kcm0pOw0KPiAtCWlmICghc3RhdGUpDQo+IC0JCXJldHVybiAtRU5PTUVNOw0KPiAtDQo+
ICAJc3RhdGUtPmFjcXVpcmVfY3R4ID0gY3R4Ow0KPiAgCXRvX2ludGVsX2F0b21pY19zdGF0ZShz
dGF0ZSktPmludGVybmFsID0gdHJ1ZTsNCj4gDQo+IEBAIC01Njg3LDYgKzU2ODQsMjMgQEAgaW50
IGludGVsX21vZGVzZXRfY29tbWl0X3BpcGVzKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5
LA0KPiANCj4gIAlyZXQgPSBkcm1fYXRvbWljX2NvbW1pdChzdGF0ZSk7DQo+ICBvdXQ6DQo+ICsJ
cmV0dXJuIHJldDsNCj4gK30NCj4gKw0KPiAraW50IGludGVsX21vZGVzZXRfY29tbWl0X3BpcGVz
KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LA0KPiArCQkJICAgICAgIHU4IHBpcGVfbWFz
aywNCj4gKwkJCSAgICAgICBzdHJ1Y3QgZHJtX21vZGVzZXRfYWNxdWlyZV9jdHggKmN0eCkNCj4g
K3sNCj4gKwlzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQgKnN0YXRlOw0KPiArCWludCByZXQ7DQo+
ICsNCj4gKwlzdGF0ZSA9IGRybV9hdG9taWNfY29tbWl0X2FsbG9jKGRpc3BsYXktPmRybSk7DQo+
ICsJaWYgKCFzdGF0ZSkNCj4gKwkJcmV0dXJuIC1FTk9NRU07DQo+ICsNCj4gKwlyZXQgPSBpbnRl
bF9tb2Rlc2V0X2NvbW1pdF9waXBlc19mb3JfYXRvbWljX3N0YXRlKHRvX2ludGVsX2F0b21pY19z
dGF0ZShzdGF0ZSksDQo+ICsJCQkJCQkJICBwaXBlX21hc2ssIGN0eCk7DQo+ICsNCj4gIAlkcm1f
YXRvbWljX2NvbW1pdF9wdXQoc3RhdGUpOw0KPiANCj4gIAlyZXR1cm4gcmV0Ow0KPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBpbmRleCAxOTYzZGJj
ODAyMjE3Li45OGI1ODllODM2MGQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiBAQCAtNDc0LDYgKzQ3NCw5IEBAIGludCBpbnRlbF9t
b2Rlc2V0X3BpcGVzX2luX21hc2tfZWFybHkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUsDQo+ICAJCQkJICAgICAgY29uc3QgY2hhciAqcmVhc29uLCB1OCBwaXBlX21hc2spOw0KPiAg
aW50IGludGVsX21vZGVzZXRfYWxsX3BpcGVzX2xhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ICAJCQkJIGNvbnN0IGNoYXIgKnJlYXNvbik7DQo+ICtpbnQgaW50ZWxfbW9k
ZXNldF9jb21taXRfcGlwZXNfZm9yX2F0b21pY19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwNCj4gKwkJCQkJCXU4IHBpcGVfbWFzaywNCj4gKwkJCQkJCXN0cnVjdCBkcm1f
bW9kZXNldF9hY3F1aXJlX2N0eCAqY3R4KTsNCj4gIGludCBpbnRlbF9tb2Rlc2V0X2NvbW1pdF9w
aXBlcyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gIAkJCSAgICAgICB1OCBwaXBl
X21hc2ssDQo+ICAJCQkgICAgICAgc3RydWN0IGRybV9tb2Rlc2V0X2FjcXVpcmVfY3R4ICpjdHgp
Ow0KPiAtLQ0KPiAyLjQ5LjENCg0K
