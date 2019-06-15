Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4BE4725A
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Jun 2019 00:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B00E89031;
	Sat, 15 Jun 2019 22:16:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CACF89031
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Jun 2019 22:16:11 +0000 (UTC)
Received: from localhost (unknown [23.100.24.84])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DADC221851;
 Sat, 15 Jun 2019 22:16:10 +0000 (UTC)
Date: Sat, 15 Jun 2019 22:16:10 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190612172423.25231-1-ville.syrjala@linux.intel.com>
References: <20190612172423.25231-1-ville.syrjala@linux.intel.com>
Message-Id: <20190615221610.DADC221851@mail.kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=default; t=1560636971;
 bh=ABPZk0kOi9GVz8my4LFmi+SVbPDKxCxOB5GlnSlyuh0=;
 h=Date:From:To:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=eawqkhn9LCLOANLk1TGHAgzKZWQA68AmOUIO/rIlRTvnlIEKtfPL3re3kXSVw2wp0
 0WyCB0YmcW6CHlZUzWMqd68LcO+y4mNmAWzMk29wm2JgGaj7ASAsGVTEl8gFQQZ0X3
 fhZOMvxv+M8OI2+08oc1ePSneK2hFME2jgUV961E=
Subject: Re: [Intel-gfx] [PATCH v2 1/4] drm/i915: Don't clobber M/N values
 during fastset check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: , Blubberbub@protonmail.com, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCgpUaGlzIGNvbW1pdCBoYXMgYmVlbiBw
cm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBhICJGaXhlczoiIHRhZywKZml4aW5nIGNvbW1p
dDogZDE5Zjk1OGRiMjNjIGRybS9pOTE1OiBFbmFibGUgZmFzdHNldCBmb3Igbm9uLWJvb3QgbW9k
ZXNldHMuLgoKVGhlIGJvdCBoYXMgdGVzdGVkIHRoZSBmb2xsb3dpbmcgdHJlZXM6IHY1LjEuOS4K
CnY1LjEuOTogRmFpbGVkIHRvIGFwcGx5ISBQb3NzaWJsZSBkZXBlbmRlbmNpZXM6CiAgICAxYjk5
OTRjNzg5NzcgKCJkcm0vaTkxNTogRG9uJ3QgcGFzcyB0aGUgY3J0YyB0byBpbnRlbF9kdW1wX3Bp
cGVfY29uZmlnKCkiKQogICAgNDhkOWY4N2RkZDIxICgiZHJtL2k5MTU6IFNhdmUgdGhlIG9sZCBD
RENMSyBhdG9taWMgc3RhdGUiKQogICAgNTY0M2RkOWM3YWY0ICgiZHJtL2k5MTU6IFVzZSBpbnRl
bF8gdHlwZXMgaW4gaW50ZWxfbW9kZXNldF9jaGVja3MoKSIpCiAgICA1OWY5ZTljYWIzYTEgKCJk
cm0vaTkxNTogU2tpcCBtb2Rlc2V0IGZvciBjZGNsayBjaGFuZ2VzIGlmIHBvc3NpYmxlIikKICAg
IDg1ODI5ZWI1ZWUxYSAoImRybS9pOTE1OiBQYXNzIGludGVsX2F0b21pYyBzdGF0ZSB0byBjaGVj
a19kaWdpdGFsX3BvcnRfY29uZmxpY3RzKCkiKQogICAgOTA1ODAxZmU3MjM3ICgiZHJtL2k5MTU6
IEZvcmNlIDIqOTYgTUh6IGNkY2xrIG9uIGdsay9jbmwgd2hlbiBhdWRpbyBwb3dlciBpcyBlbmFi
bGVkIikKICAgIDlhODZhMDdjN2U5NCAoImRybS9pOTE1OiBVc2UgaW50ZWxfIHR5cGVzIGluIGlu
dGVsX2F0b21pY19jaGVjaygpIikKICAgIGQzMWM4NWZjODY0MiAoInNuZC9oZGEsIGRybS9pOTE1
OiBUcmFjayB0aGUgZGlzcGxheV9wb3dlcl9zdGF0dXMgdXNpbmcgYSBjb29raWUiKQogICAgZjIz
OWI3OTk4NTA3ICgiZHJtL2k5MTU6IERvbid0IHBhc3MgdGhlIGNydGMgdG8gaW50ZWxfbW9kZXNl
dF9waXBlX2NvbmZpZygpIikKCgpIb3cgc2hvdWxkIHdlIHByb2NlZWQgd2l0aCB0aGlzIHBhdGNo
PwoKLS0KVGhhbmtzLApTYXNoYQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
