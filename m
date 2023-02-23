Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2226A1155
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Feb 2023 21:41:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1513610E214;
	Thu, 23 Feb 2023 20:41:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com
 [IPv6:2607:f8b0:4864:20::44a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08BE010E214
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 20:41:31 +0000 (UTC)
Received: by mail-pf1-x44a.google.com with SMTP id
 h20-20020a056a00231400b005deece3f9dfso914634pfh.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Feb 2023 12:41:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:from:to:cc:subject:date:message-id:reply-to;
 bh=D/hhXU94L2G+o7ni2sDclregaJFv4BLuQx95BPp9z9Q=;
 b=YQfRQnO25BKO39Nxje2Nn6hZ6jXQlJ8bqpj5AoIHX05ecsqHGgjjChBmaD0XLaItjE
 PXJT2+TsGB98yz3x92aEOECz1JaMKfBPlSkSXysVvcWmJeO09X9G0XV6Ll7mw0xgH4nW
 fbXSXnNa78ogHg6PBmj0u1NyTAJtxuovyZATBkwrwsQ8s058xJyyHLk2bq9hwAnOUzgL
 Onys3TIuniC494ZrjeT9Tme0TmWlLs76ORoKYVHm2jKYixBYSV5rd/CS5KKdqUA58jms
 cDFaz7TxdBxYjlD88mrCw+pj129APBZ+kXA8oQsgHafwBApprWz71QVoE7+NatQo+r+u
 xcSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
 :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=D/hhXU94L2G+o7ni2sDclregaJFv4BLuQx95BPp9z9Q=;
 b=UuAphPZo7plg5T5asHKXlvlmI1lSH7cTvCF9FM5MhSzjoQsWE6YRU7+V7Qszql7pNo
 Z+Zskg8+tWxaZrpv2r77uXpr05WO+omlhJHZ48mvGQD5QtESfukrQt81X89mWH1JuzXF
 wGOR/2nXcLkHYZSqdbkM+W4VZpCNQTQI9Lx336KYprwFxvT/qhiqd2Y1Q8OhMGZRJMze
 RDTBZtdN83vodY1VNw/IPuOFxeAjBq9vTN7KqyLG80M/Wc7sGvRIeB15PMlXQrUMxuB7
 KFqDJkgYNE2LSGDZlf2UO4zWjn5EunQ1zRF/V/lN2Gw/BTjo/4MfuZuhp0eenhaZjt0a
 15yw==
X-Gm-Message-State: AO0yUKXOrEdc6vlNYhfMcYqC3xoNygkvFwrYz5Fa4dUqTCP0umU+fqcC
 KhFcskBlWM/ABpbCEawIwE9VC5dmMHo=
X-Google-Smtp-Source: AK7set/Gpi+RQeieEV9ujOdy38fte0Fs3U+Hmys352Tw5nImTosFAyGyPz7wmFlQqa937PsGveMF+hUxsR0=
X-Received: from zagreus.c.googlers.com
 ([fda3:e722:ac3:cc00:7f:e700:c0a8:5c37])
 (user=seanjc job=sendgmr) by 2002:a63:7a54:0:b0:4fb:3896:a7d4 with SMTP id
 j20-20020a637a54000000b004fb3896a7d4mr1948195pgn.7.1677184890247; Thu, 23 Feb
 2023 12:41:30 -0800 (PST)
Date: Thu, 23 Feb 2023 12:41:28 -0800
In-Reply-To: <Y8jUom2voLubfqxE@yzhao56-desk.sh.intel.com>
Mime-Version: 1.0
References: <Y6vXTcxDNovrmeVB@yzhao56-desk.sh.intel.com>
 <Y7SaklDQD0EoIs8l@google.com>
 <Y7Y+759IN2DH5h3h@yzhao56-desk.sh.intel.com> <Y7cLkLUMCy+XLRwm@google.com>
 <Y7e3fT8/V2NoXAUP@yzhao56-desk.sh.intel.com> <Y7ioYegkgKIH8uJL@google.com>
 <Y7vlOCKkJ+QyO3EM@yzhao56-desk.sh.intel.com> <Y773+EB35bAchVTC@google.com>
 <Y8ix4lqk8QYH4g3h@zhen-hp.sh.intel.com>
 <Y8jUom2voLubfqxE@yzhao56-desk.sh.intel.com>
Message-ID: <Y/fPePRoP6sOiD14@google.com>
From: Sean Christopherson <seanjc@google.com>
To: Yan Zhao <yan.y.zhao@intel.com>
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] [PATCH 03/27] drm/i915/gvt: Incorporate KVM memslot
 info into check for 2MiB GTT entry
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
Cc: kvm@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Ben Gardon <bgardon@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, intel-gvt-dev@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Apologies for the super slow reply, I put this series on the backburner while I
caught up on other stuff and completely missed your questions.

On Thu, Jan 19, 2023, Yan Zhao wrote:
> On Thu, Jan 19, 2023 at 10:58:42AM +0800, Zhenyu Wang wrote:
> > Current KVMGT usage is mostly in controlled mode, either user is own host admin,
> > or host admin would pre-configure specific limited number of VMs for KVMGT use.
> > I think printk on error should be fine, we don't need rate limit, and adding
> > extra trace monitor for admin might not be necessary. So I'm towards to keep to
> > use current error message.
> > 
> 
> Thanks, Sean and Zhenyu.
> So, could I just post the final fix as below?

No objection here.

> And, Sean, would you like to include it in this series or should I send it out
> first?

I'd like to include it in this series as it's necessary (for some definitions of
necessary) to clean up KVM's APIs, and the main benefactor is KVM, i.e. getting
the patch merged sooner than later doesn't really benefit KVMGT itself.

Thanks much!
