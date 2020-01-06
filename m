Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C051318C4
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jan 2020 20:31:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361E86E506;
	Mon,  6 Jan 2020 19:31:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4BE16E506
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jan 2020 19:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578339079;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=0iw0kZ/MWgubC31oS1/9I6r4l25QHI07sDGGXe5d/bQ=;
 b=V1HvT4y1p1Y7FIDZo12bXo6a3FILFdBuvgv7rD4Y5T6WdAOXfWkkxNos5lJynNfcj8r4OI
 GRMXo347G/wvPjvY7XGPbcScwcfXcZLqX/jk5KyDhJitifGZ5wqUF9ZN9aOuXmIMr21IWw
 d5OrWlRTN2AImWBzSzo1Kl/Yw8mgkUk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-OfXDDgQYNSqLM5sX_LhR4Q-1; Mon, 06 Jan 2020 14:31:15 -0500
Received: by mail-wr1-f72.google.com with SMTP id c17so2497736wrp.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Jan 2020 11:31:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=0iw0kZ/MWgubC31oS1/9I6r4l25QHI07sDGGXe5d/bQ=;
 b=AMAneMeC8qTd8eCoNTNffeC/UWW0RztLiJdFeqR+xNWGkMrVNadM6ZU1ECv+4ZBuY5
 z2yITVYf3W51ma5LkrauCB3UiWzkf1lDp3yQ2LuH7MYHRfoQ3iW6V2nHD8c1RFgM3DYT
 ac7Ns04xshfmJEPQtOixJV3pVh5E5MWtW5DaTW/x+RCpDAXkuyLg7SL+Ny3yQbXHF4uE
 2JlT6RJUdqZmkMcIDo6mLMUdFwJmRgC19CI46b0lQNsGR/ZIHJO/k2Qqm5A8mWEzAlfd
 zXBE2tnbglWGND0OlOHSoGEXEbfWRnFOdzavDoSU5FHty6XEs7eGn2quMUmfLYjr1GS6
 9X5g==
X-Gm-Message-State: APjAAAUycPbFPLHph4Bg5mHodwiSV+CCIIj17oXX5ONbmj0cdtQYIFZn
 w6HLIgFHvf2i6S0TmHb6l2PBAsfAHimxjJReZBUOqQVMAK2u4oWPBAGlbnX6BFq7GI4EU6i3xyA
 GBS6US1kddQ4Qm6JxgKAGu8Yvp3UM
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr104415752wrp.167.1578339074325; 
 Mon, 06 Jan 2020 11:31:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqydyyceJqHTUejKZiZu+nudXHXzarYT8OliertFcX8uzKUH9ycXNof9k9AwgtuozEkQSy6BdA==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr104415739wrp.167.1578339074092; 
 Mon, 06 Jan 2020 11:31:14 -0800 (PST)
Received: from shalem.localdomain
 (2001-1c00-0c0c-fe00-7e79-4dac-39d0-9c14.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:7e79:4dac:39d0:9c14])
 by smtp.gmail.com with ESMTPSA id a14sm78366322wrx.81.2020.01.06.11.31.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 11:31:13 -0800 (PST)
To: Jani Nikula <jani.nikula@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <fd2f48cc-19c9-b8bf-0c5a-83a929b09dfa@redhat.com>
Date: Mon, 6 Jan 2020 20:31:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
Content-Language: en-US
X-MC-Unique: OfXDDgQYNSqLM5sX_LhR4Q-1
X-Mimecast-Spam-Score: 0
Subject: [Intel-gfx] Help merging 2 patches into drm-intel (and/or drm-misc)
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

I need your help merging this series, as it touches files in both drm-intel and drm-misc:

https://patchwork.freedesktop.org/series/71637/

The first patch touches some i915 files, and applies cleanly to both
dinq and drm-misc-next.

The second patch relies on the first patch as well as on the new panel_orientation
member of struct drm_cmdline_mode which was recently introduced in drm-misc-next
and which is not yet present in struct drm_cmdline_mode in drm-intel-next-queued.

So both patches can be pushed without issues to drm-misc-next, but then a
back-merge of drm-misc-next into dinq should be done to avoid future changes
to dinq causing causing conflicts. This seems the easiest way to merge this.
If you want I can push the 2 patch to drm-misc-next myself, then you can do
the backmerge after that.

Alternatively you could back-merge drm-misc-next into dinq before merging
these into dinq, but the first patch changes some generic code, so then another
backmerge of dinq into drm-misc-next should probably be done after that, so
that seems suboptimal.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
