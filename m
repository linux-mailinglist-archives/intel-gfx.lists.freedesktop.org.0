Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D758A840774
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 14:53:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C275410F745;
	Mon, 29 Jan 2024 13:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM10-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam10on2051.outbound.protection.outlook.com [40.107.93.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C19310E4A4;
 Tue, 23 Jan 2024 08:33:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iraya//8UcO2cE2edSjqWz3wQZtXRqoYJIo8AhpMA2IU6c92wwrdGoE2QM25sGqMpgvDBQPK29l/DDwVDD4611WkowfA9VgZjO6XQ3BT1THRS6/2ibAlBA8AsQyMgg6EZFpzpE+wI0chBw9u4z3/P5czCeXNDYIKKjeAKHz62muBifZn9GqKNuZ2teVKcA21Nbys5XV4mNTDD4RvW5JPsKaJdGrRjuIF0rQd9PoBB3DVp9lmHTG3nTJXi7J3xrFxz69qbX04IF74mMEGToaM8gnd3w7W+ENZEvpj51TFNrxW7JYeMFDghZTDg5hiMKGdxj2VD8rI2z1W15u5Wshb0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GF5H5hF3Tto4h9b7Ah84quNSn5EzNCrHDOTIHVbERss=;
 b=n4osFK63BGqhScwP6IjTU+1ztSOnx12OqqKvNdR7NEY49pHMSRvW29hXCr2F5X2rqdt4iEMneyfyJ3fIz9EfEXhV1VGdCIHHS3uApKxRBt3uSwtGgGRx1xt9NW0mB/WLE2JmIR0NJJha7jbXucdgfmfUdSLzvC7dLfVL7AG+PmW8ryuLqypSqIngT/7dgvRF579P//eD3u2/Dv3t++0C4R5pZYXYSUlRB5fasNcwayyNC77BQG2huxGJSl8DbqMi2IdBq+4fMpp1XI/72sJsTX32Uj25YqA+HOsaNWKV7Y1hGeCKJ5g5ulfbx8PHRF2JOxzc+ud6C+JVMxYHGoZbNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GF5H5hF3Tto4h9b7Ah84quNSn5EzNCrHDOTIHVbERss=;
 b=St0CcoBDmyTP4jPoUOCrm9Q2ReFpqT7Lm4y3tYET1kQt5PmehOA/TvkCnvw5rWcUh7iMY9dK53fTNpTbohBxd4Z+119/DjohVTpHXTyyj3XiLEV8MPXM6VbBltC3OT6PlK8jjv4j9YeTW+9KgwnI+ElBqS53QiZvkQPtq0miOXs=
Received: from MN2PR12MB4302.namprd12.prod.outlook.com (2603:10b6:208:1de::7)
 by SA1PR12MB8597.namprd12.prod.outlook.com (2603:10b6:806:251::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Tue, 23 Jan
 2024 08:33:01 +0000
Received: from MN2PR12MB4302.namprd12.prod.outlook.com
 ([fe80::b1:8793:d033:817d]) by MN2PR12MB4302.namprd12.prod.outlook.com
 ([fe80::b1:8793:d033:817d%4]) with mapi id 15.20.7202.034; Tue, 23 Jan 2024
 08:33:01 +0000
From: "Zhou, Xianrong" <Xianrong.Zhou@amd.com>
To: "Koenig, Christian" <Christian.Koenig@amd.com>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] mm: Remove double faults once write a device pfn
Thread-Topic: [PATCH] mm: Remove double faults once write a device pfn
Thread-Index: AQHaTORksVH6LxCo+EKPcWB1F5QgmrDljgKAgAF81vA=
Date: Tue, 23 Jan 2024 08:33:00 +0000
Message-ID: <MN2PR12MB4302C529B9F231F85539628EF1742@MN2PR12MB4302.namprd12.prod.outlook.com>
References: <20240122033210.713530-1-Xianrong.Zhou@amd.com>
 <5ed7d46b-ae26-43f2-81e0-91e3cfc0218a@amd.com>
In-Reply-To: <5ed7d46b-ae26-43f2-81e0-91e3cfc0218a@amd.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ActionId=dd4fabe3-1bcd-49b7-9496-55fba4aae368;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_ContentBits=0;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Enabled=true;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Method=Standard;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_Name=General;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SetDate=2024-01-23T08:01:05Z;
 MSIP_Label_4342314e-0df4-4b58-84bf-38bed6170a0f_SiteId=3dd8961f-e488-4e60-8e11-a82d994e183d;
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN2PR12MB4302:EE_|SA1PR12MB8597:EE_
x-ms-office365-filtering-correlation-id: 613fc9a9-dbaf-43a2-d5e6-08dc1bede900
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: r/7X94PvokoGPFzxB7pIdDJz8S4qUarAcIfaLT0I4Ph27QtXkhPvT1VACmLin+AmJ597YyKMK7taQpZ6uErvXvRTRZ8NnkQgSy63CIJAC5/oico6ViW2K7Y8dwLhLTHm3Ak0ATEVZ79Vkh8sicts5OymERIgycdwfJ/vBoLuvBnMiXGcsTzVkGzIny+y51vscbK9lmhmgNJiMCadmqyO7/paN09muwPfQjOc+mbXLtm6oJts4QXOck8vZVsJ9ZFo0R3grRcxvwzSMZAF9k17v7bE3WYtfx3GO04TtBSPCQxXWB7fJuZtTSbEf9jKqSh/sBrh4rar9hPgv6sDJgxPtEvQxuU0Q8L2Kq7JIjffMpFsTd20EXSrv1yrYEAnk9IJ0xEE7qAKtzWXv3/aq/OFcm6C3H37il4f4InpOX6kPOX4LeftxFSi0oWKwPPVjCtqMM+KHrGAg6I8Fsu6WPoVHPByPArS5bPOEbKx5A35nF9ZGfdUAaUkeKhSF5ZDrr/ktk76aKW+XgXRH+NtuoNaXrIaq91wYHt3QiBRo8WB2mS+HU8TbGOJS5YcWSUq4z9jb3uKND036VW0cWl8XU28AUUxx7EEsKaOR4NpboLZy4mt60Vq0B1/wCI4vyDS/Emb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR12MB4302.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(376002)(396003)(346002)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(55016003)(6506007)(71200400001)(7696005)(9686003)(122000001)(26005)(38100700002)(86362001)(33656002)(41300700001)(38070700009)(52536014)(83380400001)(7416002)(7406005)(8936002)(30864003)(2906002)(478600001)(5660300002)(4326008)(54906003)(66446008)(8676002)(66556008)(110136005)(66946007)(64756008)(316002)(66476007)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YzBDQk52dHRpdzd1TzQrL3FyU0QxNi9BNXFyak9mWVB4YmFKR2Y3TWttbkRN?=
 =?utf-8?B?bUdVVFQwYlZISDgxbFB6L0lTRDlOWEQwNmtqMWlmbUJ4UzFYQS9pR2JEbi9i?=
 =?utf-8?B?MS85MkJHdXpiektpbHBXc1R5Q0JJcFNLTWhZSVRjeGVxSVZCRmxQNlQ5ZVA5?=
 =?utf-8?B?M0J4S3VCMjk4Y0w1MHNLeU5IbVRjbThEUWI3K3E0bWpYQ1lxSkhNRnc5cUE2?=
 =?utf-8?B?NTJlOU9jdER0QnRESmJnRjJaSlVuL1hvMGI2UnBaRDFwYzUrN0ZzYXZSemlk?=
 =?utf-8?B?enEyVEp2OE4xcUwvb1dJMENiSW5LZXNsSjcxK3lTRWk0T0dNbHBOM1lJWU92?=
 =?utf-8?B?eFV5ZEhjeWxuTVFydWc1UHRIbEJ3T3lGdkFOK0d5WmFGbVpIRFJISVNWdWg2?=
 =?utf-8?B?THZHaFJHNDg1bk5oNFM0YVVTNzBWNHVtNmVqc1F2c0VkNTBYSE5hUFVuc1NV?=
 =?utf-8?B?dU1EbUVNeVNrRDJLK2dBdk5tbFJxRklIM1I0ZVZKeEpYTTc0emp6aThoRllI?=
 =?utf-8?B?R1dNZXdPSDhVSng5ZUJCdllEaCsrQTdGYkY1Zk9PV3JRMnNZZWE4UkRjdFBC?=
 =?utf-8?B?bzg5Zk9od2xXeWFBU2ZaN3lQdDRjMElCOVliNjFsN3QxeHhPUUYxRlVxMEZK?=
 =?utf-8?B?U3VRUFpqSHFHb01WdkJQdUpCKytZK3JaRkloYmQzSGVHK0Jid3RPWHZUSGlz?=
 =?utf-8?B?M3lxc3V4UXhmNlFPT0RIelNzbm1vRXVDYnlxcFdMNG9qQTNpTzM4R1BpbTFi?=
 =?utf-8?B?MDk2V2xOak9Pb1VONHl6TTFjZmtBdllsU2J2ZGsxRUNnOTVrd09LTmtyNFVY?=
 =?utf-8?B?Z1RwZTRPU3ZFTHlCQWRCK3h1YVhkVExhWm9hRi9JeEVOekNMMitHYWFhSkhO?=
 =?utf-8?B?L2lUcXY2TnNuZU9lYTVPTjJLdDI4QWxkR203UjZGYVJsMWhEY0xaUkNRMllt?=
 =?utf-8?B?dEdRMEV6akk2cCs3MU9qbmhJTmlaaFRLYWpXUi90T3BPcCtwdGZ3TnhxSWhO?=
 =?utf-8?B?VjRGNWhnbUZoOUZpNjJGeGFldU9wSGU4M2Fadm1ieHpsMnYzaENlYkxjZGI0?=
 =?utf-8?B?QThPUElEbzluQnUrUXFyQjBqVDRNMituRE8xTEYyZ3lHUWd4dkN6WEM3RGdE?=
 =?utf-8?B?aFFpcU9la292VzNUblJpMm5hYWh3d01sOXR5b2psaENvcDBYRm12aGxDSkln?=
 =?utf-8?B?VTFoL2c1eGlZQUNJS2trdmUxQmZXL296OXhsbVNmR3E1VGlUdzViS21YWnpW?=
 =?utf-8?B?eWFLZjdYZVJpVm9MN01XNmVUcXlwNURibEIvMEMybUNOeUtQMXRlNkVXVlVQ?=
 =?utf-8?B?Z3FoRXFGYm9RTGM0ZWtrMnkxVEJCRW9STWVqTmEyQzFFT21OTEZDZUx5ejZL?=
 =?utf-8?B?MlVta0VFUDJyTE9NQTB6UkYzNVRXZ1lIaWxJbW1ISEFFZldNNXFaMzFycndt?=
 =?utf-8?B?TkQrajdTQkZOSUQ1S3hXZEtSNVR4VmE2cC9ZYjl4S251MFowbWJNZkM2Ylpu?=
 =?utf-8?B?UjdGYUNjMmhxWE5pQWMxY0RIRC9zN01UMFBzcjVqVUpkK3BuOWRFZFRkc1Iy?=
 =?utf-8?B?T1AxZThmR3VKTGtYK2xOOTYyMUQ5dlNvUDB6RHE2bkZDc0lMU2N1VGxmZDlP?=
 =?utf-8?B?aXhoQXBnVU5nNnZCemU2bldieGVnRlAyS3AvYWFHQVNIMHd4WUlZYm5HUHpR?=
 =?utf-8?B?ZGFzaGxHYWVJWGlTQnpzT1R0NUkyQTI5YThhNUZzc3E2SzZQZVNqNGNKaG9t?=
 =?utf-8?B?S1dYMEZCZUE0MVE0cGRpTEMwUTl4NlVWYnRyUFdBME1Id3RSOHlzdXl6bndj?=
 =?utf-8?B?SW1FMmk0MkVmZGpiTnlvbG9BR0h0Mm1UWFk5YkZseFUzcVhxVS9ic0pyNUNI?=
 =?utf-8?B?TVdURmQ4RjlhNzYzTWFZWElINEZhME9LU1ozNC9EaEZHNjRxWjJvZ1Nsdnp3?=
 =?utf-8?B?R1hrOE95MWFRaVBTeC9KVFFXSFdteUhGTG1KNlB1V0M1TEljZXJMREJhZFBm?=
 =?utf-8?B?d0VvSXVMcEg5TWhnZG5aeUJUeG0wUzBzY0xESVlDUjBiQlRDS2JPcmhBRmJI?=
 =?utf-8?B?VUxOdERLNm5wM2ZkQVliblFtT21aRnR0S3hIajdsVkpPN0RhRGx2aTBBVURM?=
 =?utf-8?Q?LoJ8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4302.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 613fc9a9-dbaf-43a2-d5e6-08dc1bede900
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2024 08:33:00.9725 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7U+f/ytN63LGOva4ufLO/iQT87tAvUa46tKJnmauGnpM5arnLVAO9f1i2mZwC3UutYwRguKToBN99kvh2KmAFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB8597
X-Mailman-Approved-At: Mon, 29 Jan 2024 13:53:33 +0000
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
Cc: "lee@kernel.org" <lee@kernel.org>,
 "kherbst@redhat.com" <kherbst@redhat.com>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 "dave.hansen@linux.intel.com" <dave.hansen@linux.intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Huang,
 Ray" <Ray.Huang@amd.com>, "hpa@zytor.com" <hpa@zytor.com>,
 "zack.rusin@broadcom.com" <zack.rusin@broadcom.com>,
 "airlied@gmail.com" <airlied@gmail.com>, "Zhang,
 GuoQing \(Sam\)" <GuoQing.Zhang@amd.com>, "Li, Huazeng" <Huazeng.Li@amd.com>,
 "x86@kernel.org" <x86@kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>, "Xu,
 Colin" <Colin.Xu@amd.com>, "mingo@redhat.com" <mingo@redhat.com>,
 "dakr@redhat.com" <dakr@redhat.com>,
 "matthew.auld@intel.com" <matthew.auld@intel.com>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>, "Yang, Philip" <Philip.Yang@amd.com>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "bp@alien8.de" <bp@alien8.de>, "mripard@kernel.org" <mripard@kernel.org>,
 "luto@kernel.org" <luto@kernel.org>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "Zhu, James" <James.Zhu@amd.com>,
 "surenb@google.com" <surenb@google.com>, "Liu, Monk" <Monk.Liu@amd.com>,
 "Kuehling, Felix" <Felix.Kuehling@amd.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Deucher, 
 Alexander" <Alexander.Deucher@amd.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "SHANMUGAM,
 SRINIVASAN" <SRINIVASAN.SHANMUGAM@amd.com>,
 "nirmoy.das@intel.com" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

W0FNRCBPZmZpY2lhbCBVc2UgT25seSAtIEdlbmVyYWxdDQoNCj4gPiBUaGUgdm1mX2luc2VydF9w
Zm5fcHJvdCBjb3VsZCBjYXVzZSB1bm5lY2Vzc2FyeSBkb3VibGUgZmF1bHRzIG9uIGENCj4gPiBk
ZXZpY2UgcGZuLiBCZWNhdXNlIGN1cnJlbnRseSB0aGUgdm1mX2luc2VydF9wZm5fcHJvdCBkb2Vz
IG5vdCBtYWtlDQo+ID4gdGhlIHBmbiB3cml0YWJsZSBzbyB0aGUgcHRlIGVudHJ5IGlzIG5vcm1h
bGx5IHJlYWQtb25seSBvciBkaXJ0eQ0KPiA+IGNhdGNoaW5nLg0KPg0KPiBXaGF0PyBIb3cgZG8g
eW91IGdvdCB0byB0aGlzIGNvbmNsdXNpb24/DQoNClNvcnJ5LiBJIGRpZCBub3QgbWVudGlvbiB0
aGF0IHRoaXMgcHJvYmxlbSBvbmx5IGV4aXN0cyBvbiBhcm02NCBwbGF0Zm9ybS4NCkJlY2F1c2Ug
b24gYXJtNjQgcGxhdGZvcm0gdGhlIFBURV9SRE9OTFkgaXMgYXV0b21hdGljYWxseSBhdHRhY2hl
ZCB0bw0KdGhlIHVzZXJzcGFjZSBwdGUgZW50cmllcyBldmVuIHRocm91Z2ggVk1fV1JJVEUgKyBW
TV9TSEFSRS4NClRoZSAgUFRFX1JET05MWSBuZWVkcyB0byBiZSBjbGVhcmVkIGluIHZtZl9pbnNl
cnRfcGZuX3Byb3QuIEhvd2V2ZXINCnZtZl9pbnNlcnRfcGZuX3Byb3QgZG8gbm90IG1ha2UgdGhl
IHB0ZSB3cml0YWJsZSBwYXNzaW5nIGZhbHNlIEBta3dyaXRlDQp0byBpbnNlcnRfcGZuLg0KDQo+
DQo+ID4gVGhlIGZpcnN0IGZhdWx0IG9ubHkgc2V0cyB1cCB0aGUgcHRlIGVudHJ5IHdoaWNoIGFj
dHVhbGx5IGlzIGRpcnR5DQo+ID4gY2F0Y2hpbmcuIEFuZCB0aGUgc2Vjb25kIGltbWVkaWF0ZSBm
YXVsdCB0byB0aGUgcGZuIGR1ZSB0byBmaXJzdCBkaXJ0eQ0KPiA+IGNhdGNoaW5nIHdoZW4gdGhl
IGNwdSByZS1leGVjdXRlIHRoZSBzdG9yZSBpbnN0cnVjdGlvbi4NCj4NCj4gSXQgY291bGQgYmUg
dGhhdCB0aGlzIGlzIGRvbmUgdG8gd29yayBhcm91bmQgc29tZSBodyBiZWhhdmlvciwgYnV0IG5v
dA0KPiBiZWNhdXNlIG9mIGRpcnR5IGNhdGNoaW5nLg0KPg0KPiA+IE5vcm1hbGx5IGlmIHRoZSBk
cml2ZXJzIGNhbGwgdm1mX2luc2VydF9wZm5fcHJvdCBhbmQgYWxzbyBzdXBwbHkNCj4gPiAncGZu
X21rd3JpdGUnIGNhbGxiYWNrIHdpdGhpbiB2bV9vcGVyYXRpb25zX3N0cnVjdCB3aGljaCByZXF1
aXJlcyB0aGUNCj4gPiBwdGUgdG8gYmUgZGlydHkgY2F0Y2hpbmcgdGhlbiB0aGUgdm1mX2luc2Vy
dF9wZm5fcHJvdCBhbmQgdGhlIGRvdWJsZQ0KPiA+IGZhdWx0IGFyZSByZWFzb25hYmxlLiBJdCBp
cyBub3QgYSBwcm9ibGVtLg0KPg0KPiBXZWxsLCBhcyBmYXIgYXMgSSBjYW4gc2VlIHRoYXQgYmVo
YXZpb3IgYWJzb2x1dGVseSBkb2Vzbid0IG1ha2Ugc2Vuc2UuDQo+DQo+IFdoZW4gcGZuX21rd3Jp
dGUgaXMgcmVxdWVzdGVkIHRoZW4gdGhlIGRyaXZlciBzaG91bGQgdXNlIFBBR0VfQ09QWSwgd2hp
Y2gNCj4gaXMgZXhhY3RseSB3aGF0IFZNV0dGWCAodGhlIG9ubHkgZHJpdmVyIHVzaW5nIGRpcnR5
IHRyYWNraW5nKSBpcyBkb2luZy4NCj4NCj4gRXZlcnlib2R5IGVsc2UgdXNlcyBQQUdFX1NIQVJF
RCB3aGljaCBzaG91bGQgbWFrZSB0aGUgcHRlIHdyaXRlYWJsZQ0KPiBpbW1lZGlhdGVseS4NCj4N
Cj4gUmVnYXJkcywNCj4gQ2hyaXN0aWFuLg0KPg0KPiA+DQo+ID4gSG93ZXZlciB0aGUgbW9zdCBv
ZiBkcml2ZXJzIGNhbGxpbmcgdm1mX2luc2VydF9wZm5fcHJvdCBkbyBub3Qgc3VwcGx5DQo+ID4g
dGhlICdwZm5fbWt3cml0ZScgY2FsbGJhY2sgc28gdGhhdCB0aGUgc2Vjb25kIGZhdWx0IGlzIHVu
bmVjZXNzYXJ5Lg0KPiA+DQo+ID4gU28ganVzdCBsaWtlIHZtZl9pbnNlcnRfbWl4ZWQgYW5kIHZt
Zl9pbnNlcnRfbWl4ZWRfbWt3cml0ZSBwYWlyLCB3ZQ0KPiA+IHNob3VsZCBhbHNvIHN1cHBseSB2
bWZfaW5zZXJ0X3Bmbl9ta3dyaXRlIGZvciBkcml2ZXJzIGFzIHdlbGwuDQo+ID4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBYaWFucm9uZyBaaG91IDxYaWFucm9uZy5aaG91QGFtZC5jb20+DQo+ID4gLS0t
DQo+ID4gICBhcmNoL3g4Ni9lbnRyeS92ZHNvL3ZtYS5jICAgICAgICAgICAgICAgICAgfCAgMyAr
Ky0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9nZW0uYyAgICB8ICAy
ICstDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMgICAgfCAg
MiArLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91dmVhdV9nZW0uYyAgICAgIHwg
IDIgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2dlbS5jICAgICAgICB8
ICAyICstDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vdHRtL3R0bV9ib192bS5jICAgICAgICAgICAg
fCAgOCArKysrKy0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL3Ztd2dmeC92bXdnZnhfcGFnZV9k
aXJ0eS5jIHwgIDggKysrKystLS0NCj4gPiAgIGluY2x1ZGUvZHJtL3R0bS90dG1fYm8uaCAgICAg
ICAgICAgICAgICAgICB8ICAzICsrLQ0KPiA+ICAgaW5jbHVkZS9saW51eC9tbS5oICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgIDIgKy0NCj4gPiAgIG1tL21lbW9yeS5jICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8IDE0ICsrKysrKysrKysrLS0tDQo+ID4gICAxMCBmaWxlcyBjaGFu
Z2VkLCAzMCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL3g4Ni9lbnRyeS92ZHNvL3ZtYS5jIGIvYXJjaC94ODYvZW50cnkvdmRzby92bWEu
Yw0KPiA+IGluZGV4IDc2NDU3MzBkYzIyOC4uZGQyNDMxYzI5NzVmIDEwMDY0NA0KPiA+IC0tLSBh
L2FyY2gveDg2L2VudHJ5L3Zkc28vdm1hLmMNCj4gPiArKysgYi9hcmNoL3g4Ni9lbnRyeS92ZHNv
L3ZtYS5jDQo+ID4gQEAgLTE4NSw3ICsxODUsOCBAQCBzdGF0aWMgdm1fZmF1bHRfdCB2dmFyX2Zh
dWx0KGNvbnN0IHN0cnVjdA0KPiB2bV9zcGVjaWFsX21hcHBpbmcgKnNtLA0KPiA+ICAgICAgICAg
ICAgIGlmIChwdnRpICYmIHZjbG9ja193YXNfdXNlZChWRFNPX0NMT0NLTU9ERV9QVkNMT0NLKSkN
Cj4gew0KPiA+ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIHZtZl9pbnNlcnRfcGZuX3Byb3Qo
dm1hLCB2bWYtPmFkZHJlc3MsDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgX19wYShwdnRpKSA+PiBQQUdFX1NISUZULA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHBncHJvdF9kZWNyeXB0ZWQodm1hLQ0KPiA+dm1fcGFnZV9wcm90KSk7DQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdwcm90X2RlY3J5cHRlZCh2
bWEtDQo+ID52bV9wYWdlX3Byb3QpLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHRydWUpOw0KPiA+ICAgICAgICAgICAgIH0NCj4gPiAgICAgfSBlbHNlIGlmIChzeW1f
b2Zmc2V0ID09IGltYWdlLT5zeW1faHZjbG9ja19wYWdlKSB7DQo+ID4gICAgICAgICAgICAgcGZu
ID0gaHZfZ2V0X3RzY19wZm4oKTsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Ft
ZC9hbWRncHUvYW1kZ3B1X2dlbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9h
bWRncHVfZ2VtLmMNCj4gPiBpbmRleCA0OWE1ZjFjNzNiM2UuLmFkY2IyMGQ5ZTYyNCAxMDA2NDQN
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZ2VtLmMNCj4gPiBAQCAtNjQs
NyArNjQsNyBAQCBzdGF0aWMgdm1fZmF1bHRfdCBhbWRncHVfZ2VtX2ZhdWx0KHN0cnVjdCB2bV9m
YXVsdA0KPiAqdm1mKQ0KPiA+ICAgICAgICAgICAgIH0NCj4gPg0KPiA+ICAgICAgICAgICAgIHJl
dCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHZtZi0+dm1hLQ0KPiA+dm1fcGFnZV9w
cm90LA0KPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUVE1f
Qk9fVk1fTlVNX1BSRUZBVUxUKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgVFRNX0JPX1ZNX05VTV9QUkVGQVVMVCwNCj4gdHJ1ZSk7DQo+ID4NCj4gPiAg
ICAgICAgICAgICBkcm1fZGV2X2V4aXQoaWR4KTsNCj4gPiAgICAgfSBlbHNlIHsNCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiBpbmRleCA5MjI3Zjgx
NDZhNTguLmM2ZjEzYWU2YzMwOCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fdHRtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fdHRtLmMNCj4gPiBAQCAtMTExNCw3ICsxMTE0LDcgQEAgc3RhdGljIHZtX2ZhdWx0
X3Qgdm1fZmF1bHRfdHRtKHN0cnVjdCB2bV9mYXVsdA0KPiA+ICp2bWYpDQo+ID4NCj4gPiAgICAg
aWYgKGRybV9kZXZfZW50ZXIoZGV2LCAmaWR4KSkgew0KPiA+ICAgICAgICAgICAgIHJldCA9IHR0
bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHZtZi0+dm1hLQ0KPiA+dm1fcGFnZV9wcm90LA0K
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBUVE1fQk9fVk1f
TlVNX1BSRUZBVUxUKTsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgVFRNX0JPX1ZNX05VTV9QUkVGQVVMVCwNCj4gdHJ1ZSk7DQo+ID4gICAgICAgICAgICAg
ZHJtX2Rldl9leGl0KGlkeCk7DQo+ID4gICAgIH0gZWxzZSB7DQo+ID4gICAgICAgICAgICAgcmV0
ID0gdHRtX2JvX3ZtX2R1bW15X3BhZ2Uodm1mLCB2bWYtPnZtYS0NCj4gPnZtX3BhZ2VfcHJvdCk7
IGRpZmYNCj4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmMNCj4gPiBpbmRleCA0
OWMyYmNiZWYxMjkuLjdlMTQ1Mzc2MmVjOSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL25vdXZl
YXUvbm91dmVhdV9nZW0uYw0KPiA+IEBAIC01Niw3ICs1Niw3IEBAIHN0YXRpYyB2bV9mYXVsdF90
IG5vdXZlYXVfdHRtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdA0KPiA+ICp2bWYpDQo+ID4NCj4gPiAg
ICAgbm91dmVhdV9ib19kZWxfaW9fcmVzZXJ2ZV9scnUoYm8pOw0KPiA+ICAgICBwcm90ID0gdm1f
Z2V0X3BhZ2VfcHJvdCh2bWEtPnZtX2ZsYWdzKTsNCj4gPiAtICAgcmV0ID0gdHRtX2JvX3ZtX2Zh
dWx0X3Jlc2VydmVkKHZtZiwgcHJvdCwNCj4gVFRNX0JPX1ZNX05VTV9QUkVGQVVMVCk7DQo+ID4g
KyAgIHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsDQo+IFRUTV9CT19W
TV9OVU1fUFJFRkFVTFQsDQo+ID4gK3RydWUpOw0KPiA+ICAgICBub3V2ZWF1X2JvX2FkZF9pb19y
ZXNlcnZlX2xydShibyk7DQo+ID4gICAgIGlmIChyZXQgPT0gVk1fRkFVTFRfUkVUUlkgJiYgISh2
bWYtPmZsYWdzICYNCj4gRkFVTFRfRkxBR19SRVRSWV9OT1dBSVQpKQ0KPiA+ICAgICAgICAgICAg
IHJldHVybiByZXQ7DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFk
ZW9uX2dlbS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vcmFkZW9uL3JhZGVvbl9nZW0uYw0KPiA+
IGluZGV4IDNmZWMzYWNkYWYyOC4uYjIxY2YwMGFlMTYyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2dlbS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3JhZGVvbi9yYWRlb25fZ2VtLmMNCj4gPiBAQCAtNjIsNyArNjIsNyBAQCBzdGF0aWMgdm1fZmF1
bHRfdCByYWRlb25fZ2VtX2ZhdWx0KHN0cnVjdCB2bV9mYXVsdA0KPiAqdm1mKQ0KPiA+ICAgICAg
ICAgICAgIGdvdG8gdW5sb2NrX3Jlc3Y7DQo+ID4NCj4gPiAgICAgcmV0ID0gdHRtX2JvX3ZtX2Zh
dWx0X3Jlc2VydmVkKHZtZiwgdm1mLT52bWEtPnZtX3BhZ2VfcHJvdCwNCj4gPiAtICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIFRUTV9CT19WTV9OVU1fUFJFRkFVTFQpOw0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgVFRNX0JPX1ZNX05VTV9QUkVGQVVMVCwg
dHJ1ZSk7DQo+ID4gICAgIGlmIChyZXQgPT0gVk1fRkFVTFRfUkVUUlkgJiYgISh2bWYtPmZsYWdz
ICYNCj4gRkFVTFRfRkxBR19SRVRSWV9OT1dBSVQpKQ0KPiA+ICAgICAgICAgICAgIGdvdG8gdW5s
b2NrX21jbGs7DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1f
Ym9fdm0uYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL3R0bS90dG1fYm9fdm0uYyBpbmRleA0KPiA0
MjEyYjhjOTFkZDQuLjdkMTRhN2QyNjdhYQ0KPiA+IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS90dG0vdHRtX2JvX3ZtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdHRtL3R0
bV9ib192bS5jDQo+ID4gQEAgLTE2Nyw2ICsxNjcsNyBAQCBFWFBPUlRfU1lNQk9MKHR0bV9ib192
bV9yZXNlcnZlKTsNCj4gPiAgICAqIEBudW1fcHJlZmF1bHQ6IE1heGltdW0gbnVtYmVyIG9mIHBy
ZWZhdWx0IHBhZ2VzLiBUaGUgY2FsbGVyIG1heQ0KPiB3YW50IHRvDQo+ID4gICAgKiBzcGVjaWZ5
IHRoaXMgYmFzZWQgb24gbWFkdmljZSBzZXR0aW5ncyBhbmQgdGhlIHNpemUgb2YgdGhlIEdQVSBv
YmplY3QNCj4gPiAgICAqIGJhY2tlZCBieSB0aGUgbWVtb3J5Lg0KPiA+ICsgKiBAbWt3cml0ZTog
bWFrZSB0aGUgcGZuIG9yIHBhZ2Ugd3JpdGFibGUNCj4gPiAgICAqDQo+ID4gICAgKiBUaGlzIGZ1
bmN0aW9uIGluc2VydHMgb25lIG9yIG1vcmUgcGFnZSB0YWJsZSBlbnRyaWVzIHBvaW50aW5nIHRv
IHRoZQ0KPiA+ICAgICogbWVtb3J5IGJhY2tpbmcgdGhlIGJ1ZmZlciBvYmplY3QsIGFuZCB0aGVu
IHJldHVybnMgYSByZXR1cm4gY29kZQ0KPiA+IEBAIC0xODAsNyArMTgxLDggQEAgRVhQT1JUX1NZ
TUJPTCh0dG1fYm9fdm1fcmVzZXJ2ZSk7DQo+ID4gICAgKi8NCj4gPiAgIHZtX2ZhdWx0X3QgdHRt
X2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCB2bV9mYXVsdCAqdm1mLA0KPiA+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgcGdwcm90X3QgcHJvdCwNCj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHBnb2ZmX3QgbnVtX3ByZWZhdWx0KQ0KPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcGdvZmZfdCBudW1fcHJlZmF1bHQsDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBib29sIG1rd3JpdGUpDQo+ID4gICB7DQo+ID4gICAgIHN0
cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hID0gdm1mLT52bWE7DQo+ID4gICAgIHN0cnVjdCB0dG1f
YnVmZmVyX29iamVjdCAqYm8gPSB2bWEtPnZtX3ByaXZhdGVfZGF0YTsgQEAgLTI2Myw3DQo+ID4g
KzI2NSw3IEBAIHZtX2ZhdWx0X3QgdHRtX2JvX3ZtX2ZhdWx0X3Jlc2VydmVkKHN0cnVjdCB2bV9m
YXVsdCAqdm1mLA0KPiA+ICAgICAgICAgICAgICAqIGF0IGFyYml0cmFyeSB0aW1lcyB3aGlsZSB0
aGUgZGF0YSBpcyBtbWFwJ2VkLg0KPiA+ICAgICAgICAgICAgICAqIFNlZSB2bWZfaW5zZXJ0X3Bm
bl9wcm90KCkgZm9yIGEgZGlzY3Vzc2lvbi4NCj4gPiAgICAgICAgICAgICAgKi8NCj4gPiAtICAg
ICAgICAgICByZXQgPSB2bWZfaW5zZXJ0X3Bmbl9wcm90KHZtYSwgYWRkcmVzcywgcGZuLCBwcm90
KTsNCj4gPiArICAgICAgICAgICByZXQgPSB2bWZfaW5zZXJ0X3Bmbl9wcm90KHZtYSwgYWRkcmVz
cywgcGZuLCBwcm90LCBta3dyaXRlKTsNCj4gPg0KPiA+ICAgICAgICAgICAgIC8qIE5ldmVyIGVy
cm9yIG9uIHByZWZhdWx0ZWQgUFRFcyAqLw0KPiA+ICAgICAgICAgICAgIGlmICh1bmxpa2VseSgo
cmV0ICYgVk1fRkFVTFRfRVJST1IpKSkgeyBAQCAtMzEyLDcgKzMxNCw3DQo+IEBADQo+ID4gdm1f
ZmF1bHRfdCB0dG1fYm9fdm1fZHVtbXlfcGFnZShzdHJ1Y3Qgdm1fZmF1bHQgKnZtZiwgcGdwcm90
X3QgcHJvdCkNCj4gPiAgICAgLyogUHJlZmF1bHQgdGhlIGVudGlyZSBWTUEgcmFuZ2UgcmlnaHQg
YXdheSB0byBhdm9pZCBmdXJ0aGVyIGZhdWx0cyAqLw0KPiA+ICAgICBmb3IgKGFkZHJlc3MgPSB2
bWEtPnZtX3N0YXJ0OyBhZGRyZXNzIDwgdm1hLT52bV9lbmQ7DQo+ID4gICAgICAgICAgYWRkcmVz
cyArPSBQQUdFX1NJWkUpDQo+ID4gLSAgICAgICAgICAgcmV0ID0gdm1mX2luc2VydF9wZm5fcHJv
dCh2bWEsIGFkZHJlc3MsIHBmbiwgcHJvdCk7DQo+ID4gKyAgICAgICAgICAgcmV0ID0gdm1mX2lu
c2VydF9wZm5fcHJvdCh2bWEsIGFkZHJlc3MsIHBmbiwgcHJvdCwgdHJ1ZSk7DQo+ID4NCj4gPiAg
ICAgcmV0dXJuIHJldDsNCj4gPiAgIH0NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L3Ztd2dmeC92bXdnZnhfcGFnZV9kaXJ0eS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4
L3Ztd2dmeF9wYWdlX2RpcnR5LmMNCj4gPiBpbmRleCA3NGZmMjgxMmQ2NmEuLmJiOGU0YjY0MTY4
MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9wYWdlX2Rp
cnR5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdm13Z2Z4L3Ztd2dmeF9wYWdlX2RpcnR5
LmMNCj4gPiBAQCAtNDUyLDEyICs0NTIsMTQgQEAgdm1fZmF1bHRfdCB2bXdfYm9fdm1fZmF1bHQo
c3RydWN0IHZtX2ZhdWx0DQo+ICp2bWYpDQo+ID4gICAgICAqIHN1cmUgdGhlIHBhZ2UgcHJvdGVj
dGlvbiBpcyB3cml0ZS1lbmFibGVkIHNvIHdlIGRvbid0IGdldA0KPiA+ICAgICAgKiBhIGxvdCBv
ZiB1bm5lY2Vzc2FyeSB3cml0ZSBmYXVsdHMuDQo+ID4gICAgICAqLw0KPiA+IC0gICBpZiAodmJv
LT5kaXJ0eSAmJiB2Ym8tPmRpcnR5LT5tZXRob2QgPT0gVk1XX0JPX0RJUlRZX01LV1JJVEUpDQo+
ID4gKyAgIGlmICh2Ym8tPmRpcnR5ICYmIHZiby0+ZGlydHktPm1ldGhvZCA9PSBWTVdfQk9fRElS
VFlfTUtXUklURSkNCj4gew0KPiA+ICAgICAgICAgICAgIHByb3QgPSB2bV9nZXRfcGFnZV9wcm90
KHZtYS0+dm1fZmxhZ3MgJiB+Vk1fU0hBUkVEKTsNCj4gPiAtICAgZWxzZQ0KPiA+ICsgICAgICAg
ICAgIHJldCA9IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsIG51bV9wcmVmYXVs
dCwNCj4gZmFsc2UpOw0KPiA+ICsgICB9IGVsc2Ugew0KPiA+ICAgICAgICAgICAgIHByb3QgPSB2
bV9nZXRfcGFnZV9wcm90KHZtYS0+dm1fZmxhZ3MpOw0KPiA+ICsgICAgICAgICAgIHJldCA9IHR0
bV9ib192bV9mYXVsdF9yZXNlcnZlZCh2bWYsIHByb3QsIG51bV9wcmVmYXVsdCwNCj4gdHJ1ZSk7
DQo+ID4gKyAgIH0NCj4gPg0KPiA+IC0gICByZXQgPSB0dG1fYm9fdm1fZmF1bHRfcmVzZXJ2ZWQo
dm1mLCBwcm90LCBudW1fcHJlZmF1bHQpOw0KPiA+ICAgICBpZiAocmV0ID09IFZNX0ZBVUxUX1JF
VFJZICYmICEodm1mLT5mbGFncyAmDQo+IEZBVUxUX0ZMQUdfUkVUUllfTk9XQUlUKSkNCj4gPiAg
ICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJt
L3R0bS90dG1fYm8uaCBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm8uaCBpbmRleA0KPiA+IDAyMjNh
NDFhNjRiMi4uNjZlMjkzZGI2OWVlIDEwMDY0NA0KPiA+IC0tLSBhL2luY2x1ZGUvZHJtL3R0bS90
dG1fYm8uaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL3R0bS90dG1fYm8uaA0KPiA+IEBAIC0zODYs
NyArMzg2LDggQEAgdm1fZmF1bHRfdCB0dG1fYm9fdm1fcmVzZXJ2ZShzdHJ1Y3QNCj4gdHRtX2J1
ZmZlcl9vYmplY3QgKmJvLA0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICBzdHJ1Y3Qgdm1f
ZmF1bHQgKnZtZik7DQo+ID4gICB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdF9yZXNlcnZlZChz
dHJ1Y3Qgdm1fZmF1bHQgKnZtZiwNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHBncHJvdF90IHByb3QsDQo+ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBwZ29m
Zl90IG51bV9wcmVmYXVsdCk7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBw
Z29mZl90IG51bV9wcmVmYXVsdCwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGJvb2wgbWt3cml0ZSk7DQo+ID4gICB2bV9mYXVsdF90IHR0bV9ib192bV9mYXVsdChzdHJ1Y3Qg
dm1fZmF1bHQgKnZtZik7DQo+ID4gICB2b2lkIHR0bV9ib192bV9vcGVuKHN0cnVjdCB2bV9hcmVh
X3N0cnVjdCAqdm1hKTsNCj4gPiAgIHZvaWQgdHRtX2JvX3ZtX2Nsb3NlKHN0cnVjdCB2bV9hcmVh
X3N0cnVjdCAqdm1hKTsgZGlmZiAtLWdpdA0KPiA+IGEvaW5jbHVkZS9saW51eC9tbS5oIGIvaW5j
bHVkZS9saW51eC9tbS5oIGluZGV4DQo+ID4gZjVhOTdkZWM1MTY5Li5mODg2OGUyOGVhMDQgMTAw
NjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9saW51eC9tbS5oDQo+ID4gKysrIGIvaW5jbHVkZS9saW51
eC9tbS5oDQo+ID4gQEAgLTM1NTMsNyArMzU1Myw3IEBAIGludCB2bV9tYXBfcGFnZXNfemVybyhz
dHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QNCj4gKnZtYSwgc3RydWN0IHBhZ2UgKipwYWdlcywNCj4gPiAg
IHZtX2ZhdWx0X3Qgdm1mX2luc2VydF9wZm4oc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsIHVu
c2lnbmVkIGxvbmcNCj4gYWRkciwNCj4gPiAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxv
bmcgcGZuKTsNCj4gPiAgIHZtX2ZhdWx0X3Qgdm1mX2luc2VydF9wZm5fcHJvdChzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKnZtYSwgdW5zaWduZWQNCj4gbG9uZyBhZGRyLA0KPiA+IC0gICAgICAgICAg
ICAgICAgICAgdW5zaWduZWQgbG9uZyBwZm4sIHBncHJvdF90IHBncHJvdCk7DQo+ID4gKyAgICAg
ICAgICAgICAgICAgICB1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcGdwcm90LCBib29sIG1r
d3JpdGUpOw0KPiA+ICAgdm1fZmF1bHRfdCB2bWZfaW5zZXJ0X21peGVkKHN0cnVjdCB2bV9hcmVh
X3N0cnVjdCAqdm1hLCB1bnNpZ25lZCBsb25nDQo+IGFkZHIsDQo+ID4gICAgICAgICAgICAgICAg
ICAgICBwZm5fdCBwZm4pOw0KPiA+ICAgdm1fZmF1bHRfdCB2bWZfaW5zZXJ0X21peGVkX21rd3Jp
dGUoc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsIGRpZmYNCj4gPiAtLWdpdCBhL21tL21lbW9y
eS5jIGIvbW0vbWVtb3J5LmMgaW5kZXggN2UxZjQ4NDk0NjNhLi4yYzI4ZjFhMzQ5ZmYNCj4gPiAx
MDA2NDQNCj4gPiAtLS0gYS9tbS9tZW1vcnkuYw0KPiA+ICsrKyBiL21tL21lbW9yeS5jDQo+ID4g
QEAgLTIxOTUsNiArMjE5NSw3IEBAIHN0YXRpYyB2bV9mYXVsdF90IGluc2VydF9wZm4oc3RydWN0
DQo+IHZtX2FyZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwNCj4gPiAgICAqIEBh
ZGRyOiB0YXJnZXQgdXNlciBhZGRyZXNzIG9mIHRoaXMgcGFnZQ0KPiA+ICAgICogQHBmbjogc291
cmNlIGtlcm5lbCBwZm4NCj4gPiAgICAqIEBwZ3Byb3Q6IHBncHJvdCBmbGFncyBmb3IgdGhlIGlu
c2VydGVkIHBhZ2UNCj4gPiArICogQG1rd3JpdGU6IG1ha2UgdGhlIHBmbiB3cml0YWJsZQ0KPiA+
ICAgICoNCj4gPiAgICAqIFRoaXMgaXMgZXhhY3RseSBsaWtlIHZtZl9pbnNlcnRfcGZuKCksIGV4
Y2VwdCB0aGF0IGl0IGFsbG93cyBkcml2ZXJzDQo+ID4gICAgKiB0byBvdmVycmlkZSBwZ3Byb3Qg
b24gYSBwZXItcGFnZSBiYXNpcy4NCj4gPiBAQCAtMjIyMyw3ICsyMjI0LDcgQEAgc3RhdGljIHZt
X2ZhdWx0X3QgaW5zZXJ0X3BmbihzdHJ1Y3QNCj4gdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgdW5zaWdu
ZWQgbG9uZyBhZGRyLA0KPiA+ICAgICogUmV0dXJuOiB2bV9mYXVsdF90IHZhbHVlLg0KPiA+ICAg
ICovDQo+ID4gICB2bV9mYXVsdF90IHZtZl9pbnNlcnRfcGZuX3Byb3Qoc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEsIHVuc2lnbmVkDQo+IGxvbmcgYWRkciwNCj4gPiAtICAgICAgICAgICAgICAg
ICAgIHVuc2lnbmVkIGxvbmcgcGZuLCBwZ3Byb3RfdCBwZ3Byb3QpDQo+ID4gKyAgICAgICAgICAg
ICAgICAgICB1bnNpZ25lZCBsb25nIHBmbiwgcGdwcm90X3QgcGdwcm90LCBib29sIG1rd3JpdGUp
DQo+ID4gICB7DQo+ID4gICAgIC8qDQo+ID4gICAgICAqIFRlY2huaWNhbGx5LCBhcmNoaXRlY3R1
cmVzIHdpdGggcHRlX3NwZWNpYWwgY2FuIGF2b2lkIGFsbCB0aGVzZQ0KPiA+IEBAIC0yMjQ2LDcg
KzIyNDcsNyBAQCB2bV9mYXVsdF90IHZtZl9pbnNlcnRfcGZuX3Byb3Qoc3RydWN0DQo+IHZtX2Fy
ZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcgYWRkciwNCj4gPiAgICAgdHJhY2tfcGZuX2lu
c2VydCh2bWEsICZwZ3Byb3QsIF9fcGZuX3RvX3Bmbl90KHBmbiwgUEZOX0RFVikpOw0KPiA+DQo+
ID4gICAgIHJldHVybiBpbnNlcnRfcGZuKHZtYSwgYWRkciwgX19wZm5fdG9fcGZuX3QocGZuLCBQ
Rk5fREVWKSwgcGdwcm90LA0KPiA+IC0gICAgICAgICAgICAgICAgICAgZmFsc2UpOw0KPiA+ICsg
ICAgICAgICAgICAgICAgICAgbWt3cml0ZSk7DQo+ID4gICB9DQo+ID4gICBFWFBPUlRfU1lNQk9M
KHZtZl9pbnNlcnRfcGZuX3Byb3QpOw0KPiA+DQo+ID4gQEAgLTIyNzMsMTAgKzIyNzQsMTcgQEAg
RVhQT1JUX1NZTUJPTCh2bWZfaW5zZXJ0X3Bmbl9wcm90KTsNCj4gPiAgIHZtX2ZhdWx0X3Qgdm1m
X2luc2VydF9wZm4oc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsIHVuc2lnbmVkIGxvbmcNCj4g
YWRkciwNCj4gPiAgICAgICAgICAgICAgICAgICAgIHVuc2lnbmVkIGxvbmcgcGZuKQ0KPiA+ICAg
ew0KPiA+IC0gICByZXR1cm4gdm1mX2luc2VydF9wZm5fcHJvdCh2bWEsIGFkZHIsIHBmbiwgdm1h
LT52bV9wYWdlX3Byb3QpOw0KPiA+ICsgICByZXR1cm4gdm1mX2luc2VydF9wZm5fcHJvdCh2bWEs
IGFkZHIsIHBmbiwgdm1hLT52bV9wYWdlX3Byb3QsDQo+ID4gK2ZhbHNlKTsNCj4gPiAgIH0NCj4g
PiAgIEVYUE9SVF9TWU1CT0wodm1mX2luc2VydF9wZm4pOw0KPiA+DQo+ID4gK3ZtX2ZhdWx0X3Qg
dm1mX2luc2VydF9wZm5fbWt3cml0ZShzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSwgdW5zaWdu
ZWQNCj4gbG9uZyBhZGRyLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgdW5zaWduZWQgbG9uZyBw
Zm4pDQo+ID4gK3sNCj4gPiArICAgcmV0dXJuIHZtZl9pbnNlcnRfcGZuX3Byb3Qodm1hLCBhZGRy
LCBwZm4sIHZtYS0+dm1fcGFnZV9wcm90LA0KPiB0cnVlKTsNCj4gPiArfSBFWFBPUlRfU1lNQk9M
KHZtZl9pbnNlcnRfcGZuX21rd3JpdGUpOw0KPiA+ICsNCj4gPiAgIHN0YXRpYyBib29sIHZtX21p
eGVkX29rKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hLCBwZm5fdCBwZm4pDQo+ID4gICB7DQo+
ID4gICAgIC8qIHRoZXNlIGNoZWNrcyBtaXJyb3IgdGhlIGFib3J0IGNvbmRpdGlvbnMgaW4gdm1f
bm9ybWFsX3BhZ2UgKi8NCg0K
